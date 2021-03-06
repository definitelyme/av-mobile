library home_page.dart;

import 'dart:async';

import 'package:auctionvillage/features/dashboard/domain/index.dart';
import 'package:auctionvillage/features/dashboard/presentation/managers/index.dart';
import 'package:auctionvillage/features/dashboard/presentation/widgets/index.dart';
import 'package:auctionvillage/manager/locator/locator.dart';
import 'package:auctionvillage/utils/utils.dart';
import 'package:auctionvillage/widgets/widgets.dart';
import 'package:extended_nested_scroll_view/extended_nested_scroll_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kt_dart/collection.dart';

/// A stateful widget to render HomePage.
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with AutomaticKeepAliveClientMixin<HomePage> {
  late DealCubit _cubit;
  final _list = [Promotion.dummy()];
  final ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    _cubit = blocMaybeOf(context, orElse: () => getIt<DealCubit>());
    super.initState();
  }

  void onLoadMore(DragToRefreshState refresh) async {
    if (!_cubit.state.isLoading && _cubit.state.deals.isNotEmpty())
      await _cubit.fetchLiveDeals(
        nextPage: true,
        endOfList: () => refresh.loadNoData(),
        callback: (_) => refresh.loadComplete(),
        isHomePage: true,
      );
    else if (_cubit.state.status.getOrNull != null && _cubit.state.status.getOrNull!.isEndOfList) refresh.loadNoData();
  }

  void onRefresh(DragToRefreshState refresh) async {
    if (!_cubit.state.isLoading) {
      unawaited(_cubit.getCategories());
      await _cubit.fetchLiveDeals(
        isHomePage: true,
        endOfList: () => refresh.loadNoData(),
        callback: (_) => refresh.refreshCompleted(resetFooterState: true),
      );
    }
  }

  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    super.build(context);

    return AdaptiveScaffold(
      backgroundColor: Palette.accentColor,
      overlayStyle: App.customSystemOverlay(ctx: context, android: Brightness.light, ios: Brightness.light),
      body: BlocProvider(
        create: (_) => _cubit,
        child: BlocListener<DealCubit, DealState>(
          listenWhen: (p, c) =>
              p.status.getOrElse(() => null) != c.status.getOrElse(() => null) ||
              (c.status.getOrElse(() => null) != null && (c.status.getOrElse(() => null)!.response.maybeMap(orElse: () => false))),
          listener: (c, s) => s.status.fold(
            () => null,
            (it) => it?.response.map(
              info: (i) => PopupDialog.info(message: i.message, show: i.message.isNotEmpty).render(c),
              error: (f) => PopupDialog.error(message: f.message, show: f.show && f.message.isNotEmpty).render(c),
              success: (s) => PopupDialog.success(message: s.message, show: s.message.isNotEmpty).render(c),
            ),
          ),
          child: AdaptiveScaffoldBody(
            body: Stack(
              children: [
                Positioned(
                  top: 0.08.h,
                  right: 0,
                  child: AppAssets.hammerBig,
                ),
                //
                Positioned.fill(
                  child: ExtendedNestedScrollView(
                    controller: _scrollController,
                    floatHeaderSlivers: false,
                    onlyOneScrollInBody: false,
                    pinnedHeaderSliverHeightBuilder: () => MediaQuery.of(context).padding.top,
                    headerSliverBuilder: (_, innerBoxIsScrolled) => [
                      SliverSafeArea(
                        bottom: false,
                        sliver: SliverPadding(
                          padding: EdgeInsets.symmetric(horizontal: App.sidePadding).copyWith(top: 0.01.h),
                          sliver: const SliverToBoxAdapter(child: SearchWidget()),
                        ),
                      ),
                      //
                      SliverPadding(
                        padding: EdgeInsets.symmetric(horizontal: App.sidePadding * 0.5, vertical: 0.025.h),
                        sliver: SliverToBoxAdapter(
                          child: Material(
                            borderRadius: const BorderRadius.all(Radius.circular(Utils.buttonRadius)),
                            type: MaterialType.transparency,
                            child: MediaCarousel<Promotion>(
                              items: _list,
                              height: 0.23.h,
                              viewportFraction: _list.length > 1 ? 0.8 : 0.95,
                              // enableInfiniteScroll: _list.length > 1,
                              position: CarouselIndicatorPosition.bottom,
                              autoPlay: true,
                              autoPlayInterval: const Duration(seconds: 7),
                              disableCenter: false,
                              builder: (_, i, pv, item) => ImageBox.asset(
                                heroTag: 'promotion-${item.id.value}-$i-$pv',
                                photo: item.url.getOrNull,
                                fit: BoxFit.cover,
                                borderRadius: 8.br,
                                expandsFullscreen: true,
                                replacement: Image.asset('${item.url.getOrEmpty}', fit: BoxFit.cover),
                                stackChildren: (image) => [
                                  image,
                                  //
                                  const Positioned.fill(
                                    child: DecoratedBox(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.all(Radius.circular(Utils.buttonRadius)),
                                        gradient: LinearGradient(
                                          begin: Alignment(0.0, -1.8),
                                          end: Alignment.bottomCenter,
                                          colors: [
                                            Colors.transparent,
                                            Colors.black12,
                                            Colors.black12,
                                            Colors.black12,
                                            Colors.black38,
                                            Colors.black45,
                                            Colors.black54,
                                            Colors.black87,
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  //
                                  if (item.description.getOrNull != null)
                                    Positioned.fill(
                                      child: Material(
                                        type: MaterialType.transparency,
                                        borderRadius: const BorderRadius.only(
                                          bottomLeft: Radius.circular(Utils.inputBorderRadius),
                                          bottomRight: Radius.circular(Utils.inputBorderRadius),
                                        ),
                                        child: Padding(
                                          padding: EdgeInsets.symmetric(horizontal: 0.04.w, vertical: 0.005.h),
                                          child: Center(
                                            child: AdaptiveText(
                                              '${item.description.getOrEmpty}',
                                              maxLines: 3,
                                              fontSize: 17.sp,
                                              minFontSize: 13,
                                              maxFontSize: 18,
                                              softWrap: false,
                                              wrapWords: false,
                                              textColor: App.resolveColor(Colors.white, dark: Colors.black, context: context),
                                              textAlign: TextAlign.left,
                                              fontWeight: FontWeight.w600,
                                              overflow: TextOverflow.ellipsis,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                    body: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: Material(
                            color: App.resolveColor(Palette.cardColorLight, dark: Palette.secondaryColor, context: context),
                            borderRadius: const BorderRadius.only(topLeft: Radius.circular(32), topRight: Radius.circular(32)),
                            child: DragToRefresh(
                              initialRefresh: true,
                              enablePullUp: true,
                              onRefresh: onRefresh,
                              onLoading: onLoadMore,
                              child: CustomScrollView(
                                slivers: [
                                  SliverPadding(
                                    padding: EdgeInsets.symmetric(horizontal: App.sidePadding, vertical: 0.01.h).copyWith(top: 0.03.h),
                                    sliver: SliverToBoxAdapter(
                                      child: AdaptiveText(
                                        'By Categories',
                                        fontSize: 20.sp,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ),
                                  //
                                  BlocSelector<DealCubit, DealState, KtList<DealCategory>>(
                                    selector: (s) => s.categories,
                                    builder: (c, categories) {
                                      if (categories.isEmpty()) return const SliverToBoxAdapter(child: Utils.nothing);
                                      return SliverPadding(
                                        padding: EdgeInsets.symmetric(horizontal: App.sidePadding, vertical: 0.02.h).copyWith(top: 0.01.h),
                                        sliver: SliverToBoxAdapter(
                                          child: SizedBox(
                                            height: 0.12.h,
                                            child: ListView.custom(
                                              scrollDirection: Axis.horizontal,
                                              childrenDelegate: SliverChildBuilderDelegate(
                                                (_, i) => _CategoryBuilder(categories.get(i), isLast: i == categories.size - 1),
                                                childCount: categories.size,
                                              ),
                                            ),
                                          ),
                                        ),
                                      );
                                    },
                                  ),
                                  //
                                  SliverPadding(
                                    padding: EdgeInsets.symmetric(horizontal: App.sidePadding).copyWith(bottom: 0.01.h),
                                    sliver: SliverToBoxAdapter(
                                      child: Row(
                                        children: _Action.list
                                            .map(
                                              (e) => Flexible(
                                                child: Padding(
                                                  padding: e.padding,
                                                  child: Material(
                                                    color: App.resolveColor(
                                                      const Color(0xffF0F3FB),
                                                      dark: Palette.secondaryColor.shade700,
                                                      context: context,
                                                    ),
                                                    shape: RoundedRectangleBorder(
                                                      borderRadius: 4.br,
                                                      side: BorderSide(
                                                        color: App.resolveColor(
                                                          const Color(0xffB5D3F9),
                                                          dark: Palette.cardColorDark,
                                                          context: context,
                                                        )!,
                                                      ),
                                                    ),
                                                    child: AdaptiveInkWell(
                                                      onTap: e.onPressed,
                                                      borderRadius: 4.br,
                                                      child: Padding(
                                                        padding: EdgeInsets.symmetric(vertical: 0.015.h, horizontal: 0.08.w),
                                                        child: Center(
                                                          child: AdaptiveText(
                                                            '${e.title}',
                                                            maxLines: 1,
                                                            fontSize: 17.sp,
                                                            textColor: Palette.accentColor,
                                                            fontWeight: FontWeight.w600,
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            )
                                            .toList(),
                                      ),
                                    ),
                                  ),
                                  //
                                  SliverPadding(
                                    padding: EdgeInsets.symmetric(horizontal: App.sidePadding, vertical: 0.01.h).copyWith(bottom: 0.01.h),
                                    sliver: SliverToBoxAdapter(
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          AdaptiveText(
                                            'Live Auctions',
                                            maxLines: 1,
                                            fontSize: 20.sp,
                                            fontWeight: FontWeight.w600,
                                            textAlign: TextAlign.start,
                                          ),
                                          //
                                          AdaptiveInkWell(
                                            borderRadius: 8.br,
                                            onTap: () {
                                              print('hello joseph');
                                            },
                                            child: Padding(
                                              padding: EdgeInsets.symmetric(horizontal: 0.02.w, vertical: 0.005.h),
                                              child: AdaptiveText(
                                                'See All',
                                                maxLines: 1,
                                                fontSize: 16.sp,
                                                textColor: Palette.accentColor.shade300,
                                                fontWeight: FontWeight.w600,
                                                textAlign: TextAlign.center,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  //
                                  SliverSafeArea(
                                    top: false,
                                    left: false,
                                    right: false,
                                    sliver: BlocSelector<DealCubit, DealState, KtList<Deal>>(
                                      selector: (s) => s.homeDeals,
                                      builder: (c, deals) => SliverPadding(
                                        padding:
                                            EdgeInsets.symmetric(horizontal: App.sidePadding, vertical: 0.01.h).copyWith(bottom: 0.01.h),
                                        sliver: SliverList(
                                          delegate: SliverChildBuilderDelegate(
                                            (_, i) => Column(
                                              mainAxisSize: MainAxisSize.min,
                                              children: [
                                                if (deals.isNotEmpty()) ...[
                                                  ProductCard(deals.get(i), index: i),
                                                  //
                                                  if (i < deals.size - 1) 0.01.verticalh,
                                                ],
                                              ],
                                            ),
                                            childCount: deals.size,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _CategoryBuilder extends StatelessWidget {
  final DealCategory category;
  final bool isLast;

  const _CategoryBuilder(this.category, {Key? key, this.isLast = false}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        SizedBox(
          width: 0.25.w,
          child: Material(
            color: App.resolveColor(const Color(0xffF0F3FB), dark: Palette.cardColorDark, context: context),
            borderRadius: 8.br,
            child: AdaptiveInkWell(
              onTap: () {},
              borderRadius: 8.br,
              child: Center(
                child: Padding(
                  padding: EdgeInsets.all(App.sidePadding * 0.6),
                  child: Column(
                    // mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Flexible(
                        child: Material(
                          color: App.resolveColor(Palette.cardColorLight, dark: Palette.secondaryColor, context: context),
                          borderRadius: 100.br,
                          child: Padding(
                            padding: EdgeInsets.all(0.021.w),
                            child: ImageBox.network(
                              photo: category.asset.getOrNull,
                              fit: BoxFit.contain,
                              width: 30,
                              height: 30,
                              borderRadius: BorderRadius.zero,
                              useDefaultRadius: false,
                            ),
                          ),
                        ),
                      ),
                      //
                      // 0.008.verticalh,
                      //
                      Flexible(
                        child: AdaptiveText(
                          '${category.name.getOrEmpty}',
                          softWrap: true,
                          wrapWords: false,
                          maxLines: 2,
                          fontSize: 15.sp,
                          minFontSize: 11,
                          maxFontSize: 16,
                          fontWeight: FontWeight.w400,
                          letterSpacing: Utils.labelLetterSpacing,
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
        //
        if (!isLast) 0.03.horizontalw,
      ],
    );
  }
}

class _Action {
  final VoidCallback onPressed;
  final EdgeInsets padding;
  final String title;

  const _Action({
    required this.title,
    required this.onPressed,
    this.padding = EdgeInsets.zero,
  });

  static List<_Action> get list => [
        _Action(
          title: 'Private Deals',
          padding: EdgeInsets.only(right: 0.02.w),
          onPressed: () => navigator.navigate(DealsListRoute(isPrivate: true)),
        ),
        _Action(
          title: 'Buy Now',
          padding: EdgeInsets.only(left: 0.02.w),
          onPressed: () => navigator.navigate(DealsListRoute(type: DealType.buy_Now)),
        ),
      ];
}
