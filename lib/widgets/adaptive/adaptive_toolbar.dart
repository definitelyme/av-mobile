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
  final IconData? leadingIcon;
  final double leadingElevation;
  final double? leadingSplashRadius;
  final Widget? materialLeading;
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
  final BorderRadius? leadingBorderRadius;
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
  final Color? cupertinoTitleColor;
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
  final MaterialAppBarData Function(MaterialAppBarData)? materialConfig;
  final CupertinoNavigationBarData Function(CupertinoNavigationBarData)? cupertinoConfig;
  final bool material;
  final bool cupertino;
  final Object? heroTag;

  const AdaptiveToolbar({
    this.key,
    this.title,
    this.titleWidget,
    this.headline = const SizedBox.shrink(),
    this.leadingIcon,
    this.leadingElevation = 2,
    this.leadingSplashRadius,
    this.materialLeading,
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
    this.leadingBorderRadius,
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
    this.cupertinoTitleColor,
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
    this.materialConfig,
    this.cupertinoConfig,
    this.material = true,
    this.cupertino = true,
    this.heroTag,
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
            ctx: getIt<AppRouter>().navigatorKey.currentContext,
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

  BuildContext? get _context => navigator.navigatorKey.currentContext;

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
                  color: materialTitleColor ?? App.resolveColor(Palette.text100, dark: Palette.headingDark, ctx: _context),
                ).merge(titleStyle)
              : TextStyle(
                  fontWeight: FontWeight.w600,
                  color: materialTitleColor ?? App.resolveColor(Palette.text100, dark: Palette.headingDark, ctx: _context),
                ).merge(titleStyle),
          wrapWords: false,
          softWrap: false,
          maxLines: 1,
          maxFontSize: 18,
          overflow: TextOverflow.ellipsis,
        ),
      );

  SystemUiOverlayStyle get systemUIOverlayStyle => overlayStyle ?? App.systemUIOverlayStyle(_context);

  String get _tooltip => tooltip ?? Utils.platform_(material: 'Back', cupertino: 'Close')!;

  Widget? get _materialLeading => (showMaterialCustomLeading == true || (_context != null && _context!.watchRouter.canPopSelfOrChildren))
      ? Semantics.fromProperties(
          properties: SemanticsProperties(label: tooltip, hint: tooltip, button: true),
          child: Tooltip(
            message: _tooltip,
            child: materialLeading ??
                Center(
                  child: Ink(
                    width: 40,
                    height: 40,
                    decoration: ShapeDecoration(
                      color: leadingBgColor,
                      shape: RoundedRectangleBorder(borderRadius: leadingBorderRadius ?? 100.br),
                    ),
                    child: IconButton(
                      icon: Icon(leadingIcon ?? Icons.keyboard_backspace_rounded, color: leadingIconColor),
                      onPressed: leadingAction ?? navigator.pop,
                      splashRadius: leadingSplashRadius ?? 20,
                      padding: EdgeInsets.zero,
                      enableFeedback: true,
                    ),
                  ),
                ),
          ),
        )
      : null;

  Widget? get _cupertinoLeading => (showCupertinoCustomLeading == true || (_context != null && _context!.watchRouter.canPopSelfOrChildren))
      ? Semantics.fromProperties(
          properties: SemanticsProperties(label: tooltip, hint: tooltip, button: true),
          child: Tooltip(
            message: _tooltip,
            child: GestureDetector(
              onTap: leadingAction ?? navigator.pop,
              child: CupertinoButton(
                onPressed: leadingAction ?? navigator.pop,
                padding: EdgeInsets.zero,
                alignment: cupertinoLeadingAlignment,
                color: cupertinoLeadingBackgroundColor,
                child: cupertinoLeadingWidget ??
                    AdaptiveText(
                      cupertinoLeading,
                      style: cupertinoLeadingStyle ?? TextStyle(color: cupertinoTitleColor ?? _cupertinoBackgroundColor.invertLuminance),
                    ),
              ),
            ),
          ),
        )
      : null;

  Color get _cupertinoBackgroundColor =>
      backgroundColor ??
      App.resolveColor(
        CupertinoColors.lightBackgroundGray.withAlpha(254),
        dark: CupertinoColors.quaternarySystemFill,
        ctx: _context,
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
        leading: MyHero(tag: heroTag, child: _materialLeading ?? Utils.nothing),
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
        trailing: Row(mainAxisSize: MainAxisSize.min, mainAxisAlignment: MainAxisAlignment.end, children: actions),
        leading: materialLeading ?? (cupertinoImplyLeading ? null : _cupertinoLeading),
      );

  PlatformAppBar? build() {
    if (!material)
      return null;
    else if (!cupertino)
      return null;
    else
      return PlatformAppBar(
        widgetKey: key,
        automaticallyImplyLeading: implyLeading,
        backgroundColor: backgroundColor,
        trailingActions: actions,
        material: (_, __) => materialConfig?.call(_materialAppBarData) ?? _materialAppBarData,
        cupertino: (_, __) => cupertinoConfig?.call(_cupertinoNavigationBarData) ?? _cupertinoNavigationBarData,
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
