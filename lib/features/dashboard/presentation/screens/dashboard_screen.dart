library dashboard_screen.dart;

import 'dart:async';

import 'package:auctionvillage/core/presentation/index.dart';
import 'package:auctionvillage/features/auth/presentation/managers/managers.dart';
import 'package:auctionvillage/features/dashboard/domain/index.dart';
import 'package:auctionvillage/utils/utils.dart' hide HomePage;
import 'package:auctionvillage/widgets/widgets.dart';
import 'package:async/async.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';

/// A stateless widget to render DashboardScreen.
class DashboardScreen extends StatefulWidget with AutoRouteWrapper {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  _DashboardScreenState createState() => _DashboardScreenState();

  @override
  Widget wrappedRoute(BuildContext context) {
    return MultiBlocProvider(
      providers: [BlocProvider.value(value: BlocProvider.of<TabNavigationCubit>(context))],
      child: this,
    );
  }
}

class _DashboardScreenState extends State<DashboardScreen> with AutomaticKeepAliveClientMixin<DashboardScreen> {
  final AsyncMemoizer<dynamic> _memoizer = AsyncMemoizer();
  late TabNavigationCubit _navCubit;
  DateTime _timestampPressed = DateTime.now();

  @override
  void initState() {
    _navCubit = context.read<TabNavigationCubit>();
    super.initState();
  }

  @override
  bool get wantKeepAlive => true;

  Widget defaultImage(int currentIndex, BottomNav i) => CircleAvatar(
        backgroundImage: Image.asset(AppAssets.unnamed).image,
        maxRadius: currentIndex == i.id ? 16 : 15,
        minRadius: 14,
        backgroundColor: Colors.transparent,
      );

  Widget guestUserImage(int currentIndex, BottomNav i) => CircleAvatar(
        backgroundImage: Image.asset(AppAssets.unnamed).image,
        maxRadius: currentIndex == i.id ? 16 : 15,
        minRadius: 14,
        backgroundColor: Colors.transparent,
      );

  Future<bool> maybePop() async {
    final now = DateTime.now();
    final difference = now.difference(_timestampPressed);
    final _showWarn = difference >= Utils.willPopTimeout;

    _timestampPressed = DateTime.now();

    if (_showWarn) {
      await ToastManager.short('Tap again to exit');
      return Future.value(false);
    } else {
      await ToastManager.cancel();
      return Future.value(true);
    }
  }

  List<BottomNavigationBarItem> navItems(int currentIndex) {
    return BottomNav.list
        .map(
          (i) => BottomNavigationBarItem(
            label: i.title,
            icon: Icon(
              i.icon,
              color: currentIndex == i.id ? App.resolveColor(Palette.accentColor, dark: Palette.accentColor.shade100) : Colors.grey,
            ),
          ),
        )
        .toList();
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);

    return WillPopScope(
      onWillPop: maybePop,
      child: AutoTabsRouter(
        routes: [
          const HomeRouter(),
          const LiveRouter(),
          const SellRouter(),
          const ChatRouter(),
          const MoreRouter(),
        ],
        inheritNavigatorObservers: true,
        curve: Curves.easeInOutCubic,
        duration: const Duration(milliseconds: 300),
        navigatorObservers: () => <NavigatorObserver>[AutoRouteObserver()],
        builder: (context, child, animation) {
          WidgetsBinding.instance?.addPostFrameCallback((_) {
            if (_navCubit.state.isInit) {
              _navCubit.updateTabsRouter(context.tabsRouter);
              _navCubit.init(context);
            }
          });

          return BlocBuilder<TabNavigationCubit, TabNavigationState>(
            buildWhen: (p, c) => p.currentIndex != c.currentIndex || p.isInit != c.isInit,
            builder: (c, s) {
              final currentIndex = s.currentIndex;

              return s.isInit
                  ? AdaptiveScaffold(
                      body: Center(
                        child: CircularProgressBar.adaptive(
                          value: animation.value,
                          strokeWidth: 2,
                          width: 25,
                          height: 25,
                        ),
                      ),
                    )
                  : FutureBuilder(
                      future: _memoizer.runOnce(
                        () async {
                          final authWatcherCubit = BlocProvider.of<AuthWatcherCubit>(App.context);

                          unawaited(authWatcherCubit.subscribeUserChanges());
                        },
                      ),
                      builder: (_, snapshot) => AdaptiveScaffold(
                        cupertinoTabBuilder: (_, i) => s.tabs.toList()[i].values.first,
                        body: FadeTransition(opacity: animation, child: child),
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
                            inactiveColor: Colors.grey,
                            backgroundColor: App.resolveColor(
                              CupertinoColors.lightBackgroundGray.withAlpha(254),
                              dark: CupertinoColors.quaternarySystemFill,
                            )!,
                            currentIndex: currentIndex,
                            activeColor: App.resolveColor(Palette.accentColor, dark: Palette.accentColor.shade100),
                          ),
                          itemChanged: (i) => c.read<TabNavigationCubit>().setCurrentIndex(context, i),
                        ),
                      ),
                    );
            },
          );
        },
      ),
    );
  }
}
