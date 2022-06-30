library backtap_delegate.dart;

import 'package:auto_route/auto_route.dart';
import 'package:auctionvillage/utils/utils.dart';
import 'package:flutter/material.dart';

mixin DoubleTapToPopDelegate on StatefulWidget {}

mixin DoubleTapToPopState<S extends DoubleTapToPopDelegate> on State<S> {
  DateTime _timestampPressed = DateTime.now();

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
}

/// A stateful widget to render DoubleTapClose.
class DoubleTapClose extends StatefulWidget with DoubleTapToPopDelegate {
  final Widget child;

  const DoubleTapClose({super.key, required this.child});

  @override
  DoubleTapCloseState createState() => DoubleTapCloseState();
}

class DoubleTapCloseState extends State<DoubleTapClose>
    with AutomaticKeepAliveClientMixin<DoubleTapClose>, DoubleTapToPopState<DoubleTapClose> {
  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    super.build(context);

    return context.watchRouter.canPopSelfOrChildren ? widget.child : WillPopScope(onWillPop: maybePop, child: widget.child);
  }
}
