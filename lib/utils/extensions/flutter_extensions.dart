import 'package:auctionvillage/utils/extensions/num_extension.dart';
import 'package:auctionvillage/widgets/widgets.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';

extension InputDecorationX on InputDecoration {
  InputDecoration merge(InputDecoration? other) {
    return copyWith(
      hintText: other?.hintText,
      hintStyle: other?.hintStyle,
      labelStyle: other?.labelStyle,
      labelText: other?.labelText,
      border: other?.border,
      filled: other?.filled,
      fillColor: other?.fillColor,
      contentPadding: other?.contentPadding,
      focusColor: other?.focusColor,
      focusedBorder: other?.focusedBorder,
      prefixIcon: other?.prefixIcon,
      suffixIcon: other?.suffixIcon,
      enabled: other?.enabled,
      hoverColor: other?.hoverColor,
    );
  }
}

extension EdgeInsetsGeometryX on EdgeInsets {
  EdgeInsetsGeometry merge(EdgeInsets? insets) {
    return copyWith(
      left: insets?.left != null && insets?.left != 0.0 ? insets?.left : left,
      right: insets?.right != null && insets?.right != 0.0 ? insets?.right : right,
      bottom: insets?.bottom != null && insets?.bottom != 0.0 ? insets?.bottom : bottom,
      top: insets?.top != null && insets?.top != 0.0 ? insets?.top : top,
    );
  }
}

extension InputDecorationThemeX on InputDecorationTheme {
  InputDecoration decor([InputDecoration? decoration]) {
    return InputDecoration(
      labelStyle: labelStyle,
      hintStyle: hintStyle,
      helperStyle: helperStyle,
      errorStyle: errorStyle,
      errorMaxLines: errorMaxLines,
      isDense: isDense,
      contentPadding: contentPadding,
      isCollapsed: isCollapsed,
      prefixStyle: prefixStyle,
      suffixStyle: suffixStyle,
      counterStyle: counterStyle,
      filled: filled,
      fillColor: fillColor,
      errorBorder: errorBorder,
      focusedBorder: focusedBorder,
      focusedErrorBorder: focusedErrorBorder,
      disabledBorder: disabledBorder,
      enabledBorder: enabledBorder,
      border: border,
      alignLabelWithHint: alignLabelWithHint,
      constraints: constraints,
      helperMaxLines: helperMaxLines,
      floatingLabelBehavior: floatingLabelBehavior,
      floatingLabelStyle: floatingLabelStyle,
      focusColor: focusColor,
      hoverColor: hoverColor,
    ).merge(decoration);
  }
}

extension WidgetGap on num {
  Widget get vertical => VerticalSpace(height: toDouble());

  Widget get verticalh => VerticalSpace(height: toDouble().h);

  Widget get horizontal => HorizontalSpace(width: toDouble());

  Widget get horizontalw => HorizontalSpace(width: toDouble().w);
}

extension BorderRadiusX on num {
  BorderRadius get br => BorderRadius.circular(toDouble());
}

extension TargetPlatformX on TargetPlatform {
  bool get isAndroid => this == TargetPlatform.android;

  bool get isIOS => this == TargetPlatform.iOS;

  bool get isFuchsia => this == TargetPlatform.fuchsia;

  bool get isDesktop => this == TargetPlatform.windows || this == TargetPlatform.linux || this == TargetPlatform.macOS;

  bool get isWeb => kIsWeb;

  bool get isLinux => this == TargetPlatform.linux;

  bool get isMacOS => this == TargetPlatform.macOS;
}

/// Method that allows widgets to access a [Bloc] or [Cubit] instance
/// as long as their `BuildContext` contains a [BlocProvider] instance.
///
/// If we want to access an instance of `BlocA` which was provided higher up
/// in the widget tree we can do so via:
///
/// ```dart
/// blocMaybeOf<BlocA>(context);
/// ```
T blocMaybeOf<T extends StateStreamableSource<Object?>>(
  BuildContext context, {
  bool listen = false,
  required T Function() orElse,
}) {
  try {
    return Provider.of<T>(context, listen: listen);
  } on ProviderNotFoundException catch (_) {
    return orElse();
  }
}

extension MapX on Map<dynamic, dynamic> {
  Map<String, dynamic> _convertMap(Map<dynamic, dynamic> map) {
    for (var key in map.keys) {
      if (map[key] is Map) {
        map[key] = _convertMap(map[key] as Map<dynamic, dynamic>);
      } else if (map[key] is List<dynamic> || map[key] is List<Object?>) {
        map[key] = map[key]
            .map((e) => Map.fromEntries((e as Map<dynamic, dynamic>).entries.map((entry) => MapEntry('${entry.key}', entry.value))))
            .toList();
      }
    }
    return Map.fromEntries(map.entries.map((entry) => MapEntry(entry.key.toString(), entry.value)));
  }

  Map<String, dynamic> get mapToStringDynamic => _convertMap(this);
}
