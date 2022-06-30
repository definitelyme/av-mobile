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
      navigator.replaceAll([const GetStartedRoute()]);
    else {
      _navigateUser(App.context);
    }
  }

  static void _navigateUser(BuildContext c) {
    final option = c.read<AuthWatcherCubit>().state.status;
    final stack = navigator.stack.map((e) => e.name).where((i) => !guestRoutes.contains(i));

    option.fold(
      () {
        if (App.currentRoute != GetStartedRoute.name) navigator.replaceAll([const GetStartedRoute()]);
      },
      (o) {
        if (o != null && App.currentRoute != GetStartedRoute.name) {
          navigator.replaceAll([const GetStartedRoute()]);
        }
        // if (o != null) {
        //   o.fold(
        //     is401: () {
        //       if (App.currentRoute != LoginRoute.name) navigator.replaceAll([LoginRoute()]);
        //     },
        //     orElse: () {
        //       if (App.currentRoute != GetStartedRoute.name) navigator.replaceAll([const GetStartedRoute()]);
        //     },
        //   );
        // }
        else {
          if (stack.isNotEmpty) {
            navigator.popUntil((e) => e.settings.name == stack.last);
          } else {
            if (App.currentRoute != DashboardRoute.name) navigator.replaceAll([const DashboardRoute()]);
          }
        }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return AdaptiveScaffold(
      backgroundColor: Palette.accentColor,
      overlayStyle: App.customSystemOverlay(ctx: context, android: Brightness.light, ios: Brightness.dark),
      body: FutureBuilder(
        future: _memoizer.runOnce(
          () => BlocProvider.of<AuthWatcherCubit>(App.context).subscribeToAuthChanges(
            (either) => either.fold(
              (_) => SplashScreen.navigateIfNotAuthenticated(),
              (option) => option.fold(
                () => SplashScreen.navigateIfNotAuthenticated(),
                (_) {
                  final stack = navigator.stack.map((e) => e.name).where((i) => !guestRoutes.contains(i));

                  if (stack.isNotEmpty) {
                    navigator.popUntil((e) => e.settings.name == stack.last);
                  } else {
                    WidgetsBinding.instance.endOfFrame.then((_) => navigator.replaceAll([const DashboardRoute()]));
                  }
                },
              ),
            ),
          ),
        ),
        builder: (_, snapshot) => Stack(
          children: [
            Center(
              child: ImageBox.asset(
                photo: AppAssets.logo,
                elevation: 0.0,
                width: 0.4.w,
                borderRadius: BorderRadius.zero,
                useDefaultRadius: false,
                fit: BoxFit.contain,
              ),
            ),
            //
            Positioned(
              left: 0.0,
              right: 0.0,
              bottom: 1.h * 0.05,
              child: const Center(child: SpinKitLoader(color: Colors.white)),
            ),
          ],
        ),
      ),
    );
  }
}
