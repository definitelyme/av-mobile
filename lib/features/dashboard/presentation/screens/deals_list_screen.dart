library deals_list_screen.dart;

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

/// A stateless widget to render DealsListScreen.
class DealsListScreen extends StatelessWidget with AutoRouteWrapper {
  final String title;
  final bool? isPrivate;
  final DealType? type;
  final BidStatus? bidStatus;
  final DealCategory? category;

  const DealsListScreen(
    this.title, {
    Key? key,
    this.isPrivate,
    this.type,
    this.bidStatus,
    this.category,
  }) : super(key: key);

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider.value(
      value: blocMaybeOf(context, orElse: () => getIt<DealCubit>())..clearDealsList(),
      child: this,
    );
  }

  void onLoadMore(BuildContext c, DragToRefreshState refresh) async {
    await c.read<DealCubit>().filterDeals(
          isPrivate: isPrivate,
          dealType: type,
          bidStatus: bidStatus,
          category: category,
          nextPage: true,
        );
    refresh.loadComplete();
  }

  void onRefresh(BuildContext c, DragToRefreshState refresh) async {
    await c.read<DealCubit>().filterDeals(isPrivate: isPrivate, bidStatus: bidStatus, dealType: type, category: category);
    refresh.refreshCompleted(resetFooterState: true);
  }

  @override
  Widget build(BuildContext context) {
    return AdaptiveScaffold(
      backgroundColor: Palette.accentColor,
      adaptiveToolbar: AdaptiveToolbar(
        implyMiddle: false,
        title: title,
        leadingIcon: App.platform.material(const Icon(Icons.keyboard_backspace_rounded, color: Colors.white)),
        overlayStyle: App.customSystemOverlay(ctx: context, android: Brightness.light, ios: Brightness.dark),
        backgroundColor: App.platform.cupertino(Palette.accentColor),
        cupertinoImplyLeading: false,
        cupertinoLeadingWidget: const Icon(CupertinoIcons.back, color: Colors.white),
        cupertinoLeadingAlignment: Alignment.centerLeft,
        titleStyle: TextStyle(
          color: Colors.white,
          fontSize: 22.sp,
          fontWeight: FontWeight.w600,
        ),
      ),
      body: SafeArea(
        left: false,
        right: false,
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: App.sidePadding),
              child: const SearchWidget(),
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
                  onRefresh: (r) => onRefresh(context, r),
                  onLoading: (r) => onLoadMore(context, r),
                  child: CustomScrollView(
                    primary: false,
                    physics: Utils.physics,
                    keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
                    slivers: [
                      SliverSafeArea(
                        top: false,
                        left: false,
                        right: false,
                        sliver: BlocBuilder<DealCubit, DealState>(
                          builder: (c, s) => SliverPadding(
                            padding: EdgeInsets.symmetric(horizontal: App.sidePadding, vertical: App.sidePadding),
                            sliver: SliverList(
                              delegate: SliverChildBuilderDelegate(
                                (_, i) => Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    if (s.dealsList.isNotEmpty()) ...[
                                      ProductCard(s.dealsList.get(i), index: i),
                                      //
                                      if (i < s.dealsList.size - 1) 0.01.verticalh,
                                    ],
                                  ],
                                ),
                                childCount: s.dealsList.size,
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
