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
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';

/// A stateless widget to render DashboardScreen.
class DashboardScreen extends StatefulWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  _DashboardScreenState createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> with DoubleTapToPop, AutomaticKeepAliveClientMixin<DashboardScreen> {
  late BottomNavigationCubit _cubit;
  late CupertinoTabController _controller;

  @override
  void initState() {
    _cubit = context.read<BottomNavigationCubit>();
    _controller = CupertinoTabController(initialIndex: _cubit.state.currentIndex);
    context.read<AuthWatcherCubit>().subscribeUserChanges();
    super.initState();
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

    return AutoTabsRouter.builder(
      inheritNavigatorObservers: true,
      homeIndex: BottomNavigationState.homeIndex,
      routes: BottomNav.list.map((e) => e.router).toList(),
      navigatorObservers: () => <NavigatorObserver>[AutoRouteObserver()],
      onRouterReady: (router) {
        _cubit.attachListener(router);

        WidgetsBinding.instance.addPostFrameCallback((_) {
          router.setActiveIndex(_cubit.state.currentIndex);
          if (App.platform.isIOS) _controller.index = _cubit.state.currentIndex;
        });
      },
      builder: (c, children, router) {
        final currentIndex = c.watchTabsRouter.activeIndex;

        return WillPopScope(
          onWillPop: maybePop,
          child: AdaptiveScaffold(
            cupertinoTabBuilder: (_, i) => CupertinoTabView(builder: (_) => BottomNavigationState.tabs.toList()[i].values.first),
            body: LazyIndexedStack(index: currentIndex, children: children),
            cupertino: (data) => data.copyWith(
              resizeToAvoidBottomInset: false,
              backgroundColor: Colors.transparent,
              controller: _controller,
              bottomTabBar: CupertinoTabBar(
                items: navItems(currentIndex),
                backgroundColor: App.resolveColor(
                  CupertinoColors.lightBackgroundGray.withAlpha(254),
                  dark: CupertinoColors.quaternarySystemFill,
                )!,
                iconSize: 20,
                inactiveColor: Colors.grey,
                currentIndex: currentIndex,
                activeColor: App.resolveColor(Palette.accentColor, dark: Palette.accentColor.shade100, ctx: c),
                onTap: (i) {
                  FocusManager.instance.primaryFocus?.unfocus();
                  SystemChannels.textInput.invokeMethod('TextInput.hide');

                  _controller.index = i;
                  router.setActiveIndex(i);
                },
              ),
            ),
            adaptiveBottomNav: PlatformNavBar(
              items: navItems(currentIndex),
              currentIndex: currentIndex,
              material: (_, __) => MaterialNavBarData(
                elevation: 0.0,
                type: BottomNavigationBarType.fixed,
                unselectedItemColor: Colors.grey,
                selectedItemColor: App.resolveColor(Palette.accentColor, dark: Palette.accentColor.shade100),
              ),
              itemChanged: router.setActiveIndex,
            ),
          ),
        );
      },
    );
  }
}
