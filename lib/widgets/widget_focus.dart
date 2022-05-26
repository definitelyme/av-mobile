library widget_focus.dart;

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

enum WidgetFocusMode { focus, unfocus }

/// A stateless widget to render WidgetFocus.
class WidgetFocus extends StatelessWidget {
  final Widget child;
  final bool focus;
  final bool hideKeyboard;
  final WidgetFocusMode mode;
  final bool onDrag;
  final bool showKeyboard;
  final bool unfocus;
  final HitTestBehavior? behavior;
  final VoidCallback? onTap;

  const WidgetFocus({
    Key? key,
    this.onDrag = false,
    this.mode = WidgetFocusMode.unfocus,
    required this.child,
    this.hideKeyboard = true,
    this.showKeyboard = true,
    this.unfocus = true,
    this.focus = true,
    this.behavior,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    void _changeFocus() {
      if (mode == WidgetFocusMode.unfocus) {
        if (unfocus) FocusManager.instance.primaryFocus?.unfocus();
        if (hideKeyboard) SystemChannels.textInput.invokeMethod('TextInput.hide');
      } else {
        if (focus) FocusManager.instance.primaryFocus?.requestFocus();
        if (showKeyboard) SystemChannels.textInput.invokeMethod('TextInput.show');
      }
    }

    return GestureDetector(
      behavior: behavior ?? HitTestBehavior.translucent,
      onVerticalDragStart: onDrag ? (_) => _changeFocus() : null,
      onHorizontalDragStart: onDrag ? (_) => _changeFocus() : null,
      onTap: () {
        _changeFocus();
        onTap?.call();
      },
      child: child,
    );
  }
}
