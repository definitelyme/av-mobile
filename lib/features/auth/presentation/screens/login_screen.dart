library login_screen.dart;

import 'package:auctionvillage/features/auth/presentation/widgets/login_layout.dart';
import 'package:auctionvillage/utils/utils.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

/// A stateless widget to render LoginScreen.
class LoginScreen extends StatefulWidget {
  final Object? btnHeroTag;

  const LoginScreen({Key? key, this.btnHeroTag}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> with AutomaticKeepAliveClientMixin<LoginScreen> {
  DateTime _timestampPressed = DateTime.now();

  @override
  bool get wantKeepAlive => true;

  Future<bool> maybePop() async {
    if (context.watchRouter.canPopSelfOrChildren) return Future.value(true);

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

  Iterable<String?> routeStack = navigator.stack.map((e) => e.name).where((i) => !guestRoutes.contains(i));

  @override
  Widget build(BuildContext context) {
    super.build(context);

    if (routeStack.isNotEmpty) return LoginLayout(btnHeroTag: widget.btnHeroTag);

    return WillPopScope(
      onWillPop: maybePop,
      child: LoginLayout(btnHeroTag: widget.btnHeroTag),
    );
  }
}
