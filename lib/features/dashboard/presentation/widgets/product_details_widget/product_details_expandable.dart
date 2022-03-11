library product_details_expandable.dart;

import 'package:auctionvillage/features/dashboard/domain/index.dart';
import 'package:auctionvillage/utils/utils.dart';
import 'package:auctionvillage/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:expandable/expandable.dart';

/// A stateless widget to render ProductDetailsExpandable.
class ProductDetailsExpandable extends StatelessWidget {
  final Product product;

  const ProductDetailsExpandable(this.product, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: App.resolveColor(Palette.neutralF4, dark: Palette.cardColorDark),
      child: ExpandableTheme(
        data: ExpandableThemeData(
          hasIcon: true,
          tapHeaderToExpand: true,
          tapBodyToCollapse: false,
          useInkWell: Utils.platform_(material: true, cupertino: false),
          headerAlignment: ExpandablePanelHeaderAlignment.center,
          iconColor: App.platform
              .cupertino(App.resolveColor(null, dark: Colors.white)),
        ),
        child: ExpandableNotifier(
          // initialExpanded: true,
          child: ScrollOnExpand(
            child: ExpandablePanel(
              header: AdaptiveListTile(
                dense: true,
                material: true,
                enabled: true,
                contentPadding:
                    EdgeInsets.symmetric(horizontal: App.sidePadding),
                title: AdaptiveText(
                  'Product Details',
                  maxLines: 1,
                  fontSize: 17.sp,
                  fontWeight: FontWeight.w600,
                  letterSpacing: Utils.letterSpacing,
                ),
              ),
              collapsed: Utils.nothing,
              expanded: Material(
                color: App.resolveColor(Palette.cardColorLight,
                    dark: Palette.secondaryColor),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: App.sidePadding),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      0.01.verticalh,
                      //
                      AdaptiveText(
                        'Look at the sunset, life is amazing, life is beautiful, life is what you make it. Mogul talk. Watch your back, but more importantly when you get out the shower, dry your back, it’s a cold world out there.',
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w400,
                        letterSpacing: Utils.letterSpacing,
                      ),
                      //
                      0.01.verticalh,
                      //
                      Row(
                        children: [
                          AdaptiveText(
                            'Model: ',
                            maxLines: 1,
                            fontSize: 17.sp,
                            letterSpacing: Utils.letterSpacing,
                          ),
                          //
                          0.04.horizontalw,
                          //
                          AdaptiveText(
                            'iPhone 12 PRO',
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
                      Row(
                        children: [
                          AdaptiveText(
                            'Storage: ',
                            maxLines: 1,
                            fontSize: 17.sp,
                            letterSpacing: Utils.letterSpacing,
                          ),
                          //
                          0.04.horizontalw,
                          //
                          AdaptiveText(
                            '256GB',
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
                      Row(
                        children: [
                          AdaptiveText(
                            'Brand: ',
                            maxLines: 1,
                            fontSize: 17.sp,
                            letterSpacing: Utils.letterSpacing,
                          ),
                          //
                          0.04.horizontalw,
                          //
                          AdaptiveText(
                            'Apple',
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
                      Row(
                        children: [
                          AdaptiveText(
                            'Location: ',
                            maxLines: 1,
                            fontSize: 17.sp,
                            letterSpacing: Utils.letterSpacing,
                          ),
                          //
                          0.04.horizontalw,
                          //
                          AdaptiveText(
                            'Online',
                            maxLines: 1,
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w600,
                            letterSpacing: Utils.letterSpacing,
                          ),
                        ],
                      ),
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
