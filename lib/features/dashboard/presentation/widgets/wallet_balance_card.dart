library wallet_balance_card.dart;

import 'package:auctionvillage/utils/utils.dart';
import 'package:auctionvillage/widgets/widgets.dart';
import 'package:flutter/material.dart';

/// A stateless widget to render WalletBalanceCard.
class WalletBalanceCard extends StatelessWidget {
  final List<Widget> top;
  final List<Widget> bottom;

  const WalletBalanceCard(
      {Key? key, this.top = const [], this.bottom = const []})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MyHero(
      tag: Const.walletBalanceCardTag,
      color: App.resolveColor(Palette.accentColor),
      type: MaterialType.canvas,
      borderRadius: 5.br,
      child: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: App.sidePadding, vertical: 0.018.h),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (top.isNotEmpty) ...top,
            //
            if (top.isEmpty) ...[
              Row(
                children: [
                  AppAssets.creditCard,
                  //
                  0.03.horizontalw,
                  //
                  AdaptiveText(
                    'Wallet Balance',
                    maxLines: 1,
                    maxFontSize: 17,
                    fontSize: 17.sp,
                    fontWeight: FontWeight.w500,
                    textAlign: TextAlign.center,
                    textColor: Colors.white,
                  ),
                ],
              ),
            ],
            //
            0.01.verticalh,
            //
            AdaptiveText.rich(
              TextSpan(children: [
                TextSpan(
                  text: '${Utils.currency} ',
                  style:
                      TextStyle(fontSize: 26.sp, fontWeight: FontWeight.bold),
                ),
                TextSpan(text: '503000'.asCurrency(symbol: false)),
              ]),
              maxLines: 1,
              fontSize: 25.sp,
              softWrap: false,
              textColor: Colors.white,
              fontWeight: FontWeight.w700,
              letterSpacing: Utils.letterSpacing,
            ),
            //
            if (bottom.isNotEmpty) ...bottom,
            //
            if (bottom.isEmpty) ...[
              0.025.verticalh,
              //
              Flexible(
                child: Row(
                  children: [
                    Flexible(
                      flex: 4,
                      child: Material(
                        color: Palette.accentColor.shade200,
                        borderRadius: 5.br,
                        child: AdaptiveInkWell(
                          onTap: () {},
                          borderRadius: 5.br,
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                                vertical: 0.012.h, horizontal: 0.08.w),
                            child: Center(
                              child: AdaptiveText(
                                'Withdraw',
                                maxLines: 1,
                                fontSize: 17.sp,
                                textColor: Colors.white,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    //
                    const Spacer(),
                    //
                    Flexible(
                      flex: 4,
                      child: Material(
                        color: Palette.accentColor.shade200,
                        borderRadius: 5.br,
                        child: AdaptiveInkWell(
                          onTap: () {},
                          borderRadius: 5.br,
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                                vertical: 0.012.h, horizontal: 0.08.w),
                            child: Center(
                              child: AdaptiveText(
                                'Fund Wallet',
                                maxLines: 1,
                                fontSize: 17.sp,
                                textColor: Colors.white,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
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
    );
  }
}
