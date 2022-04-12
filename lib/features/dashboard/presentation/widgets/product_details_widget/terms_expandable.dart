library terms_expandable.dart;

import 'package:auctionvillage/features/dashboard/domain/index.dart';
import 'package:auctionvillage/utils/utils.dart';
import 'package:auctionvillage/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:expandable/expandable.dart';

/// A stateless widget to render TermsExpandable.
class TermsExpandable extends StatelessWidget {
  final TermsInformation terms;

  const TermsExpandable(this.terms, {Key? key}) : super(key: key);

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
                  'Terms & Conditions',
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
                      if (terms.yearOfPurchase.getOrNull != null) ...[
                        Row(
                          children: [
                            AdaptiveText(
                              'Year of Purchase: ',
                              maxLines: 1,
                              fontSize: 17.sp,
                              letterSpacing: Utils.letterSpacing,
                            ),
                            //
                            0.02.horizontalw,
                            //
                            AdaptiveText(
                              '${terms.yearOfPurchase.getOrNull}',
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
                            'Repair History: ',
                            maxLines: 1,
                            fontSize: 17.sp,
                            letterSpacing: Utils.letterSpacing,
                          ),
                          //
                          0.02.horizontalw,
                          //
                          AdaptiveText(
                            '${terms.hasRepairHistory ? 'Yes' : 'No'}',
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
                            'Warranty: ',
                            maxLines: 1,
                            fontSize: 17.sp,
                            letterSpacing: Utils.letterSpacing,
                          ),
                          //
                          0.02.horizontalw,
                          //
                          if (terms.hasWarranty)
                            AdaptiveText(
                              terms.warranty.getOrNull!,
                              maxLines: 1,
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w600,
                              letterSpacing: Utils.letterSpacing,
                            ),
                          //
                          if (!terms.hasWarranty)
                            AdaptiveText(
                              'No',
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
                            'Refund Policy: ',
                            maxLines: 1,
                            fontSize: 17.sp,
                            letterSpacing: Utils.letterSpacing,
                          ),
                          //
                          0.02.horizontalw,
                          //
                          AdaptiveText(
                            '${terms.hasRefundPolicy ? 'Yes' : 'No Refund'}',
                            maxLines: 1,
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w600,
                            letterSpacing: Utils.letterSpacing,
                          ),
                        ],
                      ),
                      //
                      if (terms.otherInformation.getOrNull != null && terms.otherInformation.getOrNull!.isNotEmpty) ...[
                        0.008.verticalh,
                        //
                        AdaptiveText(
                          'Other Information: ',
                          maxLines: 1,
                          fontSize: 17.sp,
                          letterSpacing: Utils.letterSpacing,
                        ),
                        //
                        0.008.verticalh,
                        //
                        AdaptiveText(
                          terms.otherInformation.getOrNull!,
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w600,
                          letterSpacing: Utils.letterSpacing,
                        ),
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
