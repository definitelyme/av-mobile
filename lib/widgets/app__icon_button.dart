import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:auctionvillage/utils/utils.dart';
import 'package:auctionvillage/widgets/widgets.dart';

class AppIconButton extends StatelessWidget {
  final double? height;
  final double? width;
  final Color? backgroundColor;
  final Color? cupertinoBackgroundColor;
  final double elevation;
  final Clip clipBehavior;
  final MaterialType type;
  final EdgeInsets? padding;
  final bool disabled;
  final Widget child;
  final String tooltip;
  final Function()? onPressed;
  final Function()? onLongPressed;
  final ShapeBorder? shape;

  // Cupertino
  final Color disabledColor;
  final BorderRadius? borderRadius;
  final AlignmentGeometry alignment;
  final double minSize;
  final double pressedOpacity;
  final ButtonType buttonType;

  AppIconButton({
    Key? key,
    this.height,
    this.width,
    this.backgroundColor,
    this.cupertinoBackgroundColor,
    this.elevation = 2.0,
    this.clipBehavior = Clip.antiAlias,
    this.type = MaterialType.circle,
    this.padding,
    this.tooltip = '',
    this.borderRadius,
    this.disabled = false,
    this.onPressed,
    this.onLongPressed,
    this.shape,
    required this.child,
    this.alignment = Alignment.center,
    this.disabledColor = CupertinoColors.quaternarySystemFill,
    this.minSize = kMinInteractiveDimensionCupertino,
    this.pressedOpacity = 0.4,
  })  : buttonType = disabled && (Platform.isIOS || Platform.isMacOS) ? ButtonType.elevated : ButtonType.flat,
        super(key: key);

  const AppIconButton.filled({
    Key? key,
    this.height,
    this.width,
    this.backgroundColor,
    this.cupertinoBackgroundColor,
    this.elevation = 2.0,
    this.clipBehavior = Clip.antiAlias,
    this.type = MaterialType.circle,
    this.padding,
    this.tooltip = '',
    this.borderRadius,
    this.disabled = false,
    this.onPressed,
    this.onLongPressed,
    this.shape,
    required this.child,
    this.alignment = Alignment.center,
    this.disabledColor = CupertinoColors.quaternarySystemFill,
    this.minSize = kMinInteractiveDimensionCupertino,
    this.pressedOpacity = 0.4,
  })  : buttonType = ButtonType.elevated,
        super(key: key);

  Widget get cupertinoButton => buttonType.fold(
        elevated: () => CupertinoButton.filled(
          key: key,
          alignment: alignment,
          borderRadius: borderRadius,
          pressedOpacity: pressedOpacity,
          minSize: minSize,
          disabledColor: disabledColor,
          padding: padding ?? EdgeInsets.zero,
          onPressed: onPressed,
          child: Center(child: child),
        ),
        flat: () => CupertinoButton(
          key: key,
          alignment: alignment,
          borderRadius: borderRadius,
          pressedOpacity: pressedOpacity,
          color: cupertinoBackgroundColor,
          minSize: minSize,
          disabledColor: disabledColor,
          padding: padding ?? EdgeInsets.zero,
          onPressed: onPressed,
          child: Center(child: child),
        ),
      );

  Widget get materialButton => Align(
        alignment: alignment,
        child: Material(
          color: backgroundColor ?? Palette.accentColor,
          elevation: elevation,
          clipBehavior: clipBehavior,
          borderRadius: type == MaterialType.circle ? null : borderRadius,
          shape: type == MaterialType.circle ? null : shape,
          type: type,
          child: AdaptiveInkWell(
            onTap: onPressed,
            onLongPress: onLongPressed,
            child: Padding(
              padding: padding ?? EdgeInsets.all(0.03.sw),
              child: Center(child: child),
            ),
          ),
        ),
      );

  @override
  Widget build(BuildContext context) {
    return Tooltip(
      message: tooltip,
      child: SizedBox(
        width: width,
        height: height,
        child: PlatformBuilder(
          cupertino: (_) => cupertinoButton,
          material: (_) => materialButton,
        ),
      ),
    );
  }
}
