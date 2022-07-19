library my_sellings_screen.dart;

import 'package:auctionvillage/core/domain/entities/entities.dart';
import 'package:auctionvillage/features/auth/presentation/managers/watcher/auth_watcher_cubit.dart';
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
import 'package:kt_dart/collection.dart';

/// A stateless widget to render MySellingsScreen.
class MySellingsScreen extends StatefulWidget with AutoRouteWrapper {
  const MySellingsScreen({Key? key}) : super(key: key);

  @override
  State<MySellingsScreen> createState() => _MySellingsScreenState();

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<DealCubit>(),
      child: BlocListener<DealCubit, DealState>(
        listenWhen: (p, c) =>
            p.status.getOrElse(() => null) != c.status.getOrElse(() => null) ||
            (c.status.getOrElse(() => null) != null && (c.status.getOrElse(() => null)!.response.maybeMap(orElse: () => false))),
        listener: (c, s) => s.status.fold(
          () => null,
          (it) => it?.response.map(
            info: (i) => PopupDialog.info(message: i.message, show: i.message.isNotEmpty).render(c),
            error: (f) => PopupDialog.error(message: f.message, show: f.show && f.message.isNotEmpty).render(c),
            success: (s) => PopupDialog.success(message: s.message, show: s.message.isNotEmpty).render(c),
          ),
        ),
        child: this,
      ),
    );
  }
}

class _MySellingsScreenState extends State<MySellingsScreen> {
  late DealCubit _cubit;

  @override
  void initState() {
    _cubit = context.read<DealCubit>();
    super.initState();
  }

  User get currentUser => context.read<AuthWatcherCubit>().state.user!;

  void onLoadMore(DragToRefreshState refresh) async {
    await _cubit.sellHistory(
      currentUser,
      nextPage: true,
      endOfList: () => refresh.loadNoData(),
      callback: (_) => refresh.loadComplete(),
    );
  }

  void onRefresh(DragToRefreshState refresh) async {
    await _cubit.sellHistory(currentUser, perPage: 10);
    refresh.refreshCompleted(resetFooterState: true);
  }

  @override
  Widget build(BuildContext context) {
    return AppSliverScrollView.scaffold(
      title: 'Selling Activities',
      useSafeArea: true,
      initialRefresh: true,
      isPaginated: true,
      enablePullDown: true,
      enablePullUp: true,
      onRefresh: onRefresh,
      onLoading: onLoadMore,
      slivers: [
        BlocSelector<DealCubit, DealState, SellHistory?>(
          selector: (s) => s.sellHistory,
          builder: (c, history) {
            if (history == null) return const SliverToBoxAdapter(child: Utils.nothing);
            return SliverPadding(
              padding: EdgeInsets.symmetric(horizontal: App.sidePadding, vertical: App.sidePadding * 0.5),
              sliver: SliverToBoxAdapter(
                child: WalletBalanceCard(
                  balance: '${history.revenue.getOrEmpty}',
                  top: [AppAssets.shoppingBag(Colors.white, Size.square(0.07.w))],
                  bottom: [
                    0.012.verticalh,
                    //
                    AdaptiveText(
                      'Revenue',
                      fontSize: 16.sp,
                      textColor: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ],
                ),
              ),
            );
          },
        ),
        //
        BlocSelector<DealCubit, DealState, SellHistory?>(
          selector: (s) => s.sellHistory,
          builder: (c, history) => SliverPadding(
            padding: EdgeInsets.symmetric(horizontal: App.sidePadding),
            sliver: SliverToBoxAdapter(
              child: Row(
                children: [
                  if (history != null) ...[
                    UpDownIndicator.up(
                      value: '${history.totalProducts.getExact().ceil()}',
                      description: 'No of Items',
                      onPressed: () {},
                    ),
                    //
                    0.04.horizontalw,
                    //
                    UpDownIndicator.down(
                      value: '${history.totalSold.getExact().ceil()}',
                      description: 'Items sold',
                      onPressed: () {},
                    ),
                  ],
                ],
              ),
            ),
          ),
        ),
        //
        SliverPadding(
          padding: EdgeInsets.symmetric(horizontal: App.sidePadding).copyWith(top: App.sidePadding),
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
                  backgroundColor: Palette.accentColor.shade100.withOpacity(0.1),
                  borderRadius: 5.br,
                  type: MaterialType.button,
                  elevation: 0,
                  cupertinoBackgroundColor: CupertinoColors.systemGrey4,
                  child: AppAssets.filter,
                  onPressed: () {},
                ),
              ],
            ),
          ),
        ),
        //
        BlocSelector<DealCubit, DealState, SellHistory?>(
          selector: (s) => s.sellHistory,
          builder: (c, history) {
            if (history == null) return const SliverToBoxAdapter(child: Utils.nothing);

            return SliverPadding(
              padding: EdgeInsets.symmetric(vertical: App.sidePadding * 0.7),
              sliver: SliverList(
                delegate: SliverChildBuilderDelegate(
                  (_, i) => GroupedLayoutCard(
                    dateTime: history.grouped.keys.elementAt(i),
                    contentPadding: EdgeInsets.zero,
                    layout: (index) => TransactionTile.down(
                      title: '${history.grouped.values.elementAt(i).elementAt(index).product?.name.getOrEmpty}',
                      subtitle: '8974-8743',
                      createdAt: history.grouped.values.elementAt(i).elementAt(index).createdAt,
                      status: history.grouped.values.elementAt(i).elementAt(index).bidStatus,
                      showLeading: false,
                      onPressed: () {},
                    ),
                    count: history.grouped.values.elementAt(i).size,
                  ),
                  childCount: history.grouped.size,
                ),
              ),
            );
          },
        ),
      ],
    );
  }
}
