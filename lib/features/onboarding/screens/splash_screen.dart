library splash_screen.dart;

import 'package:async/async.dart';
import 'package:auctionvillage/features/auth/presentation/managers/managers.dart';
import 'package:auctionvillage/utils/utils.dart';
import 'package:auctionvillage/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

/// A stateless widget to render SplashScreen.
class SplashScreen extends StatelessWidget {
  SplashScreen({Key? key}) : super(key: key);

  final AsyncMemoizer<dynamic> _memoizer = AsyncMemoizer();

  static void navigateIfNotAuthenticated() {
    if (navigator.current.name == DashboardRoute.name)
      navigator.replaceAll([const LoginRoute()]);
    else {
      _navigateUser(App.context);
    }
  }

  static void _navigateUser(BuildContext c) {
    final option = c.read<AuthWatcherCubit>().state.status;
    final _authRoutes = [LoginRoute.name, SignupRoute.name, ForgotPasswordRoute.name, PasswordResetRoute.name];

    option.fold(
      () => null,
      (o) {
        if (o != null) {
          if (!_authRoutes.contains(App.currentRoute)) navigator.replaceAll([const LoginRoute()]);
        } else {
          if (App.currentRoute != DashboardRoute.name) navigator.replaceAll([const DashboardRoute()]);
        }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return AdaptiveScaffold(
      backgroundColor: Palette.accentColor,
      overlayStyle: App.customSystemOverlay(ctx: context, android: Brightness.light, ios: Brightness.dark),
      body: Center(
        child: FutureBuilder(
          future: _memoizer.runOnce(
            () => Future.delayed(
              env.splashDuration,
              () async {
                await BlocProvider.of<AuthWatcherCubit>(App.context).subscribeToAuthChanges(
                  (either) => either.fold(
                    (_) => SplashScreen.navigateIfNotAuthenticated(),
                    (option) {
                      WidgetsBinding.instance.addPostFrameCallback(
                        (_) async => await Future.delayed(
                          env.greetingDuration,
                          () {
                            if (App.currentRoute != DashboardRoute.name) {
                              navigator.replaceAll([const DashboardRoute()]);
                              // "email": "jamesjay@forx.anonaddy.com",
                              // "email": "brendan.me@gmail.com",
                            }
                          },
                        ),
                      );
                    },
                  ),
                );
              },
            ),
          ),
          builder: (_, snapshot) => ImageBox.asset(
            photo: AppAssets.logo,
            elevation: 0.0,
            width: 0.4.w,
            borderRadius: BorderRadius.zero,
            useDefaultRadius: false,
            fit: BoxFit.contain,
          ),
        ),
      ),
    );
  }
}
