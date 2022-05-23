import 'package:auctionvillage/manager/locator/locator.dart';
import 'package:auctionvillage/utils/utils.dart';
import 'package:auctionvillage/widgets/widgets.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/semantics.dart';
import 'package:flutter/services.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';

class AdaptiveToolbar {
  final Key? key;
  final String? title;
  final Widget headline;
  final Widget? leadingIcon;
  final double leadingElevation;
  final double? leadingSplashRadius;
  final EdgeInsets? leadingPadding;
  final TextStyle? titleStyle;
  final bool centerTitle;
  final bool implyLeading;
  final bool? showCupertinoCustomLeading;
  final bool? showMaterialCustomLeading;
  final VoidCallback? leadingAction;
  final double elevation;
  final double? fontSize;
  final FontWeight? fontWeight;
  final double? height;
  final Color? backgroundColor;
  final Color? leadingIconColor;
  final Color? leadingBgColor;
  final List<Widget> actions;
  final String? tooltip;
  final String? semantics;
  final double? leadingWidth;
  final SystemUiOverlayStyle? overlayStyle;
  final WidgetBuilder? builder;
  final Color? materialTitleColor;
  // Cupertino
  final Widget? titleWidget;
  // final Widget? cupertinoLeadingIcon;
  final bool cupertinoImplyLeading;
  final bool implyMiddle;
  final AlignmentGeometry cupertinoLeadingAlignment;
  final Alignment? cupertinoTitleAlignment;
  final Widget? cupertinoLeadingWidget;
  final Color? cupertinoLeadingBackgroundColor;
  final String cupertinoLeading;
  final TextStyle? cupertinoLeadingStyle;
  final String? previousPageTitle;
  final Brightness? brightness;
  final EdgeInsetsDirectional? padding;
  final bool transitionBetweenRoutes;
  // Adaptive
  final MaterialAppBarData Function(MaterialAppBarData)? material;
  final CupertinoNavigationBarData Function(CupertinoNavigationBarData)? cupertino;

  const AdaptiveToolbar({
    this.key,
    this.title,
    this.titleWidget,
    this.headline = const SizedBox.shrink(),
    this.leadingIcon,
    this.leadingElevation = 2,
    this.leadingSplashRadius,
    this.leadingPadding,
    this.titleStyle,
    this.centerTitle = true,
    this.implyLeading = true,
    this.showCupertinoCustomLeading,
    this.showMaterialCustomLeading,
    this.leadingAction,
    this.elevation = 0.0,
    this.fontSize,
    this.fontWeight,
    this.height,
    this.backgroundColor,
    this.leadingIconColor,
    this.leadingBgColor,
    this.actions = const [],
    this.tooltip,
    this.builder,
    this.overlayStyle,
    this.leadingWidth,
    this.semantics,
    this.cupertinoImplyLeading = true,
    this.implyMiddle = false,
    this.materialTitleColor,
    // this.cupertinoLeadingIcon,
    this.cupertinoLeadingWidget,
    this.cupertinoLeading = 'Close',
    this.cupertinoLeadingStyle,
    this.cupertinoLeadingAlignment = Alignment.center,
    this.cupertinoLeadingBackgroundColor,
    this.cupertinoTitleAlignment,
    this.padding,
    this.previousPageTitle,
    this.brightness,
    this.transitionBetweenRoutes = true,
    this.material,
    this.cupertino,
  });

  static AdaptiveToolbar selection({
    int? count,
    String Function(int?)? countBuilder,
    Color? backgroundColor,
    VoidCallback? onBackPressed,
    SystemUiOverlayStyle? overlayStyle,
    Color? leadingIconColor,
    bool? showCupertinoCustomLeading,
    bool? showMaterialCustomLeading,
    Color? materialTitleColor,
    List<Widget> actions = const [],
  }) {
    return AdaptiveToolbar(
      leadingSplashRadius: 20,
      leadingPadding: const EdgeInsets.all(8),
      showCupertinoCustomLeading: showCupertinoCustomLeading,
      showMaterialCustomLeading: showMaterialCustomLeading,
      centerTitle: false,
      implyLeading: false,
      cupertinoImplyLeading: false,
      leadingIconColor: leadingIconColor,
      elevation: 1,
      backgroundColor: backgroundColor ??
          App.resolveColor(
            Palette.neutralF4,
            dark: Palette.cardColorDark,
            context: getIt<AppRouter>().navigatorKey.currentContext,
          ),
      title: App.platform.material(countBuilder?.call(count) ?? '$count selected'),
      materialTitleColor: materialTitleColor,
      implyMiddle: true,
      cupertinoLeading: 'Cancel',
      overlayStyle: overlayStyle,
      leadingAction: onBackPressed,
      actions: actions,
    );
  }

  BuildContext? get _context => getIt<AppRouter>().navigatorKey.currentContext;

  String get _titleText => title ?? '';

  Widget get _title => Visibility(
        visible: !_titleText.isNullOrBlank,
        replacement: headline,
        child: AdaptiveText(
          _titleText,
          style: fontSize != null && fontSize! >= 0.0
              ? TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: fontSize,
                  color: materialTitleColor ?? App.resolveColor(Palette.text100, dark: Palette.headingDark, context: _context),
                ).merge(titleStyle)
              : TextStyle(
                  fontWeight: FontWeight.w600,
                  color: materialTitleColor ?? App.resolveColor(Palette.text100, dark: Palette.headingDark, context: _context),
                ).merge(titleStyle),
          wrapWords: false,
          softWrap: false,
          maxLines: 1,
          maxFontSize: 18,
          overflow: TextOverflow.ellipsis,
        ),
      );

  SystemUiOverlayStyle get systemUIOverlayStyle => overlayStyle ?? App.systemUIOverlayStyle(_context);

  Widget? get _materialLeading => (showMaterialCustomLeading == false)
      ? null
      : Semantics.fromProperties(
          properties: SemanticsProperties(label: tooltip, hint: tooltip, button: true),
          child: Tooltip(
            message: tooltip ?? 'Back',
            child: ClipRRect(
              borderRadius: 100.br,
              child: Material(
                type: leadingBgColor == null ? MaterialType.transparency : MaterialType.button,
                color: leadingBgColor,
                elevation: leadingElevation,
                child: IconButton(
                  icon: leadingIcon ?? Icon(Icons.keyboard_backspace_rounded, color: leadingIconColor),
                  onPressed: leadingAction ?? navigator.pop,
                  splashRadius: leadingSplashRadius ?? 20,
                  padding: leadingPadding ?? const EdgeInsets.all(16),
                  color: leadingIconColor ?? _context?.let((it) => Theme.of(it).scaffoldBackgroundColor.invertLuminance),
                ),
              ),
            ),
          ),
        );

  Widget get _cupertinoLeading => Semantics.fromProperties(
        properties: SemanticsProperties(label: tooltip, hint: tooltip, button: true),
        child: Tooltip(
          message: tooltip ?? 'Close',
          child: leadingIcon ??
              GestureDetector(
                onTap: leadingAction ?? navigator.pop,
                child: CupertinoButton(
                  onPressed: leadingAction ?? navigator.pop,
                  padding: EdgeInsets.zero,
                  alignment: cupertinoLeadingAlignment,
                  color: cupertinoLeadingBackgroundColor,
                  child: cupertinoLeadingWidget ??
                      AdaptiveText(
                        cupertinoLeading,
                        style: cupertinoLeadingStyle ?? TextStyle(color: _cupertinoBackgroundColor.invertLuminance),
                      ),
                ),
              ),
        ),
      );

  Color get _cupertinoBackgroundColor =>
      backgroundColor ??
      App.resolveColor(
        CupertinoColors.lightBackgroundGray.withAlpha(254),
        dark: CupertinoColors.quaternarySystemFill,
        context: _context,
      )!;

  MaterialAppBarData get _materialAppBarData => MaterialAppBarData(
        toolbarHeight: height ?? kToolbarHeight,
        titleTextStyle: titleStyle,
        automaticallyImplyLeading: implyLeading,
        centerTitle: centerTitle,
        systemOverlayStyle: systemUIOverlayStyle,
        elevation: elevation,
        backgroundColor: backgroundColor ?? Colors.transparent,
        actions: actions,
        leading: _materialLeading,
        title: titleWidget ?? _title,
        leadingWidth: leadingWidth,
      );

  CupertinoNavigationBarData get _cupertinoNavigationBarData => CupertinoNavigationBarData(
        backgroundColor: _cupertinoBackgroundColor,
        automaticallyImplyLeading: cupertinoImplyLeading,
        automaticallyImplyMiddle: implyMiddle,
        padding: padding,
        previousPageTitle: previousPageTitle,
        brightness: brightness,
        transitionBetweenRoutes: transitionBetweenRoutes,
        title: !implyMiddle ? (cupertinoTitleAlignment != null ? Align(alignment: cupertinoTitleAlignment!, child: _title) : _title) : null,
        trailing: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.end,
          children: actions,
        ),
        leading: leadingIcon ??
            (cupertinoImplyLeading
                ? null
                : (showCupertinoCustomLeading ?? (_context != null && _context!.watchRouter.canPopSelfOrChildren))
                    ? _cupertinoLeading
                    : null),
      );

  PlatformAppBar build() {
    return PlatformAppBar(
      widgetKey: key,
      automaticallyImplyLeading: implyLeading,
      backgroundColor: backgroundColor,
      trailingActions: actions,
      material: (_, __) => material?.call(_materialAppBarData) ?? _materialAppBarData,
      cupertino: (_, __) => cupertino?.call(_cupertinoNavigationBarData) ?? _cupertinoNavigationBarData,
    );
  }
}

extension MaterialAppBarDataX on MaterialAppBarData {
  MaterialAppBarData copyWith({
    Widget? title,
    Color? backgroundColor,
    Widget? leading,
    Key? widgetKey,
    bool? automaticallyImplyLeading,
    List<Widget>? actions,
    PreferredSizeWidget? bottom,
    double? bottomOpacity,
    bool? centerTitle,
    double? elevation,
    Widget? flexibleSpace,
    IconThemeData? iconTheme,
    bool? primary,
    double? titleSpacing,
    double? toolbarOpacity,
    IconThemeData? actionsIconTheme,
    ShapeBorder? shape,
    bool? excludeHeaderSemantics,
    Color? shadowColor,
    double? toolbarHeight,
    double? leadingWidth,
    Color? foregroundColor,
    SystemUiOverlayStyle? systemOverlayStyle,
    TextStyle? titleTextStyle,
    TextStyle? toolbarTextStyle,
  }) =>
      MaterialAppBarData(
        title: title ?? this.title,
        backgroundColor: backgroundColor ?? this.backgroundColor,
        leading: leading ?? this.leading,
        widgetKey: widgetKey ?? this.widgetKey,
        automaticallyImplyLeading: automaticallyImplyLeading ?? this.automaticallyImplyLeading,
        actions: actions ?? this.actions,
        bottom: bottom ?? this.bottom,
        bottomOpacity: bottomOpacity ?? this.bottomOpacity,
        centerTitle: centerTitle ?? this.centerTitle,
        elevation: elevation ?? this.elevation,
        flexibleSpace: flexibleSpace ?? this.flexibleSpace,
        iconTheme: iconTheme ?? this.iconTheme,
        primary: primary ?? this.primary,
        titleSpacing: titleSpacing ?? this.titleSpacing,
        toolbarOpacity: toolbarOpacity ?? this.toolbarOpacity,
        actionsIconTheme: actionsIconTheme ?? this.actionsIconTheme,
        shape: shape ?? this.shape,
        excludeHeaderSemantics: excludeHeaderSemantics ?? this.excludeHeaderSemantics,
        shadowColor: shadowColor ?? this.shadowColor,
        toolbarHeight: toolbarHeight ?? this.toolbarHeight,
        leadingWidth: leadingWidth ?? this.leadingWidth,
        foregroundColor: foregroundColor ?? this.foregroundColor,
        systemOverlayStyle: systemOverlayStyle ?? this.systemOverlayStyle,
        titleTextStyle: titleTextStyle ?? this.titleTextStyle,
        toolbarTextStyle: toolbarTextStyle ?? this.toolbarTextStyle,
      );
}

extension CupertinoNavigationBarDataX on CupertinoNavigationBarData {
  CupertinoNavigationBarData copyWIth({
    Widget? title,
    Color? backgroundColor,
    Widget? leading,
    Key? widgetKey,
    bool? automaticallyImplyLeading,
    String? previousPageTitle,
    bool? automaticallyImplyMiddle,
    EdgeInsetsDirectional? padding,
    Widget? trailing,
    Border? border,
    bool? transitionBetweenRoutes,
    Brightness? brightness,
    Object? heroTag,
    bool? noMaterialParent,
  }) =>
      CupertinoNavigationBarData(
        title: title ?? this.title,
        backgroundColor: backgroundColor ?? this.backgroundColor,
        leading: leading ?? this.leading,
        widgetKey: widgetKey ?? this.widgetKey,
        automaticallyImplyLeading: automaticallyImplyLeading ?? this.automaticallyImplyLeading,
        previousPageTitle: previousPageTitle ?? this.previousPageTitle,
        automaticallyImplyMiddle: automaticallyImplyMiddle ?? this.automaticallyImplyMiddle,
        padding: padding ?? this.padding,
        trailing: trailing ?? this.trailing,
        border: border ?? this.border,
        transitionBetweenRoutes: transitionBetweenRoutes ?? this.transitionBetweenRoutes,
        brightness: brightness ?? this.brightness,
        heroTag: heroTag ?? this.heroTag,
        noMaterialParent: noMaterialParent ?? this.noMaterialParent,
      );
}
