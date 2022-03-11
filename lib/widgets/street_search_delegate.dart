library street_search_delegate.dart;
// ignore_for_file: unused_local_variable

import 'package:auctionvillage/core/domain/entities/entities.dart';
import 'package:auctionvillage/core/presentation/managers/managers.dart';
import 'package:auctionvillage/utils/utils.dart';
import 'package:auctionvillage/widgets/widgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kt_dart/collection.dart';

class StreetSearchDelegate extends MaterialFullSearch<GoogleMapPlace?> {
  late List<GoogleMapPlace> _items;

  void Function(GoogleMapPlace?) onSelected;
  final BaseAddressCubit _cubit;
  String? language;
  double? latitude;
  double? longitude;
  double? radius;

  StreetSearchDelegate({
    this.language = 'en',
    this.radius,
    String? label = 'Start typing..',
    double? longitude,
    double? latitude,
    ThemeData? theme,
    required BuildContext context,
    required this.onSelected,
    required BaseAddressCubit cubit,
    List<GoogleMapPlace> recentSearches = const [],
    bool itemStartsWith = true,
    bool itemEndsWith = false,
  })  : _cubit = cubit,
        super(
          failure: BlocBuilder<BaseAddressCubit, BaseAddressState>(
            bloc: cubit,
            builder: (_, s) => AnimatedVisibility(
              visible: !s.isLoadingMorePlaces,
              child: AnimatedVisibility(
                visible: (!s.isTyping && !s.isLoading) &&
                    s.placeStatus.maybeWhen(
                      zeroResults: () => true,
                      invalidRequest: () => true,
                      overQueryLimit: () => true,
                      requestDenied: () => true,
                      unknownError: () => true,
                      orElse: () => false,
                    ),
                replacement: AnimatedVisibility(
                  // visible: s.isTyping || s.isLoading,
                  visible: !s.isLoadingMorePlaces &&
                      (s.isLoading && s.places.isEmpty()),
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: App.loadingSpinningLines(),
                    ),
                  ),
                ),
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      AppAssets.featherSearch(const Size.square(120)),
                      //
                      0.02.verticalh,
                      //
                      AdaptiveText(
                        'No results found!',
                        maxLines: 1,
                        fontSize: 26.sp,
                        fontWeight: FontWeight.w600,
                        letterSpacing: Utils.letterSpacing,
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          searchLabel: label,
          theme: theme,
          builder: (item) => Utils.nothing,
          onQueryUpdate: (query) {
            if (cubit.state.searchQuery != query) {
              // Clean query string
              final _clean = query.toLowerCase().trim();

              if (_clean.isNotEmpty) cubit.sink(query, ctx: context);
            }

            // Set state to Typing
            cubit.onQueryChanged(query);
          },
          filter: (item) => [
            item?.name.getOrNull,
            item?.formattedAddress.getOrNull,
            item?.placeId.value,
          ],
          items: const [],
          recentSearches: recentSearches,
          itemStartsWith: itemStartsWith,
          itemEndsWith: itemEndsWith,
        );

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      icon: Theme(
        data: App.isDarkMode(context) ||
                (MediaQuery.of(context).platformBrightness == Brightness.dark)
            ? ThemeData.dark()
            : ThemeData.light(),
        child: const BackButtonIcon(),
      ),
      onPressed: () => close(
        context,
        items.isNotEmpty ? _items[0] : GoogleMapPlace.fromQuery(query),
      ),
    );
  }

  @override
  ThemeData appBarTheme(BuildContext context) {
    return Theme.of(context).copyWith(
      textTheme: TextTheme(
        bodyText1: TextStyle(
            color:
                App.resolveColor(Palette.text100, dark: Palette.text100Dark)),
        bodyText2: TextStyle(
            color:
                App.resolveColor(Palette.text100, dark: Palette.text100Dark)),
        subtitle1: TextStyle(
            color:
                App.resolveColor(Palette.text100, dark: Palette.text100Dark)),
      ),
      appBarTheme: Theme.of(context).appBarTheme.copyWith(
            elevation: 0,
            backgroundColor: App.resolveColor(Palette.neutralF9,
                dark: Palette.cardColorDark),
          ),
      canvasColor: App.resolveColor(Palette.cardColorLight,
          dark: Palette.secondaryColor),
      scaffoldBackgroundColor: App.resolveColor(Palette.cardColorLight,
          dark: Palette.secondaryColor),
      inputDecorationTheme: InputDecorationTheme(
        hintStyle: TextStyle(
          color: App.resolveColor(Palette.text100, dark: Palette.text100Dark),
          fontSize: 15,
        ),
        focusedErrorBorder: InputBorder.none,
        disabledBorder: InputBorder.none,
        focusedBorder: InputBorder.none,
        enabledBorder: InputBorder.none,
        errorBorder: InputBorder.none,
        border: InputBorder.none,
      ),
    );
  }

  void onLoadMore(BuildContext ctx, DragToRefreshState refresh) async {
    _cubit.sink(query,
        ctx: ctx,
        nextPage: true,
        callback: () => refresh.controller.loadComplete());
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    onQueryUpdate?.call(query);

    return BlocProvider.value(
      value: _cubit,
      child: BlocSelector<BaseAddressCubit, BaseAddressState,
          KtList<GoogleMapPlace>>(
        selector: (s) => s.places,
        builder: (c, places) {
          final _clean = query.toLowerCase().trim();

          _items = places.iter
              .where(
                // First we collect all [String] representation of each [item]
                (item) => filter(item)
                    // Checks whether any coincide with the cleaned query
                    .any((value) =>
                        value?.caseInsensitiveContains(_clean) == true),
              )
              .toList();

          return _clean.isEmpty && !showItemsOnEmpty
              ? recentSearches.isEmpty
                  ? hint
                  : Stack(
                      children: [
                        ListView.custom(
                          keyboardDismissBehavior:
                              ScrollViewKeyboardDismissBehavior.onDrag,
                          childrenDelegate: SliverChildBuilderDelegate(
                            (_, i) => _itemBuilder(_, i, _items),
                            childCount: recentSearches.length,
                          ),
                        ),
                        //
                        Positioned(
                          top: 0,
                          right: 0,
                          child: AnimatedVisibility(
                            visible: recentSearches.isNotEmpty &&
                                c.select(
                                    (BaseAddressCubit v) => v.state.isLoading),
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: CircularProgressBar.adaptive(
                                color: Palette.accentColor,
                                height: 0.07.w,
                                width: 0.07.w,
                                strokeWidth: 2.2,
                              ),
                            ),
                          ),
                        ),
                      ],
                    )
              : _items.isEmpty
                  ? failure
                  : Stack(
                      children: [
                        DragToRefresh(
                          initialRefresh: false,
                          enablePullDown: false,
                          enablePullUp: true,
                          onLoading: (refresh) => onLoadMore(c, refresh),
                          child: ListView.custom(
                            keyboardDismissBehavior:
                                ScrollViewKeyboardDismissBehavior.onDrag,
                            childrenDelegate: SliverChildBuilderDelegate(
                              (_, i) => _itemBuilder(_, i, _items),
                              childCount: _items.length,
                            ),
                          ),
                        ),
                        //
                        Positioned(
                          top: 0,
                          right: 0,
                          child: AnimatedVisibility(
                            visible: _items.isNotEmpty &&
                                c.select(
                                    (BaseAddressCubit v) => v.state.isLoading),
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: CircularProgressBar.adaptive(
                                color: Palette.accentColor,
                                height: 0.07.w,
                                width: 0.07.w,
                                strokeWidth: 2.2,
                              ),
                            ),
                          ),
                        ),
                      ],
                    );
        },
      ),
    );
  }

  Widget _itemBuilder(
      BuildContext context, int index, List<GoogleMapPlace> results) {
    final prediction = results.elementAt(index);

    return AdaptiveListTile(
      dense: prediction.formattedAddress.getOrNull == null,
      isThreeLine: prediction.formattedAddress.getOrNull != null,
      tileColor:
          App.resolveColor(Palette.cardColorLight, dark: Palette.cardColorDark),
      trailing: Utils.nothing,
      noCupertinoBorder: true,
      horizontalTitleGap: 0.02.w,
      leading: AnimatedVisibility(
        visible: prediction.icon.getOrNull == null,
        replacement: DecoratedBox(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100),
            color: prediction.iconBackgroundColor.getOrNull != null
                ? Palette.fromHex(prediction.iconBackgroundColor.getOrNull!)
                : Colors.transparent,
          ),
          child: Padding(
            padding: EdgeInsets.all(0.02.w),
            child: ImageBox.network(
              photo: prediction.icon.getOrNull,
              fit: BoxFit.contain,
              height: 0.06.w,
              width: 0.06.w,
            ),
          ),
        ),
        child: SizedBox(
          height: 0.1.sw,
          width: 0.2.sw,
          child: Padding(
            padding: EdgeInsets.all(0.02.w),
            child: Icon(
              Theme.of(context).platform.fold(
                    material: () => Icons.location_searching,
                    cupertino: () => CupertinoIcons.location_fill,
                  ),
            ),
          ),
        ),
      ),
      title: AdaptiveText.rich(
        TextSpan(text: '${prediction.name.getOrEmpty}'),
        maxLines: 1,
        softWrap: true,
        fontSize: 16.sp,
        minFontSize: 15,
        fontWeight: FontWeight.w600,
        letterSpacing: Utils.letterSpacing,
        overflow: TextOverflow.ellipsis,
      ),
      subtitle: AdaptiveText(
        '${prediction.formattedAddress.getOrEmpty}',
        maxLines: 2,
        softWrap: true,
        minFontSize: 14,
        fontSize: 15.sp,
        overflow: TextOverflow.ellipsis,
      ),
      onTap: () {
        onSelected(prediction);

        close(
          context,
          _items.isNotEmpty ? _items[0] : GoogleMapPlace.fromQuery(query),
        );
      },
    );
  }
}
