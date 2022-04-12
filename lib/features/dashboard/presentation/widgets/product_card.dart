library product_card.dart;

import 'package:auctionvillage/features/dashboard/domain/index.dart';
import 'package:auctionvillage/utils/utils.dart';
import 'package:auctionvillage/widgets/widgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kt_dart/collection.dart';

/// A stateless widget to render ProductCard.
class ProductCard extends StatelessWidget {
  final Deal deal;
  final int index;

  const ProductCard(this.deal, {Key? key, required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 0.15.h,
      child: MyHero(
        tag: null,
        type: MaterialType.transparency,
        shape: RoundedRectangleBorder(
          side: BorderSide(
            color: App.resolveColor(const Color(0xffD8DFFF), dark: CupertinoColors.inactiveGray)!,
            width: 1,
          ),
          borderRadius: 6.br,
        ),
        child: AdaptiveInkWell(
          onTap: () => navigator.navigate(DealDetailRoute(deal: deal)),
          borderRadius: 6.br,
          child: Row(
            children: [
              Flexible(
                flex: 3,
                child: ImageBox.network(
                  heroTag: 'deal-${deal.id.value}-${deal.product?.id.value}-$index',
                  photo: deal.product != null && deal.product!.photos.isNotEmpty() ? deal.product?.photos.get(0).image.getOrNull : null,
                  fit: BoxFit.cover,
                  borderRadius: 6.br,
                  expandsFullscreen: true,
                ),
              ),
              //
              Flexible(
                flex: 5,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 0.03.w, vertical: 0.013.h),
                  child: Column(
                    mainAxisAlignment: deal.type.when(
                      auction: () => MainAxisAlignment.spaceBetween,
                      buy_Now: () => MainAxisAlignment.center,
                    ),
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Flexible(
                        child: AdaptiveText(
                          '${deal.product?.name.getOrEmpty}',
                          maxLines: 2,
                          fontSize: 15.sp,
                          maxFontSize: 18,
                          fontWeight: FontWeight.bold,
                          textAlign: TextAlign.left,
                          letterSpacing: Utils.labelLetterSpacing,
                        ),
                      ),
                      //
                      if (deal.type != DealType.auction) 0.02.verticalh,
                      //
                      Flexible(
                        child: AdaptiveText.rich(
                          TextSpan(children: [
                            if (deal.lastPriceOffered.valueOrNull != null)
                              TextSpan(
                                text: '${deal.lastPriceOffered.getOrNull}'.asCurrency(),
                                style: const TextStyle(fontWeight: FontWeight.bold),
                              ),
                            const TextSpan(text: '\n'),
                            if (deal.type == DealType.auction)
                              TextSpan(text: 'current Bid', style: TextStyle(fontSize: 14.sp, color: Colors.grey)),
                            if (deal.type != DealType.auction)
                              TextSpan(text: 'Total', style: TextStyle(fontSize: 14.sp, color: Colors.grey)),
                          ]),
                          fontSize: 16.sp,
                          maxLines: 2,
                        ),
                      ),
                      //
                      if (deal.type == DealType.auction) ...[
                        Divider(
                          height: 0.006.h,
                          thickness: 0.001.h,
                          color: App.platform.cupertino(
                            App.resolveColor(null, dark: CupertinoColors.inactiveGray)!,
                          ),
                        ),
                        //
                        IntrinsicHeight(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              // Flexible(
                              //   flex: 2,
                              //   child: AdaptiveText(
                              //     '54 Bids',
                              //     maxLines: 1,
                              //     fontSize: 15.sp,
                              //     maxFontSize: 16,
                              //     textColor: Palette.accentColor,
                              //     isDefault: true,
                              //   ),
                              // ),
                              //
                              if (deal.endDate.getOrNull != null &&
                                  DateTime.now().millisecondsSinceEpoch < deal.endDate.getOrNull!.millisecondsSinceEpoch) ...[
                                // VerticalDivider(width: 0.01.w, thickness: 1.5),
                                //
                                Flexible(
                                  flex: 2,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Flexible(child: Icon(AVIcons.clock, size: 13.sp, color: Palette.accentGreen)),
                                      //
                                      Flexible(
                                        flex: 8,
                                        child: CountdownWidget(
                                          autostart: DateTime.now().millisecondsSinceEpoch < deal.endDate.getOrNull!.millisecondsSinceEpoch,
                                          duration: deal.endDate.getOrNull!.difference(DateTime.now()),
                                          daysBuilder: (days) => '$days days left',
                                          ticker: (tick) => Padding(
                                            padding: EdgeInsets.only(left: 0.015.w),
                                            child: AdaptiveText(
                                              '$tick',
                                              maxLines: 1,
                                              fontSize: 16.sp,
                                              fontWeight: FontWeight.w600,
                                              isDefault: true,
                                            ),
                                          ),
                                          child: (fn) => Utils.nothing,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ],
                          ),
                        ),
                      ],
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
