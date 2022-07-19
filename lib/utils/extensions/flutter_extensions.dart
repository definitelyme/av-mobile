import 'package:auctionvillage/utils/utils.dart';
import 'package:auctionvillage/widgets/widgets.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';

extension InputDecorationX on InputDecoration {
  InputDecoration merge(InputDecoration? other) {
    return copyWith(
      hintText: other?.hintText ?? hintText,
      hintStyle: other?.hintStyle ?? hintStyle,
      labelStyle: other?.labelStyle ?? labelStyle,
      labelText: other?.labelText ?? labelText,
      border: other?.border ?? border,
      filled: other?.filled ?? filled,
      fillColor: other?.fillColor ?? fillColor,
      contentPadding: other?.contentPadding ?? contentPadding,
      focusColor: other?.focusColor ?? focusColor,
      focusedBorder: other?.focusedBorder ?? focusedBorder,
      prefixIcon: other?.prefixIcon ?? prefixIcon,
      suffixIcon: other?.suffixIcon ?? suffixIcon,
      enabled: other?.enabled ?? enabled,
      hoverColor: other?.hoverColor ?? hoverColor,
      errorBorder: other?.errorBorder ?? errorBorder,
      errorStyle: other?.errorStyle ?? errorStyle,
      errorText: other?.errorText ?? errorText,
      errorMaxLines: other?.errorMaxLines ?? errorMaxLines,
      isDense: other?.isDense ?? isDense,
      helperStyle: other?.helperStyle ?? helperStyle,
      helperText: other?.helperText ?? helperText,
      helperMaxLines: other?.helperMaxLines ?? helperMaxLines,
      enabledBorder: other?.enabledBorder ?? enabledBorder,
      focusedErrorBorder: other?.focusedErrorBorder ?? focusedErrorBorder,
      disabledBorder: other?.disabledBorder ?? disabledBorder,
      alignLabelWithHint: other?.alignLabelWithHint ?? alignLabelWithHint,
      floatingLabelBehavior: other?.floatingLabelBehavior ?? floatingLabelBehavior,
      floatingLabelStyle: other?.floatingLabelStyle ?? floatingLabelStyle,
      floatingLabelAlignment: other?.floatingLabelAlignment ?? floatingLabelAlignment,
      prefixIconConstraints: other?.prefixIconConstraints ?? prefixIconConstraints,
      suffixIconConstraints: other?.suffixIconConstraints ?? suffixIconConstraints,
      prefixIconColor: other?.prefixIconColor ?? prefixIconColor,
      suffixIconColor: other?.suffixIconColor ?? suffixIconColor,
      prefixText: other?.prefixText ?? prefixText,
      suffixText: other?.suffixText ?? suffixText,
      semanticCounterText: other?.semanticCounterText ?? semanticCounterText,
      counter: other?.counter ?? counter,
      counterText: other?.counterText ?? counterText,
      counterStyle: other?.counterStyle ?? counterStyle,
      hintMaxLines: other?.hintMaxLines ?? hintMaxLines,
      hintTextDirection: other?.hintTextDirection ?? hintTextDirection,
      icon: other?.icon ?? icon,
      iconColor: other?.iconColor ?? iconColor,
      prefix: other?.prefix ?? prefix,
      suffix: other?.suffix ?? suffix,
      prefixStyle: other?.prefixStyle ?? prefixStyle,
      suffixStyle: other?.suffixStyle ?? suffixStyle,
      label: other?.label ?? label,
      constraints: other?.constraints ?? constraints,
      isCollapsed: other?.isCollapsed ?? isCollapsed,
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
  InputDecoration merge([InputDecoration? decoration]) {
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

  InputDecoration decoration({
    TextStyle? labelStyle,
    TextStyle? hintStyle,
    TextStyle? helperStyle,
    TextStyle? errorStyle,
    int? errorMaxLines,
    bool? isDense,
    EdgeInsetsGeometry? contentPadding,
    bool? isCollapsed,
    TextStyle? prefixStyle,
    TextStyle? suffixStyle,
    TextStyle? counterStyle,
    bool? filled,
    Color? fillColor,
    InputBorder? errorBorder,
    InputBorder? focusedBorder,
    InputBorder? focusedErrorBorder,
    InputBorder? disabledBorder,
    InputBorder? enabledBorder,
    InputBorder? border,
    bool? alignLabelWithHint,
    BoxConstraints? constraints,
    int? helperMaxLines,
    FloatingLabelBehavior? floatingLabelBehavior,
    TextStyle? floatingLabelStyle,
    Color? focusColor,
    Color? hoverColor,
    String? labelText,
    Widget? label,
    String? errorText,
    FloatingLabelAlignment? floatingLabelAlignment,
    String? helperText,
    String? counterText,
    Widget? counter,
    bool enabled = true,
    Widget? prefixIcon,
    Widget? suffixIcon,
    Color? prefixIconColor,
    Color? suffixIconColor,
    Widget? prefix,
    Widget? suffix,
    String? prefixText,
    String? suffixText,
    String? hintText,
    TextDirection? hintTextDirection,
    Widget? icon,
    int? hintMaxLines,
    BoxConstraints? prefixIconConstraints,
    BoxConstraints? suffixIconConstraints,
    String? semanticCounterText,
  }) {
    return InputDecoration(
      labelStyle: labelStyle ?? this.labelStyle,
      hintStyle: hintStyle ?? this.hintStyle,
      helperStyle: helperStyle ?? this.helperStyle,
      errorStyle: errorStyle ?? this.errorStyle,
      errorMaxLines: errorMaxLines ?? this.errorMaxLines,
      isDense: isDense ?? this.isDense,
      contentPadding: contentPadding ?? this.contentPadding,
      isCollapsed: isCollapsed ?? this.isCollapsed,
      prefixStyle: prefixStyle ?? this.prefixStyle,
      suffixStyle: suffixStyle ?? this.suffixStyle,
      counterStyle: counterStyle ?? this.counterStyle,
      filled: filled ?? this.filled,
      fillColor: fillColor ?? this.fillColor,
      errorBorder: errorBorder ?? this.errorBorder,
      focusedBorder: focusedBorder ?? this.focusedBorder,
      focusedErrorBorder: focusedErrorBorder ?? this.focusedErrorBorder,
      disabledBorder: disabledBorder ?? this.disabledBorder,
      enabledBorder: enabledBorder ?? this.enabledBorder,
      border: border ?? this.border,
      alignLabelWithHint: alignLabelWithHint ?? this.alignLabelWithHint,
      constraints: constraints ?? this.constraints,
      helperMaxLines: helperMaxLines ?? this.helperMaxLines,
      floatingLabelBehavior: floatingLabelBehavior ?? this.floatingLabelBehavior,
      floatingLabelStyle: floatingLabelStyle ?? this.floatingLabelStyle,
      focusColor: focusColor ?? this.focusColor,
      hoverColor: hoverColor ?? this.hoverColor,
      labelText: labelText,
      label: label,
      errorText: errorText,
      floatingLabelAlignment: floatingLabelAlignment ?? this.floatingLabelAlignment,
      helperText: helperText,
      counterText: counterText,
      counter: counter,
      enabled: enabled,
      prefix: prefix,
      suffix: suffix,
      prefixIcon: prefixIcon,
      suffixIcon: suffixIcon,
      prefixIconColor: prefixIconColor ?? this.prefixIconColor,
      suffixIconColor: suffixIconColor ?? this.suffixIconColor,
      prefixText: prefixText,
      suffixText: suffixText,
      hintText: hintText,
      hintMaxLines: hintMaxLines,
      hintTextDirection: hintTextDirection,
      icon: icon,
      iconColor: iconColor,
      prefixIconConstraints: prefixIconConstraints,
      suffixIconConstraints: suffixIconConstraints,
      semanticCounterText: semanticCounterText,
    );
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

extension WidgetExtensionsX on Widget {
  Widget get safeTop => SafeArea(bottom: false, left: false, right: false, child: this);

  Widget get sliverSafeTop => SliverSafeArea(bottom: false, left: false, right: false, sliver: this);

  Widget get safeBottom => SafeArea(top: false, left: false, right: false, child: this);

  Widget get sliverSafeBottom => SliverSafeArea(top: false, left: false, right: false, sliver: this);

  Widget get safeLeft => SafeArea(top: false, bottom: false, right: false, child: this);

  Widget get sliverSafeLeft => SliverSafeArea(top: false, bottom: false, right: false, sliver: this);

  Widget get safeRight => SafeArea(top: false, bottom: false, left: false, child: this);

  Widget get sliverSafeRight => SliverSafeArea(top: false, bottom: false, left: false, sliver: this);

  Widget get safeTopLeft => SafeArea(bottom: false, right: false, child: this);

  Widget get safeTopRight => SafeArea(bottom: false, left: false, child: this);

  Widget get safeBottomLeft => SafeArea(top: false, right: false, child: this);

  Widget get safeBottomRight => SafeArea(top: false, left: false, child: this);

  Widget get safeAll => SafeArea(child: this);

  Widget get sliverSafeAll => SliverSafeArea(sliver: this);

  Widget padding(EdgeInsets? padding, {bool pad = true}) => pad && padding != null ? Padding(padding: padding, child: this) : this;
}

extension InverseColorX on Color {
  Brightness get brightness {
    final relativeLuminance = computeLuminance();

    // See <https://www.w3.org/TR/WCAG20/#contrast-ratiodef>
    // The spec says to use kThreshold=0.0525, but Material Design appears to bias
    // more towards using light text than WCAG20 recommends. Material Design spec
    // doesn't say what value to use, but 0.15 seemed close to what the Material
    // Design spec shows for its color palette on
    // <https://material.io/go/design-theming#color-color-palette>.
    const kThreshold = 0.15;
    if ((relativeLuminance + 0.05) * (relativeLuminance + 0.05) > kThreshold) return Brightness.light;
    return Brightness.dark;
  }

  Color get invertLuminance => computeLuminance() > 0.5 ? Colors.black : Colors.white;
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

BlocProvider blocProviderMaybeOf<T extends StateStreamableSource<Object?>>(
  BuildContext context, {
  Widget? child,
  bool lazy = true,
  bool listen = false,
  required T Function() orElse,
}) {
  try {
    final bloc = Provider.of<T>(context, listen: listen);
    return BlocProvider.value(value: bloc, child: child);
  } on ProviderNotFoundException catch (_) {
    return BlocProvider(create: (_) => orElse(), lazy: lazy, child: child);
  }
}

/// Asserts that the given context has a `T` ancestor.
///
/// Used by various widgets to make sure that they are only used in an
/// appropriate context.
///
/// To invoke this function, use the following pattern, typically in the
/// relevant Widget's build method:
///
/// ```dart
/// assert(hasAncestor<T, R>(context));
/// ```
/// OR
///
/// ```dart
/// if (hasAncestor<T, R>(context)) {
///  // ...
/// }
/// ```
///
/// Does nothing if asserts are disabled. Always returns true.
bool hasAncestor<T extends InheritedWidget, R>(BuildContext context, {bool failfast = false}) {
  if (failfast)
    assert(() {
      if (context.widget is! T && context.getElementForInheritedWidgetOfExactType<T>() == null) {
        throw FlutterError.fromParts(<DiagnosticsNode>[
          ErrorSummary('No $T widget ancestor found.'),
          ErrorDescription('${context.widget.runtimeType} widgets require a $T widget ancestor.'),
          context.describeWidget('The specific widget that could not find a $T ancestor was'),
          context.describeOwnershipChain('The ownership chain for the affected widget is'),
          ErrorHint(
            'No $T ancestor could be found starting from the context '
            'that was passed to $T.of(). This can happen because you '
            'have not added a $R widget, which introduce a $T, or it can happen if the '
            'context you use comes from a widget above the $R widget.',
          ),
        ]);
      }
      return true;
    }());
  else if (!failfast && (context.widget is! T && context.getElementForInheritedWidgetOfExactType<T>() == null)) return false;
  return true;
}
