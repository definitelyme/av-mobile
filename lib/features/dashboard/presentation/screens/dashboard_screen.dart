library dashboard_screen.dart;

import 'package:auctionvillage/core/presentation/index.dart';
import 'package:auctionvillage/features/auth/presentation/managers/managers.dart';
import 'package:auctionvillage/features/dashboard/domain/index.dart';
import 'package:auctionvillage/features/dashboard/presentation/managers/index.dart';
import 'package:auctionvillage/utils/utils.dart' hide HomePage;
import 'package:auctionvillage/widgets/widgets.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';

/// A stateless widget to render DashboardScreen.
class DashboardScreen extends StatefulWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  _DashboardScreenState createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> with AutomaticKeepAliveClientMixin<DashboardScreen> {
  late BottomNavigationCubit _cubit;

  @override
  void initState() {
    super.initState();
    _cubit = context.read<BottomNavigationCubit>();
    BlocProvider.of<AuthWatcherCubit>(context).subscribeUserChanges();
  }

  @override
  bool get wantKeepAlive => true;

  List<BottomNavigationBarItem> navItems(int index) {
    return BottomNav.list
        .map(
          (i) => BottomNavigationBarItem(
            label: i.title,
            icon: Icon(
              i.icon,
              color: index == i.id ? App.resolveColor(Palette.accentColor, dark: Palette.accentColor.shade100) : Colors.grey,
            ),
          ),
        )
        .toList();
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);

    return DoubleTapClose(
      child: AutoTabsRouter.builder(
        routes: BottomNav.list.map((e) => e.router).toList(),
        inheritNavigatorObservers: true,
        builder: (_, children, router) => BlocSelector<BottomNavigationCubit, BottomNavigationState, int>(
          selector: (s) => s.currentIndex,
          builder: (c, currentIndex) => AdaptiveScaffold(
            cupertinoTabBuilder: (_, i) => BottomNavigationState.tabs.toList()[i].values.first,
            body: LazyIndexedStack(index: currentIndex, children: children),
            adaptiveBottomNav: PlatformNavBar(
              items: navItems(currentIndex),
              currentIndex: currentIndex,
              material: (_, __) => MaterialNavBarData(
                elevation: 0.0,
                type: BottomNavigationBarType.fixed,
                unselectedItemColor: Colors.grey,
                selectedItemColor: App.resolveColor(Palette.accentColor, dark: Palette.accentColor.shade100),
              ),
              cupertino: (_, __) => CupertinoTabBarData(
                iconSize: 20,
                backgroundColor: App.resolveColor(
                  CupertinoColors.lightBackgroundGray.withAlpha(254),
                  dark: CupertinoColors.quaternarySystemFill,
                )!,
                inactiveColor: Colors.grey,
                currentIndex: currentIndex,
                activeColor: App.resolveColor(Palette.accentColor, dark: Palette.accentColor.shade100),
              ),
              itemChanged: (i) => _cubit.setCurrentIndex(router, i),
            ),
          ),
        ),
      ),
    );
  }
}
