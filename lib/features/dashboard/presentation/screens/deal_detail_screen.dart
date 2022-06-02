library product_detail_screen.dart;

import 'package:auctionvillage/core/domain/entities/entities.dart';
import 'package:auctionvillage/features/auth/presentation/managers/managers.dart';
import 'package:auctionvillage/features/dashboard/domain/index.dart';
import 'package:auctionvillage/features/dashboard/presentation/managers/index.dart';
import 'package:auctionvillage/features/dashboard/presentation/widgets/index.dart';
import 'package:auctionvillage/manager/locator/locator.dart';
import 'package:auctionvillage/utils/utils.dart';
import 'package:auctionvillage/widgets/widgets.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:kt_dart/collection.dart';

/// A stateful widget to render DealDetailScreen.
class DealDetailScreen extends StatefulWidget with AutoRouteWrapper {
  final Deal deal;

  const DealDetailScreen(this.deal, {Key? key}) : super(key: key);

  @override
  _DealDetailScreenState createState() => _DealDetailScreenState();

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider.value(
      value: blocMaybeOf(context, orElse: () => getIt<DealCubit>())..showDeal(deal),
      child: this,
    );
  }
}

class _DealDetailScreenState extends State<DealDetailScreen> {
  late DealCubit _cubit;

  @override
  void initState() {
    _cubit = context.read<DealCubit>();
    super.initState();
  }

  void placeBidOrBuyNow() {
    if (!context.read<AuthWatcherCubit>().state.isAuthenticated) {
      Utils.popupIfNoAuth(context, msg: 'You have to be logged in to bid or buy.');
      return;
    } else {
      _cubit.sendBid();
    }
  }

  @override
  Widget build(BuildContext context) {
    return AdaptiveScaffold(
      adaptiveToolbar: AdaptiveToolbar(
        title: widget.deal.type.when(auction: () => 'Live Auction', buy_Now: () => 'For Sale'),
        centerTitle: false,
        cupertinoTitleAlignment: Alignment.centerLeft,
        actions: [
          BlocSelector<DealCubit, DealState, bool>(
            selector: (s) => s.isLoading,
            builder: (c, isLoading) => AnimatedVisibility(
              visible: isLoading,
              child: Padding(
                padding: EdgeInsets.only(right: App.sidePadding),
                child: const Center(child: CircularProgressBar.adaptive(width: 20, height: 20, strokeWidth: 2)),
              ),
            ),
          ),
        ],
      ),
      body: BlocBuilder<DealCubit, DealState>(
        builder: (c, s) {
          final deal = s.currentDeal.id.value != null ? s.currentDeal : widget.deal;

          return CustomScrollView(
            scrollDirection: Axis.vertical,
            physics: Utils.physics,
            slivers: [
              if (deal.product != null && deal.product!.photos.isNotEmpty())
                SliverPadding(
                  padding: EdgeInsets.symmetric(horizontal: App.sidePadding * 0.5),
                  sliver: SliverToBoxAdapter(
                    child: Material(
                      borderRadius: const BorderRadius.all(Radius.circular(Utils.buttonRadius)),
                      type: MaterialType.transparency,
                      child: SafeArea(
                        left: false,
                        right: false,
                        bottom: false,
                        child: MediaCarousel<MediaField>(
                          items: deal.product!.photos.map((e) => e.image).asList(),
                          height: 0.27.h,
                          viewportFraction: (it) => deal.product!.photos.map((e) => e.image).size > 1 ? 0.8 : 0.95,
                          enableInfiniteScroll: (it) => deal.product!.photos.map((e) => e.image).size > 1,
                          position: CarouselIndicatorPosition.bottom,
                          autoPlay: true,
                          autoPlayInterval: const Duration(seconds: 7),
                          disableCenter: false,
                          builder: (_, i, pv, item) => ImageBox.network(
                            photo: item.getOrNull,
                            fit: BoxFit.cover,
                            borderRadius: 8.br,
                            expandsFullscreen: true,
                            heroTag: '${deal.product!.id}_${i}_${item.getOrNull}',
                            replacement: Image.asset('${item.getOrEmpty}', fit: BoxFit.cover),
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
                                child: AnimatedVisibility(
                                  visible: !s.isLoading,
                                  child: AppIconButton(
                                    backgroundColor: App.resolveColor(Palette.cardColorLight, dark: Palette.cardColorDark)!,
                                    borderRadius: 5.br,
                                    type: MaterialType.button,
                                    elevation: 0,
                                    height: 40,
                                    width: 40,
                                    disabled: s.isLoading || s.isBidding,
                                    padding: EdgeInsets.zero,
                                    onPressed: c.read<DealCubit>().toggleFavorite,
                                    child: s.currentDeal.hasWish
                                        ? Icon(Utils.platform_(material: Icons.favorite, cupertino: CupertinoIcons.heart_fill))
                                        : Icon(Utils.platform_(material: Icons.favorite_border, cupertino: CupertinoIcons.heart)),
                                  ),
                                ),
                              ),
                              //
                              if (deal.endDate.getOrNull != null &&
                                  DateTime.now().millisecondsSinceEpoch < deal.endDate.getOrNull!.millisecondsSinceEpoch)
                                Positioned(
                                  top: 20,
                                  left: 0,
                                  child: CountdownWidget(
                                    autostart: DateTime.now().millisecondsSinceEpoch < deal.endDate.getOrNull!.millisecondsSinceEpoch,
                                    duration: deal.endDate.getOrNull!.difference(DateTime.now()),
                                    // showMinuteRemainder: false,
                                    showHourRemainder: false,
                                    ticker: (tick) => Material(
                                      color: Palette.accentGreen,
                                      borderRadius: const BorderRadius.only(
                                        topRight: Radius.circular(8),
                                        bottomRight: Radius.circular(8),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                                        child: Row(
                                          children: [
                                            Icon(AVIcons.clock, size: 16.sp, color: Colors.white),
                                            //
                                            Padding(
                                              padding: EdgeInsets.only(left: 0.015.w),
                                              child: AdaptiveText(
                                                '$tick',
                                                maxLines: 1,
                                                fontSize: 16.sp,
                                                maxFontSize: 16,
                                                fontWeight: FontWeight.w600,
                                                textColor: Colors.white,
                                                textColorDark: Colors.white,
                                                isDefault: true,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    child: (fn) => Utils.nothing,
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
              if (deal.product != null)
                SliverPadding(
                  padding: EdgeInsets.symmetric(horizontal: App.sidePadding, vertical: 0.02.h),
                  sliver: SliverToBoxAdapter(
                    child: AdaptiveText(
                      '${deal.product!.name.getOrEmpty}',
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
                              deal.type == DealType.auction ? 'Auction Information' : 'Basic Information',
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
                                  TextSpan(children: [
                                    const TextSpan(text: 'Type: '),
                                    TextSpan(text: '${deal.biddingType}'.titleCase(), style: const TextStyle(fontWeight: FontWeight.w700)),
                                  ]),
                                  maxLines: 1,
                                  softWrap: true,
                                  fontSize: 16.sp,
                                  fontWeight: FontWeight.w400,
                                  textAlign: TextAlign.left,
                                ),
                              ),
                              //
                              if (deal.startDate.getOrNull != null)
                                Padding(
                                  padding: const EdgeInsets.only(bottom: 18),
                                  child: AdaptiveText.rich(
                                    TextSpan(children: [
                                      const TextSpan(text: 'Auction Start Date: '),
                                      if (deal.startDate.getOrNull != null)
                                        TextSpan(
                                          text: '${DateFormat('MMM dd, yyyy').format(deal.startDate.getOrNull!)}',
                                          style: const TextStyle(fontWeight: FontWeight.w700),
                                        ),
                                    ]),
                                    maxLines: 1,
                                    softWrap: true,
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.w400,
                                    textAlign: TextAlign.left,
                                  ),
                                ),
                              //
                              if (deal.endDate.getOrNull != null)
                                Padding(
                                  padding: const EdgeInsets.only(bottom: 18),
                                  child: AdaptiveText.rich(
                                    TextSpan(children: [
                                      const TextSpan(text: 'Auction End Date: '),
                                      if (deal.endDate.getOrNull != null)
                                        TextSpan(
                                          text: '${DateFormat('MMM dd, yyyy').format(deal.endDate.getOrNull!)}',
                                          style: const TextStyle(fontWeight: FontWeight.w700),
                                        ),
                                    ]),
                                    maxLines: 1,
                                    softWrap: true,
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.w400,
                                    textAlign: TextAlign.left,
                                  ),
                                ),
                              //
                              if (deal.product != null && (deal.product!.lga.isValid || deal.product!.state.isValid))
                                Padding(
                                  padding: const EdgeInsets.only(bottom: 9),
                                  child: AdaptiveText.rich(
                                    TextSpan(children: [
                                      const TextSpan(text: 'Location: '),
                                      if (deal.product!.lga.isValid)
                                        TextSpan(
                                          text: '${deal.product!.lga.getOrEmpty}, ',
                                          style: const TextStyle(fontWeight: FontWeight.w700),
                                        ),
                                      if (deal.product!.state.isValid)
                                        TextSpan(
                                          text: '${deal.product!.state.getOrEmpty}',
                                          style: const TextStyle(fontWeight: FontWeight.w700),
                                        ),
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
                                TextSpan(text: '${deal.lastPriceOffered.getOrNull}'.asCurrency(symbol: false)),
                              ]),
                              maxLines: 1,
                              fontSize: 25.sp,
                              fontWeight: FontWeight.w700,
                              softWrap: false,
                              letterSpacing: Utils.letterSpacing,
                            ),
                            //
                            AdaptiveText(
                              deal.type == DealType.auction ? 'Current Bid' : 'Sale Price',
                              maxLines: 1,
                              softWrap: true,
                              fontSize: 16.sp,
                              textColor: const Color(0xff989DB3),
                              fontWeight: FontWeight.w400,
                            ),
                          ],
                        ),
                        //
                        if (1 != 1)
                          if (deal.type == DealType.auction)
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
                    if (deal.type != DealType.auction) 0.02.verticalh,
                    //
                    if (deal.type == DealType.auction) ...[
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
                                disabled: s.bidAmount.getOrNull <= s.currentDeal.lastPriceOffered.getOrNull || s.isLoading || s.isBidding,
                                child: AdaptiveInkWell(
                                  onTap: _cubit.decreaseBid,
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
                                TextSpan(text: '${s.bidAmount.getOrNull.roundToIntOrDouble}'.asCurrency(symbol: false)),
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
                                disabled: s.isLoading || s.isBidding,
                                child: AdaptiveInkWell(
                                  onTap: _cubit.increaseBid,
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
                      AnimatedVisibility(
                        visible: s.currentDeal.product?.category?.percentageIncrease.getOrNull != null &&
                            s.currentDeal.product!.category!.percentageIncrease.isValid,
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Center(
                              child: AdaptiveText.rich(
                                TextSpan(children: [
                                  const TextSpan(text: 'Must be in '),
                                  TextSpan(text: '${s.currentDeal.product?.category?.percentageIncrease.getOrNull?.roundToIntOrDouble}%'),
                                  const TextSpan(text: ' increment'),
                                ]),
                                maxLines: 1,
                                softWrap: true,
                                fontSize: 16.sp,
                                textColor: const Color(0xff989DB3),
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            //
                            0.025.verticalh,
                          ],
                        ),
                      ),
                    ],
                    //
                    deal.type.when(
                      auction: () => AppButton(
                        text: 'BID NOW',
                        isLoading: s.isBidding,
                        disabled: s.isLoading || s.isBidding || s.bidAmount.getOrNull <= s.currentDeal.lastPriceOffered.getOrNull,
                        onPressed: placeBidOrBuyNow,
                      ),
                      buy_Now: () => AppButton(
                        text: 'BUY NOW',
                        isLoading: s.isBidding,
                        disabled: s.isLoading || s.isBidding,
                        onPressed: placeBidOrBuyNow,
                      ),
                    ),
                    //
                    0.02.verticalh,
                    //
                    Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          AdaptiveText(
                            'Breakdown',
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
                    if (deal.product != null) ...[
                      ProductDetailsExpandable(deal.product!, biddingType: deal.biddingType),
                      //
                      0.01.verticalh,
                    ],
                    //
                    if (deal.product != null && deal.product!.shippingInformation != null) ...[
                      ShippingDetailsExpandable(deal.product!.shippingInformation!),
                      //
                      0.01.verticalh,
                    ],
                    //
                    if (deal.product != null && deal.product!.termsInformation != null) ...[
                      TermsExpandable(deal.product!.termsInformation!),
                      //
                      0.01.verticalh,
                    ],
                    // VendorReviewsExpandable(widget.product),
                  ]),
                ),
              ),
              //
              // SliverPadding(
              //   padding: EdgeInsets.symmetric(horizontal: App.sidePadding, vertical: 0.025.h),
              //   sliver: SliverToBoxAdapter(
              //     child: Material(
              //       borderRadius: const BorderRadius.all(Radius.circular(Utils.buttonRadius)),
              //       type: MaterialType.transparency,
              //       child: MediaCarousel<Product>(
              //         items: _relatedDummies.toList(),
              //         height: 0.15.h,
              //         viewportFraction: 1,
              //         enableInfiniteScroll: _list.length > 1,
              //         position: CarouselIndicatorPosition.bottom,
              //         disableCenter: false,
              //         builder: (_, i, pv, item) => Stack(
              //           children: [
              //             const Positioned.fill(
              //               child: DecoratedBox(
              //                 decoration: BoxDecoration(
              //                   borderRadius: BorderRadius.all(Radius.circular(Utils.buttonRadius)),
              //                   gradient: LinearGradient(
              //                     begin: Alignment(0.0, -1.8),
              //                     end: Alignment.bottomCenter,
              //                     colors: [
              //                       Colors.transparent,
              //                       Colors.transparent,
              //                       Colors.transparent,
              //                       Colors.transparent,
              //                       Colors.black12,
              //                       Colors.black26,
              //                       Colors.black38,
              //                     ],
              //                   ),
              //                 ),
              //               ),
              //             ),
              //             //
              //             ProductCard(item),
              //           ],
              //         ),
              //       ),
              //     ),
              //   ),
              // ),
            ],
          );
        },
      ),
    );
  }
}
