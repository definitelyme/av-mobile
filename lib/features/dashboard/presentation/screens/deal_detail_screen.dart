library product_detail_screen.dart;

import 'package:auctionvillage/core/domain/entities/entities.dart';
import 'package:auctionvillage/features/dashboard/domain/index.dart';
import 'package:auctionvillage/features/dashboard/presentation/widgets/index.dart';
import 'package:auctionvillage/utils/utils.dart';
import 'package:auctionvillage/widgets/widgets.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

/// A stateful widget to render DealDetailScreen.
class DealDetailScreen extends StatefulWidget with AutoRouteWrapper {
  final Deal deal;

  const DealDetailScreen(this.deal, {Key? key}) : super(key: key);

  @override
  Widget wrappedRoute(BuildContext context) {
    return this;
  }

  @override
  _DealDetailScreenState createState() => _DealDetailScreenState();
}

class _DealDetailScreenState extends State<DealDetailScreen> {
  final _list = [Promotion.dummy()];
  final _relatedDummies = Product.dummy.take(4);

  @override
  Widget build(BuildContext context) {
    return AdaptiveScaffold(
      adaptiveToolbar: const AdaptiveToolbar(
        title: 'Live Auction',
        centerTitle: false,
        cupertinoTitleAlignment: Alignment.centerLeft,
      ),
      body: CustomScrollView(
        scrollDirection: Axis.vertical,
        physics: Utils.physics,
        slivers: [
          SliverPadding(
            padding: EdgeInsets.symmetric(horizontal: App.sidePadding * 0.5),
            sliver: SliverToBoxAdapter(
              child: Material(
                borderRadius: const BorderRadius.all(Radius.circular(Utils.buttonRadius)),
                type: MaterialType.transparency,
                child: MediaCarousel<Promotion>(
                  items: _list,
                  height: 0.27.h,
                  viewportFraction: _list.length > 1 ? 0.8 : 0.95,
                  enableInfiniteScroll: _list.length > 1,
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
                                Colors.transparent,
                                Colors.transparent,
                                Colors.transparent,
                                Colors.black12,
                                Colors.black26,
                                Colors.black38,
                                Colors.black45,
                              ],
                            ),
                          ),
                        ),
                      ),
                      //
                      Positioned(
                        top: 8,
                        right: 8,
                        child: AppIconButton(
                          backgroundColor: App.resolveColor(Palette.cardColorLight, dark: Palette.cardColorDark)!,
                          borderRadius: 5.br,
                          type: MaterialType.button,
                          elevation: 0,
                          height: 40,
                          width: 40,
                          padding: EdgeInsets.zero,
                          child: Icon(Utils.platform_(material: Icons.favorite, cupertino: CupertinoIcons.heart_fill)),
                          onPressed: () {},
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          //
          SliverPadding(
            padding: EdgeInsets.symmetric(horizontal: App.sidePadding, vertical: 0.02.h),
            sliver: SliverToBoxAdapter(
              child: AdaptiveText(
                'Apple IPhone 12 Pro Max -Nano Sim - 256GB, 6GB RAM, 6.7-Inch,(12MP+12MP+12MP)',
                maxLines: 3,
                softWrap: true,
                fontSize: 18.sp,
                fontWeight: FontWeight.w600,
                textAlign: TextAlign.left,
                letterSpacing: Utils.letterSpacing,
              ),
            ),
          ),
          //
          SliverPadding(
            padding: EdgeInsets.symmetric(horizontal: App.sidePadding).copyWith(bottom: 0.02.h),
            sliver: SliverToBoxAdapter(
              child: Material(
                color: App.resolveColor(const Color(0xffF3F2F1), dark: Palette.cardColorDark),
                shape: RoundedRectangleBorder(
                  borderRadius: 8.br,
                  side: BorderSide(color: App.resolveColor(const Color(0xffF3F2F1), dark: Palette.secondaryColor.shade300)!),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    DecoratedBox(
                      decoration: const BoxDecoration(
                        color: Color(0xffFFA500),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(8),
                          topRight: Radius.circular(8),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 13, horizontal: 20),
                        child: AdaptiveText(
                          'Auction Information',
                          maxLines: 1,
                          softWrap: true,
                          fontSize: 17.sp,
                          textColorDark: Colors.white,
                          fontWeight: FontWeight.w400,
                          textAlign: TextAlign.left,
                        ),
                      ),
                    ),
                    //
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(bottom: 18),
                            child: AdaptiveText.rich(
                              const TextSpan(children: [
                                TextSpan(text: 'Type: '),
                                TextSpan(text: 'Online', style: TextStyle(fontWeight: FontWeight.w700)),
                              ]),
                              maxLines: 1,
                              softWrap: true,
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w400,
                              textAlign: TextAlign.left,
                            ),
                          ),
                          //
                          Padding(
                            padding: const EdgeInsets.only(bottom: 18),
                            child: AdaptiveText.rich(
                              const TextSpan(children: [
                                TextSpan(text: 'Auction Start Date:	'),
                                TextSpan(text: 'Nov 2nd, 2021', style: TextStyle(fontWeight: FontWeight.w700)),
                              ]),
                              maxLines: 1,
                              softWrap: true,
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w400,
                              textAlign: TextAlign.left,
                            ),
                          ),
                          //
                          Padding(
                            padding: const EdgeInsets.only(bottom: 18),
                            child: AdaptiveText.rich(
                              const TextSpan(children: [
                                TextSpan(text: 'Auction End Date:	'),
                                TextSpan(text: 'Nov 3rd, 2021', style: TextStyle(fontWeight: FontWeight.w700)),
                              ]),
                              maxLines: 1,
                              softWrap: true,
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w400,
                              textAlign: TextAlign.left,
                            ),
                          ),
                          //
                          Padding(
                            padding: const EdgeInsets.only(bottom: 9),
                            child: AdaptiveText.rich(
                              const TextSpan(children: [
                                TextSpan(text: 'Lagos:	'),
                                TextSpan(text: 'Yaba, Lagos', style: TextStyle(fontWeight: FontWeight.w700)),
                              ]),
                              maxLines: 1,
                              softWrap: true,
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w400,
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          //
          SliverPadding(
            padding: EdgeInsets.symmetric(horizontal: App.sidePadding).copyWith(bottom: 0.02.h),
            sliver: SliverList(
              delegate: SliverChildListDelegate.fixed([
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        AdaptiveText.rich(
                          TextSpan(children: [
                            TextSpan(
                              text: '${Utils.currency} ',
                              style: TextStyle(fontSize: 26.sp, color: Palette.accentGreen, fontWeight: FontWeight.bold),
                            ),
                            TextSpan(text: '503000'.asCurrency(symbol: false)),
                          ]),
                          maxLines: 1,
                          fontSize: 25.sp,
                          fontWeight: FontWeight.w700,
                          softWrap: false,
                          letterSpacing: Utils.letterSpacing,
                        ),
                        //
                        AdaptiveText(
                          'Current Bid',
                          maxLines: 1,
                          softWrap: true,
                          fontSize: 16.sp,
                          textColor: const Color(0xff989DB3),
                          fontWeight: FontWeight.w400,
                        ),
                      ],
                    ),
                    //
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        AdaptiveText(
                          '34 Bids',
                          maxLines: 1,
                          softWrap: true,
                          fontSize: 18.sp,
                          textColor: Palette.accentColor,
                          fontWeight: FontWeight.w600,
                        ),
                        //
                        AdaptiveText(
                          'Bid History',
                          maxLines: 1,
                          softWrap: true,
                          fontSize: 16.sp,
                          textColor: const Color(0xff989DB3),
                          fontWeight: FontWeight.w400,
                        ),
                      ],
                    ),
                  ],
                ),
                //
                const Divider(thickness: 1.5, height: 35),
                //
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Flexible(
                      child: Material(
                        color: App.resolveColor(Palette.neutralF4, dark: Palette.secondaryColor.shade800),
                        borderRadius: const BorderRadius.all(Radius.circular(4.0)),
                        child: Disabled(
                          child: AdaptiveInkWell(
                            onTap: () {},
                            splashColor: App.resolveColor(Colors.grey.shade300, dark: Colors.grey.shade800),
                            borderRadius: const BorderRadius.all(Radius.circular(4.0)),
                            child: Padding(
                              padding: EdgeInsets.all(0.02.sw),
                              child: Icon(
                                Utils.platform_(material: Icons.remove, cupertino: CupertinoIcons.minus),
                                size: 22,
                                color: App.resolveColor(Colors.black87.withOpacity(0.7), dark: Colors.grey),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    //
                    Flexible(
                      flex: 2,
                      child: AdaptiveText.rich(
                        TextSpan(children: [
                          const TextSpan(text: '${Utils.currency} '),
                          TextSpan(text: '50983000'.asCurrency(symbol: false)),
                        ]),
                        maxLines: 1,
                        fontSize: 26.sp,
                        fontWeight: FontWeight.bold,
                        textColor: Palette.accentColor,
                        softWrap: false,
                        letterSpacing: Utils.letterSpacing,
                      ),
                    ),
                    //
                    Flexible(
                      child: Material(
                        color: App.resolveColor(Palette.neutralF4, dark: Palette.secondaryColor.shade800),
                        borderRadius: const BorderRadius.all(Radius.circular(4.0)),
                        child: Disabled(
                          child: AdaptiveInkWell(
                            onTap: () {},
                            splashColor: App.resolveColor(Colors.grey.shade300, dark: Colors.grey.shade800),
                            borderRadius: const BorderRadius.all(Radius.circular(4.0)),
                            child: Padding(
                              padding: EdgeInsets.all(0.02.sw),
                              child: Icon(
                                Utils.platform_(material: Icons.add, cupertino: CupertinoIcons.add),
                                size: 22,
                                color: App.resolveColor(Colors.black87.withOpacity(0.7), dark: Colors.grey),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                //
                0.01.verticalh,
                //
                Center(
                  child: AdaptiveText(
                    'Must be in 3% increment',
                    maxLines: 1,
                    softWrap: true,
                    fontSize: 16.sp,
                    textColor: const Color(0xff989DB3),
                    fontWeight: FontWeight.w400,
                  ),
                ),
                //
                0.025.verticalh,
                //
                AppButton(
                  text: 'BID NOW',
                  onPressed: () {},
                ),
                //
                0.02.verticalh,
                //
                Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      AdaptiveText(
                        'Payment Breakdown',
                        maxLines: 1,
                        softWrap: true,
                        fontSize: 17.sp,
                        textColor: const Color(0xff989DB3),
                        fontWeight: FontWeight.w400,
                      ),
                      //
                      0.01.horizontalw,
                      //
                      RotatedBox(
                        quarterTurns: 1,
                        child: Icon(
                          Icons.chevron_right,
                          color: App.resolveColor(Colors.grey, dark: Colors.grey),
                        ),
                      ),
                    ],
                  ),
                ),
              ]),
            ),
          ),
          //
          SliverPadding(
            padding: EdgeInsets.symmetric(horizontal: App.sidePadding).copyWith(bottom: 0.02.h),
            sliver: SliverList(
              delegate: SliverChildListDelegate.fixed([
                ProductDetailsExpandable(widget.product),
                //
                0.01.verticalh,
                //
                VendorReviewsExpandable(widget.product),
              ]),
            ),
          ),
          //
          SliverPadding(
            padding: EdgeInsets.symmetric(horizontal: App.sidePadding, vertical: 0.025.h),
            sliver: SliverToBoxAdapter(
              child: Material(
                borderRadius: const BorderRadius.all(Radius.circular(Utils.buttonRadius)),
                type: MaterialType.transparency,
                child: MediaCarousel<Product>(
                  items: _relatedDummies.toList(),
                  height: 0.15.h,
                  viewportFraction: 1,
                  enableInfiniteScroll: _list.length > 1,
                  position: CarouselIndicatorPosition.bottom,
                  disableCenter: false,
                  builder: (_, i, pv, item) => Stack(
                    children: [
                      const Positioned.fill(
                        child: DecoratedBox(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(Utils.buttonRadius)),
                            gradient: LinearGradient(
                              begin: Alignment(0.0, -1.8),
                              end: Alignment.bottomCenter,
                              colors: [
                                Colors.transparent,
                                Colors.transparent,
                                Colors.transparent,
                                Colors.transparent,
                                Colors.black12,
                                Colors.black26,
                                Colors.black38,
                              ],
                            ),
                          ),
                        ),
                      ),
                      //
                      ProductCard(item),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
