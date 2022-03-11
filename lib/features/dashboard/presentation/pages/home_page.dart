library home_page.dart;

import 'package:auctionvillage/core/domain/entities/entities.dart';
import 'package:auctionvillage/features/dashboard/domain/index.dart';
import 'package:auctionvillage/features/dashboard/presentation/widgets/index.dart';
import 'package:auctionvillage/utils/utils.dart';
import 'package:auctionvillage/widgets/widgets.dart';
import 'package:auto_route/auto_route.dart';
import 'package:extended_nested_scroll_view/extended_nested_scroll_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

/// A stateful widget to render HomePage.
class HomePage extends StatefulWidget with AutoRouteWrapper {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();

  @override
  Widget wrappedRoute(BuildContext context) {
    return this;
  }
}

class _HomePageState extends State<HomePage> {
  final _list = [Promotion.dummy()];
  final _products = Product.dummy;
  final ScrollController _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return AdaptiveScaffold(
      backgroundColor: Palette.accentColor,
      body: AdaptiveScaffoldBody(
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
                          builder: (_, i, pv, item) => Stack(
                            children: [
                              item.mime.type.maybeWhen(
                                image: () => ImageBox.asset(
                                  photo: item.url.getOrNull,
                                  fit: BoxFit.cover,
                                  borderRadius: 8.br,
                                  expandsFullscreen: true,
                                  replacement: Image.asset('${item.url.getOrEmpty}', fit: BoxFit.cover),
                                ),
                                video: () => Utils.nothing,
                                orElse: () => Utils.nothing,
                              ),
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
                                          textColor: App.resolveColor(Colors.white, dark: Colors.black),
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
                        color: App.resolveColor(Palette.cardColorLight, dark: Palette.secondaryColor),
                        borderRadius: const BorderRadius.only(topLeft: Radius.circular(32), topRight: Radius.circular(32)),
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
                            SliverPadding(
                              padding: EdgeInsets.symmetric(horizontal: App.sidePadding, vertical: 0.02.h).copyWith(top: 0.01.h),
                              sliver: SliverToBoxAdapter(
                                child: SizedBox(
                                  height: 0.12.h,
                                  child: ListView.custom(
                                    scrollDirection: Axis.horizontal,
                                    childrenDelegate: SliverChildBuilderDelegate(
                                      (_, i) => Row(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          SizedBox(
                                            width: 0.25.w,
                                            child: Material(
                                              color: App.resolveColor(const Color(0xffF0F3FB), dark: Palette.cardColorDark),
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
                                                            color: App.resolveColor(Palette.cardColorLight, dark: Palette.secondaryColor),
                                                            borderRadius: 100.br,
                                                            child: Padding(
                                                              padding: EdgeInsets.all(0.025.w),
                                                              child: SvgPicture.asset(
                                                                AuctionCategory.list.elementAt(i).asset.getOrNull!,
                                                                fit: BoxFit.contain,
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                        //
                                                        // 0.008.verticalh,
                                                        //
                                                        Flexible(
                                                          child: AdaptiveText(
                                                            AuctionCategory.list.elementAt(i).name.getOrNull!,
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
                                          if (i < AuctionCategory.list.length - 1) 0.03.horizontalw,
                                        ],
                                      ),
                                      childCount: AuctionCategory.list.length,
                                    ),
                                  ),
                                ),
                              ),
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
                                              color: App.resolveColor(const Color(0xffF0F3FB), dark: Palette.secondaryColor.shade700),
                                              shape: RoundedRectangleBorder(
                                                borderRadius: 4.br,
                                                side: BorderSide(
                                                  color: App.resolveColor(const Color(0xffB5D3F9), dark: Palette.cardColorDark)!,
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
                              sliver: SliverPadding(
                                padding: EdgeInsets.symmetric(horizontal: App.sidePadding, vertical: 0.01.h).copyWith(bottom: 0.01.h),
                                sliver: SliverList(
                                  delegate: SliverChildBuilderDelegate(
                                    (_, i) => Column(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        ProductCard(_products.elementAt(i)),
                                        //
                                        if (i < _products.length - 1) 0.01.verticalh,
                                      ],
                                    ),
                                    childCount: _products.length,
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
          ],
        ),
      ),
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
          onPressed: () {},
        ),
        _Action(
          title: 'Buy Now',
          padding: EdgeInsets.only(left: 0.02.w),
          onPressed: () {},
        ),
      ];
}
