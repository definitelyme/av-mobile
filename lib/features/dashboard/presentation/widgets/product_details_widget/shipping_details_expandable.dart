library shipping_details_expandable.dart;

import 'package:auctionvillage/features/dashboard/domain/index.dart';
import 'package:auctionvillage/utils/utils.dart';
import 'package:auctionvillage/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:expandable/expandable.dart';

/// A stateless widget to render ShippingDetailsExpandable.
class ShippingDetailsExpandable extends StatelessWidget {
  final ShippingInformation shipping;

  const ShippingDetailsExpandable(this.shipping, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: App.resolveColor(Palette.neutralF4, dark: Palette.cardColorDark),
      borderRadius: BorderRadius.circular(6),
      child: ExpandableTheme(
        data: ExpandableThemeData(
          hasIcon: true,
          tapHeaderToExpand: true,
          tapBodyToCollapse: false,
          useInkWell: Utils.platform_(material: true, cupertino: false),
          headerAlignment: ExpandablePanelHeaderAlignment.center,
          iconColor: App.platform.cupertino(App.resolveColor(null, dark: Colors.white)),
        ),
        child: ExpandableNotifier(
          // initialExpanded: true,
          child: ScrollOnExpand(
            child: ExpandablePanel(
              header: AdaptiveListTile(
                dense: true,
                material: true,
                enabled: true,
                contentPadding: EdgeInsets.symmetric(horizontal: App.sidePadding),
                title: AdaptiveText(
                  'Shipping Details',
                  maxLines: 1,
                  fontSize: 17.sp,
                  fontWeight: FontWeight.w600,
                  letterSpacing: Utils.letterSpacing,
                ),
              ),
              collapsed: Utils.nothing,
              expanded: Material(
                color: App.resolveColor(Palette.cardColorLight, dark: Palette.secondaryColor.shade700),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: App.sidePadding),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      0.01.verticalh,
                      //
                      if (shipping.description.isValid) ...[
                        AdaptiveText(
                          '${shipping.description.getOrEmpty}',
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w400,
                          letterSpacing: Utils.letterSpacing,
                        ),
                        //
                        0.01.verticalh,
                      ],
                      //
                      if (shipping.weight.getOrNull != null && shipping.weight.getOrNull! > 0) ...[
                        Row(
                          children: [
                            AdaptiveText(
                              'Weight: ',
                              maxLines: 1,
                              fontSize: 17.sp,
                              letterSpacing: Utils.letterSpacing,
                            ),
                            //
                            0.02.horizontalw,
                            //
                            AdaptiveText(
                              '${shipping.weight.getOrNull!} (kg)',
                              maxLines: 1,
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w600,
                              letterSpacing: Utils.letterSpacing,
                            ),
                          ],
                        ),
                        //
                        0.008.verticalh,
                      ],
                      //
                      if (shipping.length.getOrNull != null && shipping.length.getOrNull! > 0) ...[
                        Row(
                          children: [
                            AdaptiveText(
                              'Length: ',
                              maxLines: 1,
                              fontSize: 17.sp,
                              letterSpacing: Utils.letterSpacing,
                            ),
                            //
                            0.02.horizontalw,
                            //
                            AdaptiveText(
                              '${shipping.length.getOrNull!} (cm)',
                              maxLines: 1,
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w600,
                              letterSpacing: Utils.letterSpacing,
                            ),
                          ],
                        ),
                        //
                        0.008.verticalh,
                      ],
                      //
                      if (shipping.width.getOrNull != null && shipping.width.getOrNull! > 0) ...[
                        Row(
                          children: [
                            AdaptiveText(
                              'Width: ',
                              maxLines: 1,
                              fontSize: 17.sp,
                              letterSpacing: Utils.letterSpacing,
                            ),
                            //
                            0.02.horizontalw,
                            //
                            AdaptiveText(
                              '${shipping.width.getOrNull!} (cm)',
                              maxLines: 1,
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w600,
                              letterSpacing: Utils.letterSpacing,
                            ),
                          ],
                        ),
                        //
                        0.008.verticalh,
                      ],
                      //
                      if (shipping.height.getOrNull != null && shipping.height.getOrNull! > 0) ...[
                        Row(
                          children: [
                            AdaptiveText(
                              'Height: ',
                              maxLines: 1,
                              fontSize: 17.sp,
                              letterSpacing: Utils.letterSpacing,
                            ),
                            //
                            0.02.horizontalw,
                            //
                            AdaptiveText(
                              '${shipping.height.getOrNull!} (cm)',
                              maxLines: 1,
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w600,
                              letterSpacing: Utils.letterSpacing,
                            ),
                          ],
                        ),
                        //
                        0.008.verticalh,
                      ],
                      //
                      Row(
                        children: [
                          AdaptiveText(
                            'Available for Pickup: ',
                            maxLines: 1,
                            fontSize: 17.sp,
                            letterSpacing: Utils.letterSpacing,
                          ),
                          //
                          0.02.horizontalw,
                          //
                          AdaptiveText(
                            '${shipping.isPickup ? 'Yes' : 'No'}',
                            maxLines: 1,
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w600,
                            letterSpacing: Utils.letterSpacing,
                          ),
                        ],
                      ),
                      //
                      0.008.verticalh,
                      //
                      if (shipping.hasDeliverPeriod) ...[
                        Row(
                          children: [
                            AdaptiveText(
                              'Delivery Period: ',
                              maxLines: 1,
                              fontSize: 17.sp,
                              letterSpacing: Utils.letterSpacing,
                            ),
                            //
                            0.02.horizontalw,
                            //
                            AdaptiveText(
                              shipping.deliveryPeriod.getOrNull!,
                              maxLines: 1,
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w600,
                              letterSpacing: Utils.letterSpacing,
                            ),
                          ],
                        ),
                        //
                        0.008.verticalh,
                      ],
                      //
                      VerticalSpace(height: 0.02.h),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
