library live_page.dart;

import 'package:auctionvillage/features/dashboard/domain/index.dart';
import 'package:auctionvillage/features/dashboard/presentation/managers/index.dart';
import 'package:auctionvillage/features/dashboard/presentation/widgets/index.dart';
import 'package:auctionvillage/manager/locator/locator.dart';
import 'package:auctionvillage/utils/utils.dart';
import 'package:auctionvillage/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kt_dart/collection.dart';

/// A stateful widget to render LivePage.
class LivePage extends StatefulWidget {
  const LivePage({Key? key}) : super(key: key);

  @override
  _LivePageState createState() => _LivePageState();
}

class _LivePageState extends State<LivePage> {
  late DealCubit _cubit;

  @override
  void initState() {
    _cubit = blocMaybeOf(context, orElse: () => getIt<DealCubit>());
    super.initState();
  }

  void onLoadMore(DragToRefreshState refresh) async {
    if (!_cubit.state.isLoading && _cubit.state.liveDeals.isNotEmpty())
      await _cubit.fetchLiveDeals(
        nextPage: true,
        perPage: 7,
        isHomePage: false,
        endOfList: () => refresh.loadNoData(),
        callback: (_) => refresh.loadComplete(),
      );
    else if (_cubit.state.status.getOrNull != null && _cubit.state.status.getOrNull!.isEndOfList) refresh.loadNoData();
  }

  void onRefresh(DragToRefreshState refresh) {
    if (!_cubit.state.isLoading)
      _cubit.fetchLiveDeals(
        perPage: 7,
        isHomePage: false,
        endOfList: () => refresh.loadNoData(),
        callback: (_) => refresh.refreshCompleted(resetFooterState: true),
      );
  }

  @override
  Widget build(BuildContext context) {
    return AdaptiveScaffold(
      backgroundColor: Palette.accentColor,
      adaptiveToolbar: AdaptiveToolbar(
        title: 'Live Auctions',
        titleStyle: App.titleStyle,
        elevation: 0,
        showCupertinoCustomLeading: false,
        showMaterialCustomLeading: false,
        implyLeading: false,
        centerTitle: true,
        backgroundColor: App.platform.cupertino(Palette.accentColor),
        cupertinoImplyLeading: false,
        overlayStyle: App.customSystemOverlay(ctx: context, android: Brightness.light, ios: Brightness.light),
        actions: [
          // ...Utils.platform_(
          //   cupertino: [Center(child: AdaptiveText('Live Action', maxLines: 1, style: App.titleStyle))],
          //   material: [Utils.nothing],
          // )!,
        ],
      ),
      body: BlocProvider(
        create: (_) => _cubit,
        child: Column(
          children: [
            SafeArea(
              left: false,
              right: false,
              bottom: false,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: App.sidePadding),
                child: const SearchWidget(),
              ),
            ),
            //
            0.02.verticalh,
            //
            Expanded(
              child: Material(
                color: App.resolveColor(Palette.cardColorLight, dark: Palette.cardColorDark),
                child: DragToRefresh(
                  initialRefresh: true,
                  enablePullUp: true,
                  onRefresh: onRefresh,
                  onLoading: onLoadMore,
                  child: CustomScrollView(
                    primary: false,
                    physics: Utils.physics,
                    keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
                    slivers: [
                      SliverSafeArea(
                        top: false,
                        left: false,
                        right: false,
                        sliver: BlocSelector<DealCubit, DealState, KtList<Deal>>(
                          selector: (s) => s.liveDeals,
                          builder: (c, deals) => SliverPadding(
                            padding: EdgeInsets.symmetric(horizontal: App.sidePadding, vertical: App.sidePadding),
                            sliver: SliverList(
                              delegate: SliverChildBuilderDelegate(
                                (_, i) => Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    if (deals.isNotEmpty()) ...[
                                      ProductCard(deals.get(i), index: i),
                                      //
                                      if (i < deals.size - 1) 0.01.verticalh,
                                    ],
                                  ],
                                ),
                                childCount: deals.size,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
