library wallet_balance_card.dart;

import 'package:auctionvillage/features/dashboard/presentation/managers/index.dart';
import 'package:auctionvillage/utils/utils.dart';
import 'package:auctionvillage/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

/// A stateless widget to render WalletBalanceCard.
class WalletBalanceCard extends StatelessWidget {
  final List<Widget> top;
  final List<Widget> bottom;
  final String balance;
  final bool isLoading;

  const WalletBalanceCard({
    Key? key,
    required this.balance,
    this.top = const [],
    this.bottom = const [],
    this.isLoading = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MyHero(
      tag: Const.walletBalanceCardTag,
      color: App.resolveColor(Palette.accentColor),
      type: MaterialType.canvas,
      borderRadius: 5.br,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: App.sidePadding, vertical: 0.018.h),
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
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                AdaptiveText.rich(
                  TextSpan(children: [
                    TextSpan(
                      text: '${Utils.currency} ',
                      style: TextStyle(fontSize: 26.sp, fontWeight: FontWeight.bold),
                    ),
                    TextSpan(text: balance.asCurrency(symbol: false)),
                  ]),
                  maxLines: 1,
                  fontSize: 25.sp,
                  softWrap: false,
                  textColor: Colors.white,
                  fontWeight: FontWeight.w700,
                  letterSpacing: Utils.letterSpacing,
                ),
                //
                0.05.horizontalw,
                //
                Visibility(
                  visible: context.watch<WalletCubit>().state.isFundingWallet,
                  child: const CircularProgressBar.adaptive(
                    width: 15,
                    height: 15,
                    strokeWidth: 1.5,
                    color: Colors.white,
                  ),
                ),
              ],
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
                          onTap: () => navigator.push(const WithdrawalRoute()),
                          borderRadius: 5.br,
                          child: Padding(
                            padding: EdgeInsets.symmetric(vertical: 0.012.h, horizontal: 0.08.w),
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
                          onTap: () => navigator.push(const FundWalletRoute()),
                          borderRadius: 5.br,
                          child: Padding(
                            padding: EdgeInsets.symmetric(vertical: 0.012.h, horizontal: 0.08.w),
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
