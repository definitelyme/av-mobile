library my_sellings_screen.dart;

import 'package:auctionvillage/features/dashboard/domain/index.dart';
import 'package:auctionvillage/features/dashboard/presentation/widgets/index.dart';
import 'package:auctionvillage/utils/utils.dart';
import 'package:auctionvillage/widgets/widgets.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

/// A stateless widget to render MySellingsScreen.
class MySellingsScreen extends StatelessWidget with AutoRouteWrapper {
  const MySellingsScreen({Key? key}) : super(key: key);

  @override
  Widget wrappedRoute(BuildContext context) {
    return this;
  }

  @override
  Widget build(BuildContext context) {
    return AppSliverScrollView.scaffold(
      title: 'Selling Activities',
      slivers: [
        SliverPadding(
          padding: EdgeInsets.symmetric(
              horizontal: App.sidePadding, vertical: App.sidePadding * 0.5),
          sliver: SliverToBoxAdapter(
            child: WalletBalanceCard(
              top: [
                AppAssets.shoppingBag(Colors.white, Size.square(0.07.w)),
              ],
              bottom: [
                0.012.verticalh,
                //
                AdaptiveText(
                  'Revenue',
                  fontSize: 16.sp,
                  textColor: Colors.white,
                  fontWeight: FontWeight.bold,
                )
              ],
            ),
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
                  value: '45',
                  description: 'No of Items',
                  onPressed: () {},
                ),
                //
                0.04.horizontalw,
                //
                UpDownIndicator.down(
                  progress: 8,
                  value: '12',
                  description: 'Items sold',
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
                  'Recent Activities',
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
                    title: 'Toyota Highlander 2015 Silve…',
                    subtitle: '8974-8743',
                    createdAt: DateTime.now(),
                    status: SellStatus.done,
                    showLeading: false,
                    onPressed: () {},
                  ),
                  //
                  TransactionTile.up(
                    title: 'Apple IPhone 12 Pro Max -Nano Sim',
                    subtitle: '8974-8743',
                    createdAt: DateTime.now().subtract(const Duration(days: 3)),
                    status: SellStatus.live,
                    showLeading: false,
                    onPressed: () {},
                  ),
                  //
                  TransactionTile.down(
                    title: 'Toyota Highlander 2015 Silve…',
                    subtitle: '8974-8743',
                    createdAt:
                        DateTime.now().subtract(const Duration(days: 10)),
                    status: SellStatus.done,
                    showLeading: false,
                    onPressed: () {},
                  ),
                ],
              ),
            ]),
          ),
        ),
      ],
    );
  }
}
