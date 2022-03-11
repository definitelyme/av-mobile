library wallet_history_screen.dart;

import 'package:auctionvillage/features/dashboard/domain/index.dart';
import 'package:auctionvillage/features/dashboard/presentation/widgets/index.dart';
import 'package:auctionvillage/utils/utils.dart';
import 'package:auctionvillage/widgets/widgets.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

/// A stateless widget to render WalletHistoryScreen.
class WalletHistoryScreen extends StatelessWidget with AutoRouteWrapper {
  const WalletHistoryScreen({Key? key}) : super(key: key);

  @override
  Widget wrappedRoute(BuildContext context) {
    return this;
  }

  @override
  Widget build(BuildContext context) {
    return AdaptiveScaffold(
      adaptiveToolbar: const AdaptiveToolbar(
          title: 'Wallet Activities', implyMiddle: false, centerTitle: false),
      body: CustomScrollView(
        slivers: [
          SliverPadding(
            padding: EdgeInsets.symmetric(
                horizontal: App.sidePadding, vertical: App.sidePadding * 0.5),
            sliver: const SliverToBoxAdapter(
              child: WalletBalanceCard(),
            ),
          ),
          //
          SliverPadding(
            padding: EdgeInsets.symmetric(horizontal: App.sidePadding),
            sliver: SliverToBoxAdapter(
              child: Row(
                children: [
                  UpDownIndicator.up(
                    progress: 12.5,
                    value: '4000'.asCurrency(),
                    description: 'Total Expenses',
                    onPressed: () {},
                  ),
                  //
                  0.04.horizontalw,
                  //
                  UpDownIndicator.down(
                    progress: 8,
                    value: '504000'.asCurrency(),
                    description: 'Total Revenue',
                    onPressed: () {},
                  ),
                ],
              ),
            ),
          ),
          //
          SliverPadding(
            padding: EdgeInsets.symmetric(horizontal: App.sidePadding)
                .copyWith(top: App.sidePadding),
            sliver: SliverToBoxAdapter(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  AdaptiveText(
                    'Recent Transactions',
                    maxLines: 1,
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w600,
                    textAlign: TextAlign.left,
                  ),
                  //
                  AppIconButton(
                    backgroundColor:
                        Palette.accentColor.shade100.withOpacity(0.1),
                    borderRadius: 5.br,
                    type: MaterialType.button,
                    elevation: 0,
                    child: AppAssets.filter,
                    onPressed: () {},
                  ),
                ],
              ),
            ),
          ),
          //
          SliverPadding(
            padding: EdgeInsets.symmetric(vertical: App.sidePadding * 0.7),
            sliver: SliverList(
              delegate: SliverChildListDelegate.fixed([
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: App.sidePadding),
                  child: AdaptiveText(
                    'Today',
                    maxLines: 1,
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w500,
                    textAlign: TextAlign.left,
                  ),
                ),
                //
                ...ListTile.divideTiles(
                  context: context,
                  tiles: [
                    TransactionTile.down(
                      title: '491800'.asCurrency(),
                      subtitle: '8974-8743',
                      createdAt: DateTime.now(),
                      status: TransactionStatus.successful,
                      onPressed: () {},
                    ),
                    //
                    TransactionTile.up(
                      title: '-18400000'
                          .asCurrency(currency: ' ${Utils.currency}'),
                      subtitle: '8974-8743',
                      createdAt:
                          DateTime.now().subtract(const Duration(days: 3)),
                      status: TransactionStatus.pending,
                      onPressed: () {},
                    ),
                    //
                    TransactionTile.down(
                      title: '2400000'.asCurrency(),
                      subtitle: '8974-8743',
                      createdAt:
                          DateTime.now().subtract(const Duration(days: 10)),
                      status: TransactionStatus.failed,
                      onPressed: () {},
                    ),
                  ],
                ),
              ]),
            ),
          ),
        ],
      ),
    );
  }
}
