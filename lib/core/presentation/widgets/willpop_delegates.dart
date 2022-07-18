// ignore_for_file: library_private_types_in_public_api

library willpop_delegates.dart;

import 'package:auto_route/auto_route.dart';
import 'package:auctionvillage/utils/utils.dart';
import 'package:auctionvillage/widgets/widgets.dart';
import 'package:flutter/material.dart';

mixin _WillPopDelegate {
  Future<bool> maybePop();
}

abstract class DoubleTapToPop implements _WillPopDelegate {
  DateTime _timestampPressed = DateTime.now();

  @override
  Future<bool> maybePop() async {
    final ctx = navigator.navigatorKey.currentContext;

    if (ctx != null && ctx.watchRouter.canPopSelfOrChildren) return Future.value(true);

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
class DoubleTapClose extends StatefulWidget {
  final Widget child;

  const DoubleTapClose({super.key, required this.child});

  @override
  _DoubleTapCloseState createState() => _DoubleTapCloseState();
}

class _DoubleTapCloseState extends State<DoubleTapClose> with DoubleTapToPop {
  @override
  Widget build(BuildContext context) {
    if (!context.watchRouter.canPopSelfOrChildren && !(App.platform.isIOS || App.platform.isMacOS))
      return WillPopScope(onWillPop: maybePop, child: widget.child);
    return widget.child;
  }
}

class ConfirmMaybePop extends StatefulWidget {
  final String? title;
  final double? width;
  final String message;
  final Alignment titleAlignment;
  final String firstButtonText;
  final String secondButtonText;
  final double? firstButtonWidth;
  final double? secondButtonWidth;
  final Widget child;

  const ConfirmMaybePop({
    super.key,
    this.title,
    this.width,
    required this.message,
    required this.child,
    this.titleAlignment = Alignment.center,
    this.firstButtonText = 'YES',
    this.secondButtonText = 'NO',
    this.firstButtonWidth,
    this.secondButtonWidth,
  });

  @override
  State<ConfirmMaybePop> createState() => _ConfirmMaybePopState();
}

class _ConfirmMaybePopState extends State<ConfirmMaybePop> implements _WillPopDelegate {
  @override
  Future<bool> maybePop() async {
    final context = navigator.navigatorKey.currentContext;

    final value = await context?.let(
      (it) => Utils.showAlertDialog(
        context: it,
        builder: (_) => AdaptiveAlertdialog(
          title: widget.title,
          width: widget.width ?? 0.65.w,
          titleAlignment: widget.titleAlignment,
          content: widget.message,
          contentTextAlignment: TextAlign.left,
          isSecondDestructive: false,
          isFirstDestructive: true,
          isSecondDefaultAction: true,
          isFirstDefaultAction: false,
          autoPopFirstButton: false,
          autoPopSecondButton: false,
          firstButtonWidth: widget.firstButtonWidth,
          firstButtonText: widget.firstButtonText,
          onFirstPressed: () => navigator.pop(true),
          secondButtonText: widget.secondButtonText,
          onSecondPressed: () => navigator.pop(false),
        ),
      ),
    );

    return value == null ? false : value as bool;
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(onWillPop: maybePop, child: widget.child);
  }
}
