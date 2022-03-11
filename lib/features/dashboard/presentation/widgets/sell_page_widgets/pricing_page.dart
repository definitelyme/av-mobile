library pricing_page.dart;

import 'package:auctionvillage/core/presentation/index.dart';
import 'package:auctionvillage/features/dashboard/domain/index.dart';
import 'package:auctionvillage/features/dashboard/presentation/managers/index.dart';
import 'package:auctionvillage/utils/utils.dart';
import 'package:auctionvillage/widgets/widgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:kt_dart/collection.dart';

part './tabs/auction_product_tab.dart';
part './tabs/buy_now_product_tab.dart';

/// A stateful widget to render PricingPage.
class PricingPage extends StatefulWidget {
  const PricingPage({Key? key}) : super(key: key);

  @override
  _PricingPageState createState() => _PricingPageState();
}

class _PricingPageState extends State<PricingPage>
    with
        AutomaticKeepAliveClientMixin<PricingPage>,
        SingleTickerProviderStateMixin<PricingPage> {
  late TabNavigationCubit _tabCubit;

  @override
  void initState() {
    super.initState();
    _tabCubit = BlocProvider.of<TabNavigationCubit>(context);
    _tabCubit.initTabbar(this, length: PricingPageTab.tabs.size);
    _tabCubit.addTabListener(_tabListener);
  }

  void _tabListener() {}

  @override
  void dispose() {
    _tabCubit.removeTabListener(_tabListener);
    super.dispose();
  }

  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    super.build(context);

    return Column(
      // mainAxisSize: MainAxisSize.min,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: App.sidePadding),
          child: ClipRRect(
            borderRadius: Utils.inputBorderRadius.br,
            child: Material(
              color: App.resolveColor(Palette.cardColorLight,
                  dark: Palette.cardColorDark),
              shape: RoundedRectangleBorder(
                borderRadius: Utils.inputBorderRadius.br,
                side: const BorderSide(
                  width: 1.0,
                  color: Color(0xffDCDFF1),
                ),
              ),
              child: BlocBuilder<TabNavigationCubit, TabNavigationState>(
                builder: (_, s) => TabBar(
                  isScrollable: false,
                  controller: _tabCubit.state.tabController,
                  labelPadding: EdgeInsets.zero,
                  indicatorWeight: 0.01,
                  automaticIndicatorColorAdjustment: true,
                  onTap: _tabCubit.changedTabIndex,
                  tabs: PricingPageTab.tabs
                      .mapIndexed(
                        (i, item) => Material(
                          color: _tabCubit.setTabBgColor(i,
                              selected:
                                  Palette.accentColor.shade50.withOpacity(0.3)),
                          child: SizedBox(
                            width: double.infinity,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SvgPicture.asset(
                                  item.asset,
                                  fit: BoxFit.contain,
                                  color: _tabCubit.setTabTextColor(i,
                                      selected: Palette.accentColor),
                                ),
                                //
                                0.02.horizontalw,
                                //
                                Tab(
                                  height: 0.062.h,
                                  child: AdaptiveText(
                                    '${item.title}'.titleCase(),
                                    maxLines: 1,
                                    fontSize: 17.sp,
                                    textColor: _tabCubit.setTabTextColor(i,
                                        selected: Palette.accentColor),
                                    fontWeight: s.selectedTab == i
                                        ? FontWeight.w600
                                        : FontWeight.w400,
                                    letterSpacing: Utils.letterSpacing,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      )
                      .asList(),
                ),
              ),
            ),
          ),
        ),
        //
        LimitedBox(
          maxHeight: 0.57.h,
          child: TabBarView(
            controller: _tabCubit.state.tabController,
            physics: const BouncingScrollPhysics(),
            children: const [
              _AuctionProductTab(),
              _BuyNowProductTab(),
            ],
          ),
        ),
      ],
    );
  }
}
