library product_card.dart;

import 'package:auctionvillage/features/dashboard/domain/index.dart';
import 'package:auctionvillage/utils/utils.dart';
import 'package:auctionvillage/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
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
          side: BorderSide(color: App.resolveColor(const Color(0xffD8DFFF), dark: Palette.cardColorDark)!, width: 1),
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
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                      Flexible(
                        child: AdaptiveText.rich(
                          TextSpan(children: [
                            if (deal.basePrice.getOrNull != null)
                              TextSpan(
                                text: '${deal.basePrice.getOrNull}'.asCurrency(),
                                style: const TextStyle(fontWeight: FontWeight.bold),
                              ),
                            const TextSpan(text: '\n'),
                            TextSpan(text: 'current Bid', style: TextStyle(fontSize: 14.sp, color: Colors.grey)),
                          ]),
                          fontSize: 16.sp,
                          maxLines: 2,
                        ),
                      ),
                      //
                      Divider(height: 0.006.h, thickness: 0.001.h),
                      //
                      IntrinsicHeight(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Flexible(
                              flex: 2,
                              child: AdaptiveText(
                                '54 Bids',
                                maxLines: 1,
                                fontSize: 15.sp,
                                maxFontSize: 16,
                                textColor: Palette.accentColor,
                                isDefault: true,
                              ),
                            ),
                            //
                            if (deal.endDate.getOrNull != null) ...[
                              VerticalDivider(width: 0.01.w, thickness: 1.5),
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
                                      child: Padding(
                                        padding: EdgeInsets.only(left: 0.015.w),
                                        child: AdaptiveText(
                                          '${DateFormat.Hms().format(deal.endDate.getOrNull!)}',
                                          maxLines: 1,
                                          fontSize: 16.sp,
                                          fontWeight: FontWeight.w600,
                                          isDefault: true,
                                        ),
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
