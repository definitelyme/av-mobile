library search_widget.dart;

import 'package:auctionvillage/core/domain/entities/entities.dart';
import 'package:auctionvillage/core/presentation/managers/managers.dart';
import 'package:auctionvillage/features/dashboard/domain/index.dart';
import 'package:auctionvillage/features/dashboard/presentation/managers/index.dart';
import 'package:auctionvillage/features/dashboard/presentation/widgets/index.dart';
import 'package:auctionvillage/manager/locator/locator.dart';
import 'package:auctionvillage/utils/utils.dart';
import 'package:auctionvillage/widgets/widgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kt_dart/collection.dart';

part './tabbed_search_mixin.dart';

class SearchWidget extends StatefulWidget {
  const SearchWidget({Key? key}) : super(key: key);

  @override
  State<SearchWidget> createState() => _SearchWidgetState();
}

class _SearchWidgetState extends State<SearchWidget> with TabbedSearchMixin {
  @override
  late TextEditingController searchFieldController;

  @override
  SearchBloc? _searchBloc;

  @override
  TabNavigationCubit? _searchNavCubit;

  int selectedTabIndex = 0;

  @override
  void tabListener() async {
    if (_searchNavCubit!.state.tabController!.index == selectedTabIndex) return;

    selectedTabIndex = _searchNavCubit!.state.tabController!.index;

    if (selectedTabIndex == 0) {
      searchBloc.add(const SearchEvent.refresh(SearchModel.product));
    } else if (selectedTabIndex == 1) {
      searchBloc.add(const SearchEvent.refresh(SearchModel.user));
    }
  }

  @override
  void dispose() {
    searchFieldController.dispose();
    searchBloc.close();
    _searchNavCubit?.removeTabListener(tabListener);
    _searchNavCubit?.close();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    searchFieldController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Flexible(
          child: AdaptiveTextFormInput(
            filled: true,
            fillColor: Colors.white24,
            autoCorrect: false,
            readOnly: true,
            showCursor: false,
            hintText: 'Find Auctions..',
            hintStyle: const TextStyle(fontStyle: FontStyle.italic, color: Colors.white70),
            capitalization: TextCapitalization.none,
            prefixMode: OverlayVisibilityMode.always,
            cursorColor: Colors.white70,
            autoDisposeController: false,
            border: OutlineInputBorder(
              borderSide: const BorderSide(color: Palette.accentColor),
              borderRadius: 6.br,
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: Palette.accentColor),
              borderRadius: 6.br,
            ),
            prefixIcon: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5),
              child: Icon(
                Utils.platform_(material: Icons.search, cupertino: CupertinoIcons.search),
                size: 24,
                color: App.resolveColor(Palette.iconLight, dark: Palette.iconDark),
              ),
            ),
            cupertinoPadding: const EdgeInsets.symmetric(horizontal: 0).copyWith(top: 10, bottom: 10),
            keyboardType: TextInputType.text,
            action: TextInputAction.done,
            onTap: showFullSearch,
          ),
        ),
        //
        // 0.02.horizontalw,
        // //
        // AppIconButton(
        //   backgroundColor: App.resolveColor(Palette.cardColorLight, dark: Palette.cardColorDark)!,
        //   borderRadius: 5.br,
        //   type: MaterialType.button,
        //   elevation: 0,
        //   cupertinoBackgroundColor: CupertinoColors.systemGrey4,
        //   child: AppAssets.filter,
        //   // onPressed: () => App.showAdaptiveBottomSheet(
        //   //   context,
        //   //   elevation: 0,
        //   //   enableDrag: true,
        //   //   bounce: true,
        //   //   builder: (_) => const _FilterBottomSheet(),
        //   // ),
        // ),
      ],
    );
  }
}

class _FilterBottomSheet extends StatelessWidget {
  const _FilterBottomSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      type: MaterialType.transparency,
      child: SingleChildScrollView(
        clipBehavior: Clip.antiAlias,
        controller: ScrollController(),
        physics: Utils.physics,
        scrollDirection: Axis.vertical,
        padding: MediaQuery.of(context).viewInsets,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            VerticalSpace(height: 0.04.sw),
            //
            Align(
              alignment: Alignment.center,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(Utils.cardRadius),
                child: DecoratedBox(
                  decoration: const BoxDecoration(color: Colors.grey),
                  child: SizedBox(height: 0.015.sw, width: 0.2.sw),
                ),
              ),
            ),
            //
            VerticalSpace(height: 0.03.sw),
            //
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: App.platform.fold(
                  material: () => 0.03.sw,
                  cupertino: () => App.sidePadding,
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Theme.of(context).platform.fold(
                        material: () => AppIconButton(
                          onPressed: navigator.pop,
                          tooltip: 'Back',
                          elevation: 0.0,
                          backgroundColor: Theme.of(context).scaffoldBackgroundColor,
                          child: const Icon(Icons.close),
                        ),
                        cupertino: () => AdaptiveButton(
                          text: 'Close',
                          width: 0.1.sw,
                          cupertinoHeight: 0.04.sh,
                          padding: EdgeInsets.zero,
                          splashColor: App.resolveColor(
                            Colors.grey.shade300,
                            dark: Colors.grey.shade800,
                          ),
                          fontSize: 18.5.sp,
                          elevation: 0.0,
                          backgroundColor: App.resolveColor(
                            Palette.primaryColor,
                            dark: Palette.primaryColor,
                          ),
                          textColor: Palette.accentColor,
                          onPressed: navigator.pop,
                        ),
                      ),
                  //
                  Align(
                    alignment: Alignment.topRight,
                    child: FlatChip(
                      'Reset Filter',
                      fontSize: 17.5.sp,
                      padding: EdgeInsets.symmetric(
                        horizontal: 0.015.sw,
                        vertical: 0.015.sw,
                      ),
                      onPressed: () {},
                    ),
                  ),
                ],
              ),
            ),
            //
            VerticalSpace(height: 0.03.sw),
            //
            Padding(
              padding: EdgeInsets.symmetric(horizontal: App.sidePadding),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Headline('Filter By'),
                  //
                  VerticalSpace(height: 0.03.sw),
                  //
                  const TextFormInputLabel(text: 'Distance'),
                  //
                  SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                      trackHeight: 3,
                      trackShape: _CustomTrackShape(),
                      thumbShape: const RoundSliderThumbShape(
                        enabledThumbRadius: 7.0,
                      ),
                    ),
                    child: SizedBox(
                      height: 20.0,
                      child: Slider(
                        value: 60,
                        min: 1,
                        max: 100,
                        divisions: 100,
                        activeColor: Palette.accentColor,
                        onChanged: (value) {},
                      ),
                    ),
                  ),
                  //
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const AdaptiveText('0km'),
                      const AdaptiveText('10000km'),
                    ],
                  ),
                  //
                  VerticalSpace(height: 0.03.sw),
                  //
                  const TextFormInputLabel(text: 'Delivery Time'),
                  //
                  SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                      trackHeight: 3,
                      trackShape: _CustomTrackShape(),
                      thumbShape: const RoundSliderThumbShape(
                        enabledThumbRadius: 7.0,
                      ),
                    ),
                    child: SizedBox(
                      height: 20.0,
                      child: Slider(
                        value: 60,
                        min: 1,
                        max: 100,
                        divisions: 100,
                        activeColor: Palette.accentColor,
                        onChanged: (value) {},
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const AdaptiveText('6Mins'),
                      const AdaptiveText('240Mins'),
                    ],
                  ),
                  //
                  VerticalSpace(height: 0.03.sw),
                  //
                  const TextFormInputLabel(text: 'Ratings'),
                  //
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: List.generate(
                      5,
                      (i) => FlatChip(
                        '${i + 1}',
                        fontSize: 17.sp,
                        useMaterial: true,
                        padding: EdgeInsets.all(0.018.sw),
                        backgroundColor: Palette.neutralF5,
                        onPressed: () {},
                        leading: Icon(
                          Utils.platform_(
                            material: Icons.star,
                            cupertino: CupertinoIcons.star_fill,
                          ),
                          size: 18,
                          color: Palette.accentYellow,
                        ),
                      ),
                    ).reversed.toList(),
                  ),
                  //
                  VerticalSpace(height: 0.05.sw),
                  //
                  AppButton(
                    text: 'Apply Filter',
                    onPressed: () {},
                  ),
                  //
                  VerticalSpace(height: App.sidePadding),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _CustomTrackShape extends RoundedRectSliderTrackShape {
  @override
  Rect getPreferredRect({
    required RenderBox parentBox,
    Offset offset = Offset.zero,
    required SliderThemeData sliderTheme,
    bool isEnabled = false,
    bool isDiscrete = false,
  }) {
    final trackHeight = sliderTheme.trackHeight!;
    final trackLeft = offset.dx;
    final trackTop = offset.dy + (parentBox.size.height - trackHeight) / 2;
    final trackWidth = parentBox.size.width;
    return Rect.fromLTWH(trackLeft, trackTop, trackWidth, trackHeight);
  }
}
