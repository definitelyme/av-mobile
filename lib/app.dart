library app.dart;

import 'package:auctionvillage/core/data/http_client/index.dart';
import 'package:auctionvillage/core/presentation/managers/managers.dart';
import 'package:auctionvillage/features/auth/presentation/managers/managers.dart';
import 'package:auctionvillage/manager/locator/locator.dart';
import 'package:auctionvillage/manager/theme/theme.dart';
import 'package:auctionvillage/utils/utils.dart';
import 'package:auto_route/auto_route.dart';
import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:flutter/cupertino.dart' hide Router;
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart' hide Router;
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

class AuctionVillageApp extends StatelessWidget {
  /// This is the entry point for AuctionVillageApp App
  const AuctionVillageApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _router = getIt<AppRouter>();

    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => getIt<ThemeCubit>()),
        BlocProvider(create: (_) => getIt<AuthWatcherCubit>()),
        BlocProvider(create: (_) => getIt<TabNavigationCubit>()),
      ],
      child: MultiBlocListener(
        listeners: [
          BlocListener<AuthWatcherCubit, AuthWatcherState>(
            listenWhen: (p, c) =>
                p.status.getOrElse(() => null) !=
                    c.status.getOrElse(() => null) ||
                (c.status.getOrElse(() => null) != null &&
                    (c.status
                        .getOrElse(() => null)!
                        .response
                        .maybeMap(orElse: () => false))),
            listener: (c, s) => s.status.fold(
              () => null,
              (it) => it?.response.mapOrNull(
                error: (f) => it.reason.fold(timeoutNoInternet: () async {
                  await ToastManager.cancel();
                  await ToastManager.long('${f.message}');
                  return null;
                }),
              ),
            ),
          ),
        ],
        child: BlocBuilder<ThemeCubit, AppTheme>(
          builder: (context, app) => PlatformApp.router(
            title: Const.appName.capitalizeFirst(),
            debugShowCheckedModeBanner: false,
            material: (_, __) => MaterialAppRouterData(
              theme: app.themeData(),
              darkTheme: AppTheme.dark().themeData(),
              themeMode: ThemeMode.system,
            ),
            cupertino: (_, __) => CupertinoAppRouterData(
              theme: app.cupertinoThemeData(_),
              color: Palette.accentColor,
            ),
            localizationsDelegates: [
              RefreshLocalizations.delegate,
              DefaultMaterialLocalizations.delegate,
              DefaultWidgetsLocalizations.delegate,
              DefaultCupertinoLocalizations.delegate,
            ],
            routeInformationParser: _router.defaultRouteParser(),
            useInheritedMediaQuery: true,
            routerDelegate: AutoRouterDelegate(
              _router,
              navigatorObservers: () => <NavigatorObserver>[
                // Register the Firebase Analytics observer
                if (env.flavor.name == BuildFlavor.prod)
                  FirebaseAnalyticsObserver(
                      analytics: getIt<FirebaseAnalytics>()),
              ],
            ),
            builder: (context, widget) => Utils.setup(
              context,
              _router,
              ScreenUtilInit(
                designSize: const Size(375, 812),
                builder: () => widget!,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
