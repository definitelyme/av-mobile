import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';
import 'package:auctionvillage/manager/theme/theme.dart';
import 'package:auctionvillage/utils/utils.dart';
import 'package:auctionvillage/widgets/widgets.dart';

/// A stateless widget to render AdaptiveAlertdialog.
// ignore: must_be_immutable
class AdaptiveAlertdialog<B extends Object?> extends StatelessWidget {
  final double _width;

  final double? maxHeight;
  final Future<B> Function()? onFirstPressedFuture;
  final B Function()? onFirstPressed;
  final Future<B> Function()? onSecondPressedFuture;
  final B Function()? onSecondPressed;
  final List<Widget>? body;
  final Axis buttonDirection;
  final String? content;
  final MainAxisAlignment contentMainAxisAlignment;
  final CrossAxisAlignment contentCrossAxisAlignment;
  final double? contentFontSize;
  final EdgeInsets? contentPadding;
  final TextAlign contentTextAlignment;
  final TextStyle? contentTextStyle;
  final Widget? cupertinoFirstButton;
  final String? cupertinoFirstButtonText;
  final Widget? cupertinoSecondButton;
  final String cupertinoSecondButtonText;
  final B? defaultValue;
  final bool hideSecondButton;
  final bool firstButtonIsLoading;
  final bool secondButtonIsLoading;
  final bool firstButtonDisabled;
  final bool secondButtonDisabled;
  final Color? firstBgColor;
  final double? firstButtonWidth;
  final double? firstButtonHeight;
  final String? firstButtonText;
  final Color? firstSplashColor;
  final TextStyle? firstTextStyle;
  final bool isFirstDefaultAction;
  final bool isFirstDestructive;
  final bool isSecondDefaultAction;
  final bool isSecondDestructive;
  final double materialButtonHorizontalGap;
  final double materialButtonVerticalGap;
  final Widget? materialFirstButton;
  final Widget? materialSecondButton;
  final double minContentFontSize;
  final Color? secondBgColor;
  final double? secondButtonWidth;
  final double? secondButtonHeight;
  final String secondButtonText;
  final Color? secondSplashColor;
  final TextStyle? secondTextStyle;
  final String? title;
  final Alignment titleAlignment;
  final double? titleHeight;
  final EdgeInsetsGeometry? titlePadding;
  final TextAlign titleTextAlignment;
  final TextStyle? titleTextStyle;
  final Widget? titleWidget;
  final bool material;
  final EdgeInsets? materialActionsPadding;
  final bool autoPopFirstButton;
  final bool autoPopSecondButton;

  AdaptiveAlertdialog({
    Key? key,
    double? width,
    this.maxHeight,
    this.title,
    this.titleHeight,
    this.titleWidget,
    this.titlePadding,
    this.titleAlignment = Alignment.center,
    this.titleTextAlignment = TextAlign.center,
    this.contentMainAxisAlignment = MainAxisAlignment.start,
    this.contentCrossAxisAlignment = CrossAxisAlignment.center,
    this.contentTextAlignment = TextAlign.center,
    this.titleTextStyle,
    this.body,
    this.content,
    this.contentPadding,
    this.contentTextStyle,
    this.contentFontSize,
    this.minContentFontSize = 14,
    this.firstButtonText,
    this.firstButtonWidth,
    this.firstButtonHeight,
    this.defaultValue,
    this.secondButtonText = 'Close',
    this.secondButtonWidth,
    this.secondButtonHeight,
    this.hideSecondButton = false,
    String? cupertinoFirstButtonText,
    String? cupertinoSecondButtonText,
    this.onFirstPressed,
    this.onFirstPressedFuture,
    this.onSecondPressed,
    this.onSecondPressedFuture,
    this.firstBgColor,
    this.secondBgColor,
    this.firstSplashColor,
    this.secondSplashColor,
    this.firstTextStyle,
    this.secondTextStyle,
    this.isFirstDefaultAction = false,
    this.isSecondDefaultAction = false,
    this.isFirstDestructive = true,
    this.isSecondDestructive = false,
    this.buttonDirection = Axis.vertical,
    this.materialFirstButton,
    this.materialSecondButton,
    this.cupertinoFirstButton,
    this.cupertinoSecondButton,
    double? materialButtonVerticalGap,
    double? materialButtonHorizontalGap,
    this.material = false,
    this.materialActionsPadding,
    this.autoPopFirstButton = true,
    this.autoPopSecondButton = true,
    this.firstButtonIsLoading = false,
    this.secondButtonIsLoading = false,
    this.firstButtonDisabled = false,
    this.secondButtonDisabled = false,
  })  : assert((onFirstPressed == null && onFirstPressedFuture != null) ||
            (onFirstPressed != null && onFirstPressedFuture == null) ||
            (onFirstPressed == null && onFirstPressedFuture == null)),
        assert((onSecondPressed == null && onSecondPressedFuture != null) ||
            (onSecondPressed != null && onSecondPressedFuture == null) ||
            (onSecondPressed == null && onSecondPressedFuture == null)),
        _width = width ?? 0.63.sw,
        cupertinoFirstButtonText = cupertinoFirstButtonText ?? firstButtonText,
        cupertinoSecondButtonText = cupertinoSecondButtonText ?? secondButtonText,
        assert((isFirstDestructive && !isSecondDestructive) ||
            (!isFirstDestructive && isSecondDestructive) ||
            (!isFirstDestructive && !isSecondDestructive)),
        materialButtonVerticalGap = materialButtonVerticalGap ?? 0.015.h,
        materialButtonHorizontalGap = materialButtonHorizontalGap ?? 0.03.w,
        super(key: key);

  Widget get _title => SizedBox(
        width: _width,
        height: _titleHeight,
        child: Material(
          type: MaterialType.transparency,
          textStyle: titleTextStyle,
          child: Align(
            alignment: titleAlignment,
            child: title?.let(
                  (it) => AdaptiveText(
                    '$it',
                    softWrap: true,
                    maxLines: 1,
                    textAlign: titleTextAlignment,
                    fontSize: 20.sp,
                    fontWeight: FontWeight.w600,
                    textColor: Palette.text100,
                    textColorDark: Palette.text100Dark,
                    style: titleTextStyle,
                    isDefault: Utils.platform_(cupertino: true),
                  ),
                ) ??
                titleWidget,
          ),
        ),
      );

  double get _titleHeight => titleHeight ?? 0.03.h;

  Widget _content(BuildContext c) {
    return SingleChildScrollView(
      clipBehavior: Clip.antiAlias,
      physics: Utils.physics,
      scrollDirection: Axis.vertical,
      keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
      child: LimitedBox(
        maxHeight: maxHeight ?? double.infinity,
        child: SizedBox(
          width: _width,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: contentMainAxisAlignment,
            crossAxisAlignment: contentCrossAxisAlignment,
            children: [
              ...body ??
                  [
                    Flexible(
                      child: SingleChildScrollView(
                        keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
                        child: content?.let(
                              (it) => AdaptiveText(
                                '$content',
                                softWrap: true,
                                wrapWords: true,
                                minFontSize: minContentFontSize,
                                textAlign: contentTextAlignment,
                                fontSize: contentFontSize ?? 16.sp,
                                fontWeight: FontWeight.w400,
                                style: contentTextStyle,
                                isDefault: Utils.platform_(cupertino: true),
                              ),
                            ) ??
                            Utils.nothing,
                      ),
                    ),
                  ],
            ],
          ),
        ),
      ),
    );
  }

  Widget _firstButton(Axis direction) =>
      materialFirstButton ??
      firstButtonText?.let(
        (it) => AdaptiveButton(
          onPressed: () async {
            if (autoPopFirstButton)
              unawaited(navigator.pop((await onFirstPressedFuture?.call()) ?? onFirstPressed?.call() ?? defaultValue));
            else
              (await onFirstPressedFuture?.call()) ?? onFirstPressed?.call();
          },
          text: firstButtonText,
          height: firstButtonHeight ?? 0.045.h,
          width: firstButtonWidth ?? 0.25.w,
          cupertinoHeight: 0.028.sh,
          fontSize: 18,
          maxFontSize: 18,
          textColor: isFirstDestructive ? Palette.accentRed : Palette.accentColor,
          isLoading: firstButtonIsLoading,
          disabled: firstButtonDisabled,
          padding: App.platform.cupertino(EdgeInsets.zero),
          textStyle: const TextStyle(letterSpacing: Utils.labelLetterSpacing, fontWeight: FontWeight.w600).merge(firstTextStyle),
          backgroundColor: firstBgColor ?? Colors.transparent,
          splashColor: firstSplashColor ?? App.resolveColor(Colors.grey.shade300, dark: Colors.grey.shade800),
        ),
      ) ??
      Utils.nothing;

  MaterialAlertDialogData _materialAlertDialogData(BuildContext c) => MaterialAlertDialogData(
        scrollable: false,
        clipBehavior: Clip.antiAliasWithSaveLayer,
        elevation: 2.0,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(Utils.buttonRadius)),
        backgroundColor: Theme.of(c).scaffoldBackgroundColor,
        titlePadding: titlePadding ?? EdgeInsets.symmetric(horizontal: 0.04.sw, vertical: 0.04.sw),
        insetPadding: EdgeInsets.zero,
        contentPadding: EdgeInsets.symmetric(
          horizontal: App.sidePadding,
          vertical: App.sidePadding,
        ).copyWith(top: title != null ? 0.0 : null).merge(contentPadding),
        titleTextStyle: DefaultTextStyle.of(c).style.merge(TextStyle(fontSize: 18.sp, fontWeight: FontWeight.w600).merge(titleTextStyle)),
        actions: [
          if (!hideSecondButton) _secondButton(buttonDirection),
          //
          _firstButton(buttonDirection),
        ],
      );

  Widget _secondButton(Axis direction) {
    return materialSecondButton ??
        AdaptiveButton(
          onPressed: () async {
            if (autoPopSecondButton)
              unawaited(navigator.pop((await onSecondPressedFuture?.call()) ?? onSecondPressed?.call() ?? defaultValue));
            else
              (await onSecondPressedFuture?.call()) ?? onSecondPressed?.call();
          },
          text: secondButtonText,
          height: secondButtonHeight ?? 0.045.h,
          width: secondButtonWidth ?? 0.25.w,
          cupertinoHeight: 0.028.sh,
          fontSize: 18,
          maxFontSize: 18,
          isLoading: secondButtonIsLoading,
          disabled: secondButtonDisabled,
          textColor: App.resolveColor(const Color(0xff47484D), dark: Palette.text100Dark),
          textStyle: const TextStyle(letterSpacing: Utils.labelLetterSpacing).merge(secondTextStyle),
          backgroundColor: secondBgColor ?? Colors.transparent,
          splashColor: secondSplashColor ?? App.resolveColor(Colors.grey.shade300, dark: Colors.white12),
        );
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTextStyle(
      style: TextStyle(color: App.resolveColor(Palette.text100, dark: Palette.text100Dark)),
      child: MediaQuery.removeViewInsets(
        context: context,
        removeLeft: true,
        removeRight: true,
        child: material
            ? AlertDialog(
                scrollable: _materialAlertDialogData(context).scrollable!,
                clipBehavior: _materialAlertDialogData(context).clipBehavior!,
                elevation: _materialAlertDialogData(context).elevation!,
                shape: _materialAlertDialogData(context).shape!,
                backgroundColor: _materialAlertDialogData(context).backgroundColor!,
                titlePadding: _materialAlertDialogData(context).titlePadding!,
                insetPadding: _materialAlertDialogData(context).insetPadding!,
                contentPadding: contentPadding ?? _materialAlertDialogData(context).contentPadding!,
                titleTextStyle: _materialAlertDialogData(context).titleTextStyle!,
                contentTextStyle: contentTextStyle,
                title: _title,
                content: _content(context),
                actionsPadding: EdgeInsets.zero.merge(materialActionsPadding),
                actions: [
                  if (!hideSecondButton) _secondButton(Axis.horizontal),
                  //
                  _firstButton(Axis.horizontal),
                ],
              )
            : Theme(
                data: Utils.platform_(
                  cupertino: Utils.isDarkMode(context) ? ThemeData.dark() : ThemeData.light(),
                  material: context.read<ThemeCubit>().state.themeData(),
                )!,
                child: PlatformAlertDialog(
                  widgetKey: key,
                  title: _title,
                  content: _content(context),
                  material: (_, __) => _materialAlertDialogData(context),
                  cupertino: (_, __) => CupertinoAlertDialogData(
                    scrollController: ScrollController(),
                    insetAnimationCurve: Curves.easeInOutCubic,
                    insetAnimationDuration: const Duration(milliseconds: 1500),
                    actions: [
                      if (cupertinoFirstButton != null) cupertinoFirstButton!,
                      //
                      if (cupertinoFirstButtonText != null)
                        Visibility(
                          visible: !firstButtonIsLoading,
                          replacement: App.circularLoadingOverlay(),
                          child: Disabled(
                            opacity: 0.6,
                            disabled: firstButtonDisabled,
                            child: CupertinoDialogAction(
                              isDefaultAction: isFirstDefaultAction,
                              isDestructiveAction: isFirstDestructive,
                              onPressed: () async {
                                if (autoPopFirstButton)
                                  unawaited(navigator.pop((await onFirstPressedFuture?.call()) ?? onFirstPressed?.call() ?? defaultValue));
                                else
                                  (await onFirstPressedFuture?.call()) ?? onFirstPressed?.call();
                              },
                              child: Text('$cupertinoFirstButtonText'),
                            ),
                          ),
                        ),
                      //
                      if (!hideSecondButton)
                        cupertinoSecondButton ??
                            Visibility(
                              visible: !secondButtonIsLoading,
                              replacement: App.circularLoadingOverlay(),
                              child: Disabled(
                                opacity: 0.6,
                                disabled: secondButtonDisabled,
                                child: CupertinoDialogAction(
                                  isDefaultAction: isSecondDefaultAction,
                                  isDestructiveAction: isSecondDestructive,
                                  onPressed: () async {
                                    if (autoPopSecondButton)
                                      unawaited(
                                          navigator.pop((await onSecondPressedFuture?.call()) ?? onSecondPressed?.call() ?? defaultValue));
                                    else
                                      (await onSecondPressedFuture?.call()) ?? onSecondPressed?.call();
                                  },
                                  child: Text('$cupertinoSecondButtonText'),
                                ),
                              ),
                            ),
                    ],
                  ),
                ),
              ),
      ),
    );
  }
}
