library dismissible_screen.dart;

import 'package:dismissible_page/dismissible_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:auctionvillage/utils/utils.dart';
import 'package:auctionvillage/widgets/widgets.dart';

part 'reactive_dismissible_screen.dart';

enum DismissibleDirection {
  /// The [DismissiblePageDirection] can be dismissed by dragging either up or down.
  vertical,

  /// The [DismissiblePageDirection] can be dismissed by dragging either left or right.
  horizontal,

  /// The [DismissiblePageDirection] can be dismissed by dragging in the reverse of the
  /// reading direction (e.g., from right to left in left-to-right languages).
  endToStart,

  /// The [DismissiblePageDirection] can be dismissed by dragging in the reading direction
  /// (e.g., from left to right in left-to-right languages).
  startToEnd,

  /// The [DismissiblePageDirection] can be dismissed by dragging up only.
  up,

  /// The [DismissiblePageDirection] can be dismissed by dragging down only.
  down,

  /// The [DismissiblePageDirection] can be dismissed by dragging any direction.
  multi,

  /// The [DismissiblePageDirection] cannot be dismissed by dragging.
  none
}

/// A stateless widget to render DismissibleScreen.
class DismissibleScreen extends StatefulWidget {
  final AdaptiveToolbar? appBar;
  final Color? backgroundColor;
  final Widget child;
  final bool fullscreen;
  final Object? heroTag;
  final VoidCallback? initState;
  final double? maxTransformValue;
  final VoidCallback? onDismissed;
  final String previousRouteName;
  final double? startingOpacity;
  final bool? handlePop;
  final bool extendBodyBehindAppBar;
  final bool iosContentBottomPadding;
  final bool iosContentPadding;
  final DismissibleDirection dismissDirection;
  final List<Widget> actions;

  const DismissibleScreen({
    Key? key,
    required this.child,
    required this.previousRouteName,
    this.fullscreen = true,
    this.heroTag,
    this.backgroundColor,
    this.initState,
    this.startingOpacity,
    this.maxTransformValue,
    this.onDismissed,
    this.appBar,
    this.handlePop,
    this.extendBodyBehindAppBar = true,
    this.iosContentBottomPadding = false,
    this.iosContentPadding = false,
    this.dismissDirection = DismissibleDirection.vertical,
    this.actions = const [],
  }) : super(key: key);

  @override
  State<DismissibleScreen> createState() => _DismissibleScreenState();

  static Future<dynamic> navigate(
    BuildContext context, {
    required Widget child,
    required String previousRouteName,
    Widget Function(Widget, String)? screen,
    Object? heroTag,
    bool fullscreen = true,
    bool useRootNavigator = false,
    Color? backgroundColor,
    Duration transitionDuration = const Duration(milliseconds: 250),
    Duration reverseTransitionDuration = const Duration(milliseconds: 250),
    VoidCallback? initState,
    double? startingOpacity,
    double? maxTransformValue,
    VoidCallback? onDismissed,
    AdaptiveToolbar? appBar,
    bool? handlePop,
    bool extendBodyBehindAppBar = true,
    bool iosContentBottomPadding = false,
    bool iosContentPadding = false,
    DismissibleDirection dismissDirection = DismissibleDirection.vertical,
    List<Widget> actions = const [],
  }) {
    return context.pushTransparentRoute(
      screen?.call(child, previousRouteName) ??
          DismissibleScreen(
            previousRouteName: previousRouteName,
            fullscreen: fullscreen,
            heroTag: heroTag,
            backgroundColor: backgroundColor,
            initState: initState,
            startingOpacity: startingOpacity,
            maxTransformValue: maxTransformValue,
            onDismissed: onDismissed,
            appBar: appBar,
            handlePop: handlePop,
            extendBodyBehindAppBar: extendBodyBehindAppBar,
            iosContentBottomPadding: iosContentBottomPadding,
            iosContentPadding: iosContentPadding,
            dismissDirection: dismissDirection,
            actions: actions,
            child: child,
          ),
      rootNavigator: useRootNavigator,
      backgroundColor: Colors.black38,
      transitionDuration: transitionDuration,
      reverseTransitionDuration: reverseTransitionDuration,
    );
  }
}

class _DismissibleScreenState extends State<DismissibleScreen> {
  @override
  void didChangeDependencies() {
    widget.initState?.call();
    super.didChangeDependencies();
  }

  Color get _backgroundColor => widget.backgroundColor ?? Colors.black;
  double get _maxTransformValue => widget.maxTransformValue ?? 0.3;
  double get _startingOpacity => widget.startingOpacity ?? 1;
  AdaptiveToolbar get _toolbar => AdaptiveToolbar(
        overlayStyle: App.customSystemOverlay(ctx: context, ios: Brightness.light, android: Brightness.light),
        material: (data) => data.copyWith(),
        leadingIconColor: _backgroundColor.invertLuminance,
        actions: widget.actions,
        backgroundColor: App.platform.cupertino(CupertinoColors.quaternarySystemFill),
      );

  Future<bool> _onWillPop([bool isWillPop = true]) async {
    widget.onDismissed?.call();
    if (!isWillPop) navigator.popUntilRouteWithName(widget.previousRouteName);
    return true;
  }

  bool get autopop => widget.handlePop ?? true;

  @override
  Widget build(BuildContext context) {
    return _ConditionalWillPopScope(
      autopop,
      onWillPop: _onWillPop,
      child: AdaptiveScaffold(
        adaptiveToolbar: widget.appBar ?? _toolbar,
        iosContentBottomPadding: widget.iosContentBottomPadding,
        iosContentPadding: widget.iosContentPadding,
        material: (data) => data.copyWith(extendBodyBehindAppBar: widget.extendBodyBehindAppBar),
        backgroundColor: Colors.transparent,
        overlayStyle: App.customSystemOverlay(ctx: context, ios: Brightness.dark, android: Brightness.light),
        body: DismissiblePage(
          direction: widget.dismissDirection.direction,
          onDismissed: autopop ? () => _onWillPop(false) : () {},
          backgroundColor: _backgroundColor,
          isFullScreen: widget.fullscreen,
          startingOpacity: _startingOpacity,
          maxTransformValue: _maxTransformValue,
          dismissThresholds: {DismissiblePageDismissDirection.vertical: 0.3},
          child: SafeArea(
            top: Utils.platform_(material: false) ?? true,
            left: false,
            right: false,
            child: Center(
              child: ConstrainedBox(
                constraints: BoxConstraints(
                  maxHeight: MediaQuery.of(context).size.height,
                  maxWidth: MediaQuery.of(context).size.width,
                ),
                child: widget.heroTag == null ? widget.child : MyHero(tag: widget.heroTag, child: widget.child),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class _ConditionalWillPopScope extends StatelessWidget {
  final bool withWillPopScope;
  final Future<bool> Function()? onWillPop;
  final Widget child;

  const _ConditionalWillPopScope(this.withWillPopScope, {Key? key, this.onWillPop, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return withWillPopScope ? WillPopScope(onWillPop: onWillPop, child: child) : child;
  }
}

extension on DismissibleDirection {
  DismissiblePageDismissDirection get direction {
    switch (this) {
      case DismissibleDirection.vertical:
        return DismissiblePageDismissDirection.vertical;
      case DismissibleDirection.horizontal:
        return DismissiblePageDismissDirection.horizontal;
      case DismissibleDirection.endToStart:
        return DismissiblePageDismissDirection.endToStart;
      case DismissibleDirection.startToEnd:
        return DismissiblePageDismissDirection.startToEnd;
      case DismissibleDirection.up:
        return DismissiblePageDismissDirection.up;
      case DismissibleDirection.down:
        return DismissiblePageDismissDirection.down;
      case DismissibleDirection.multi:
        return DismissiblePageDismissDirection.multi;
      case DismissibleDirection.none:
        return DismissiblePageDismissDirection.none;
    }
  }
}
