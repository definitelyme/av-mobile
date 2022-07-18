import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hive/hive.dart';
import 'package:auctionvillage/utils/utils.dart';

part 'styles-adapter.dart';

const String lightThemeID = 'Light-THEME-ID';
const String darkThemeID = 'Dark-THEME-ID';

class AppTheme extends HiveObject {
  final Color? _accentColor;
  final Brightness? _accentColorBrightness;
  final BottomNavigationBarThemeData? _bottomNavigationBarTheme;
  final BottomSheetThemeData? _bottomSheetThemeData;
  final Brightness? _brightness;
  final Color? _buttonColor;
  final ButtonThemeData? _buttonThemeData;
  final ColorScheme? _colorScheme;
  final Color? _indicatorColor;
  final Color? _primaryColor;
  final Color? _primaryColorDark;
  final Color? _primaryColorLight;
  final RadioThemeData? _radioThemeData;
  final Color? _scaffoldBackgroundColor;
  final Color? _splashColor;
  final InteractiveInkFeatureFactory? _splashFactory;
  final SwitchThemeData? _switchThemeData;
  final InputDecorationTheme? _textFieldTheme;
  final TextSelectionThemeData? _textSelectionThemeData;
  final TextTheme? _textTheme;
  final Color? _toggleableActiveColor;
  final VisualDensity? _visualDensity;
  final ThemeMode themeMode;

  final String id;

  AppTheme._({
    required this.id,
    required this.themeMode,
    Brightness? brightness,
    Brightness? accentColorBrightness,
    Color? primaryColor,
    Color? buttonColor,
    Color? indicatorColor,
    Color? primaryColorDark,
    Color? primaryColorLight,
    InputDecorationTheme? inputTheme,
    Color? scaffoldBackgroundColor,
    Color? toggleableActiveColor,
    Color? accentColor,
    Color? splashColor,
    ColorScheme? colorScheme,
    InteractiveInkFeatureFactory? splashFactory,
    VisualDensity? visualDensity,
    TextTheme? textTheme,
    BottomSheetThemeData? bottomSheetThemeData,
    BottomNavigationBarThemeData? bottomNavigationBarTheme,
    ButtonThemeData? buttonThemeData,
    RadioThemeData? radioThemeData,
    SwitchThemeData? switchThemeData,
    TextSelectionThemeData? textSelectionThemeData,
  })  : _brightness = brightness,
        _accentColorBrightness = accentColorBrightness,
        _primaryColor = primaryColor,
        _buttonColor = buttonColor,
        _indicatorColor = indicatorColor,
        _primaryColorDark = primaryColorDark,
        _primaryColorLight = primaryColorLight,
        _toggleableActiveColor = toggleableActiveColor,
        _textFieldTheme = inputTheme,
        _scaffoldBackgroundColor = scaffoldBackgroundColor,
        _accentColor = accentColor,
        _splashColor = splashColor,
        _colorScheme = colorScheme,
        _splashFactory = splashFactory,
        _visualDensity = visualDensity,
        _bottomSheetThemeData = bottomSheetThemeData,
        _bottomNavigationBarTheme = bottomNavigationBarTheme,
        _buttonThemeData = buttonThemeData,
        _radioThemeData = radioThemeData,
        _switchThemeData = switchThemeData,
        _textSelectionThemeData = textSelectionThemeData,
        _textTheme = textTheme;

  static TextStyle? cupertinoTextStyle(BuildContext ctx) => TextStyle(
        fontFamily: 'SanFrancisco',
        color: CupertinoDynamicColor.resolve(
          const CupertinoDynamicColor.withBrightness(color: Palette.text100, darkColor: Palette.text100Dark),
          ctx,
        ),
      );

  static InputDecoration get lightInputDecoration => const InputDecoration(
        alignLabelWithHint: true,
        floatingLabelBehavior: FloatingLabelBehavior.auto,
        isDense: true,
        filled: true,
        hintStyle: TextStyle(color: Colors.grey),
        labelStyle: TextStyle(color: Colors.grey),
        errorStyle: TextStyle(color: Palette.errorRed),
        fillColor: Colors.transparent,
        contentPadding: Utils.inputPadding,
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Palette.inputLightBorderColor),
          borderRadius: BorderRadius.all(Radius.circular(Utils.inputBorderRadius)),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Palette.inputLightBorderFocusedColor),
          borderRadius: BorderRadius.all(Radius.circular(Utils.inputBorderRadius)),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Palette.errorRed, width: 2.0),
          borderRadius: BorderRadius.all(Radius.circular(Utils.inputBorderRadius)),
        ),
        border: OutlineInputBorder(
          borderSide: BorderSide(color: Palette.inputLightBorderColor),
          borderRadius: BorderRadius.all(Radius.circular(Utils.inputBorderRadius)),
        ),
        disabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Palette.disabledBorderLight),
          borderRadius: BorderRadius.all(Radius.circular(Utils.inputBorderRadius)),
        ),
        errorBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Palette.errorRed, width: 1.3),
          borderRadius: BorderRadius.all(Radius.circular(Utils.inputBorderRadius)),
        ),
      );

  /// Light Theme Configurations
  static AppTheme light() {
    return AppTheme._(
      id: lightThemeID,
      themeMode: ThemeMode.light,
      brightness: Brightness.light,
      accentColorBrightness: Brightness.light,
      primaryColor: Palette.accentColor,
      indicatorColor: Colors.white,
      toggleableActiveColor: Palette.primaryColor.shade800,
      splashFactory: InkRipple.splashFactory,
      scaffoldBackgroundColor: Palette.primaryColor,
      colorScheme: ColorScheme.fromSwatch(
        accentColor: Palette.accentColor,
        brightness: Brightness.light,
        primarySwatch: Palette.primaryColor,
        primaryColorDark: Palette.primaryColor.shade800,
      ),
      visualDensity: VisualDensity.adaptivePlatformDensity,
      textSelectionThemeData: TextSelectionThemeData(
        cursorColor: Palette.accentColor,
        selectionColor: Palette.accentColor.shade200,
        selectionHandleColor: Palette.accentColor.shade400,
      ),
      radioThemeData: RadioThemeData(
        fillColor: MaterialStateProperty.all(Palette.accentColor),
        materialTapTargetSize: MaterialTapTargetSize.padded,
      ),
      switchThemeData: SwitchThemeData(
        thumbColor: MaterialStateProperty.all(Palette.accentColor),
        trackColor: MaterialStateProperty.all(Palette.accentColor.withOpacity(0.3)),
        materialTapTargetSize: MaterialTapTargetSize.padded,
      ),
      inputTheme: InputDecorationTheme(
        alignLabelWithHint: lightInputDecoration.alignLabelWithHint ?? false,
        floatingLabelBehavior: lightInputDecoration.floatingLabelBehavior ?? FloatingLabelBehavior.auto,
        isDense: lightInputDecoration.isDense ?? false,
        filled: lightInputDecoration.filled ?? false,
        hintStyle: lightInputDecoration.hintStyle,
        labelStyle: lightInputDecoration.labelStyle,
        errorStyle: lightInputDecoration.errorStyle,
        fillColor: lightInputDecoration.fillColor,
        contentPadding: lightInputDecoration.contentPadding,
        focusedBorder: lightInputDecoration.focusedBorder,
        focusedErrorBorder: lightInputDecoration.focusedErrorBorder,
        enabledBorder: lightInputDecoration.enabledBorder,
        disabledBorder: lightInputDecoration.disabledBorder,
        border: lightInputDecoration.border,
        errorBorder: lightInputDecoration.errorBorder,
        constraints: lightInputDecoration.constraints,
        counterStyle: lightInputDecoration.counterStyle,
        errorMaxLines: lightInputDecoration.errorMaxLines,
        floatingLabelAlignment: lightInputDecoration.floatingLabelAlignment ?? FloatingLabelAlignment.start,
        floatingLabelStyle: lightInputDecoration.floatingLabelStyle,
        focusColor: lightInputDecoration.focusColor,
        helperMaxLines: lightInputDecoration.helperMaxLines,
        helperStyle: lightInputDecoration.helperStyle,
        hoverColor: lightInputDecoration.hoverColor,
        iconColor: lightInputDecoration.iconColor,
        isCollapsed: lightInputDecoration.isCollapsed,
        prefixIconColor: lightInputDecoration.prefixIconColor,
        prefixStyle: lightInputDecoration.prefixStyle,
        suffixStyle: lightInputDecoration.suffixStyle,
        suffixIconColor: lightInputDecoration.suffixIconColor,
      ),
      textTheme: const TextTheme(
        headline1: TextStyle(),
        headline2: TextStyle(),
        headline3: TextStyle(),
        headline4: TextStyle(),
        headline5: TextStyle(),
        headline6: TextStyle(),
        bodyText1: TextStyle(),
        bodyText2: TextStyle(),
      ).apply(
        displayColor: Palette.text100, // For headline 1 - 6
        bodyColor: Palette.text100, // For every other text style
      ),
    );
  }

  static InputDecoration get darkInputDecoration => const InputDecoration(
        alignLabelWithHint: true,
        floatingLabelBehavior: FloatingLabelBehavior.auto,
        isDense: true,
        filled: true,
        hintStyle: TextStyle(color: Colors.grey),
        labelStyle: TextStyle(color: Colors.grey),
        errorStyle: TextStyle(color: Palette.errorRed),
        fillColor: Palette.cardColorDark,
        contentPadding: Utils.inputPadding,
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Palette.inputDarkBorderColor),
          borderRadius: BorderRadius.all(Radius.circular(Utils.inputBorderRadius)),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Palette.inputDarkBorderFocusedColor),
          borderRadius: BorderRadius.all(Radius.circular(Utils.inputBorderRadius)),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Palette.errorRed, width: 2.0),
          borderRadius: BorderRadius.all(Radius.circular(Utils.inputBorderRadius)),
        ),
        border: OutlineInputBorder(
          borderSide: BorderSide(color: Palette.inputDarkBorderColor),
          borderRadius: BorderRadius.all(Radius.circular(Utils.inputBorderRadius)),
        ),
        disabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Palette.disabledBorderLight),
          borderRadius: BorderRadius.all(Radius.circular(Utils.inputBorderRadius)),
        ),
        errorBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Palette.errorRed, width: 1.3),
          borderRadius: BorderRadius.all(Radius.circular(Utils.inputBorderRadius)),
        ),
      );

  /// Dark Theme Configurations
  static AppTheme dark() {
    return AppTheme._(
      id: darkThemeID,
      themeMode: ThemeMode.dark,
      brightness: Brightness.dark,
      accentColorBrightness: Brightness.dark,
      primaryColor: Palette.accentColor,
      toggleableActiveColor: Palette.secondaryColor.shade800,
      indicatorColor: Colors.white,
      visualDensity: VisualDensity.adaptivePlatformDensity,
      splashFactory: InkRipple.splashFactory,
      scaffoldBackgroundColor: Palette.secondaryColor,
      colorScheme: ColorScheme.fromSwatch(
        accentColor: Palette.accentColor,
        brightness: Brightness.dark,
        primarySwatch: Palette.secondaryColor,
        primaryColorDark: Palette.secondaryColor.shade800,
      ),
      radioThemeData: RadioThemeData(
        fillColor: MaterialStateProperty.all(Palette.accentColor),
        materialTapTargetSize: MaterialTapTargetSize.padded,
      ),
      switchThemeData: SwitchThemeData(
        thumbColor: MaterialStateProperty.all(Palette.accent20),
        trackColor: MaterialStateProperty.all(Palette.accentColor.shade400),
        materialTapTargetSize: MaterialTapTargetSize.padded,
      ),
      textSelectionThemeData: TextSelectionThemeData(
        cursorColor: Colors.white70,
        selectionColor: Palette.accentColor.shade100,
        selectionHandleColor: Palette.accentColor,
      ),
      inputTheme: InputDecorationTheme(
        alignLabelWithHint: darkInputDecoration.alignLabelWithHint ?? false,
        floatingLabelBehavior: darkInputDecoration.floatingLabelBehavior ?? FloatingLabelBehavior.auto,
        isDense: darkInputDecoration.isDense ?? false,
        filled: darkInputDecoration.filled ?? false,
        hintStyle: darkInputDecoration.hintStyle,
        labelStyle: darkInputDecoration.labelStyle,
        errorStyle: darkInputDecoration.errorStyle,
        fillColor: darkInputDecoration.fillColor,
        contentPadding: darkInputDecoration.contentPadding,
        focusedBorder: darkInputDecoration.focusedBorder,
        focusedErrorBorder: darkInputDecoration.focusedErrorBorder,
        enabledBorder: darkInputDecoration.enabledBorder,
        disabledBorder: darkInputDecoration.disabledBorder,
        border: darkInputDecoration.border,
        errorBorder: darkInputDecoration.errorBorder,
        constraints: darkInputDecoration.constraints,
        counterStyle: darkInputDecoration.counterStyle,
        errorMaxLines: darkInputDecoration.errorMaxLines,
        floatingLabelAlignment: darkInputDecoration.floatingLabelAlignment ?? FloatingLabelAlignment.start,
        floatingLabelStyle: darkInputDecoration.floatingLabelStyle,
        focusColor: darkInputDecoration.focusColor,
        helperMaxLines: darkInputDecoration.helperMaxLines,
        helperStyle: darkInputDecoration.helperStyle,
        hoverColor: darkInputDecoration.hoverColor,
        iconColor: darkInputDecoration.iconColor,
        isCollapsed: darkInputDecoration.isCollapsed,
        prefixIconColor: darkInputDecoration.prefixIconColor,
        prefixStyle: darkInputDecoration.prefixStyle,
        suffixStyle: darkInputDecoration.suffixStyle,
        suffixIconColor: darkInputDecoration.suffixIconColor,
      ),
      textTheme: const TextTheme(
        headline1: TextStyle(),
        headline2: TextStyle(),
        headline3: TextStyle(),
        headline4: TextStyle(),
        headline5: TextStyle(),
        headline6: TextStyle(),
        bodyText1: TextStyle(),
        bodyText2: TextStyle(),
      ).apply(
        displayColor: const Color(0xFFBFBFBF), // For headline 1 - 6
        bodyColor: const Color(0xFFBFBFBF), // For every other text style
      ),
    );
  }

  ThemeData themeData() {
    return ThemeData(
      brightness: _brightness,
      primaryColor: _primaryColor,
      indicatorColor: _indicatorColor,
      primaryColorDark: _primaryColorDark,
      primaryColorLight: _primaryColorLight,
      toggleableActiveColor: _toggleableActiveColor,
      fontFamily: Utils.platform_(cupertino: 'SanFrancisco'),
      textSelectionTheme: _textSelectionThemeData,
      inputDecorationTheme: _textFieldTheme,
      colorScheme: _colorScheme,
      splashColor: _splashColor,
      splashFactory: _splashFactory,
      scaffoldBackgroundColor: _scaffoldBackgroundColor,
      visualDensity: _visualDensity,
      bottomSheetTheme: _bottomSheetThemeData,
      bottomNavigationBarTheme: _bottomNavigationBarTheme,
      buttonTheme: _buttonThemeData,
      radioTheme: _radioThemeData,
      switchTheme: _switchThemeData,
      textTheme: Utils.platform_(material: GoogleFonts.nunitoSansTextTheme(_textTheme), cupertino: _textTheme),
    );
  }

  CupertinoThemeData cupertinoThemeData(BuildContext ctx) {
    return CupertinoThemeData(
      brightness: _brightness,
      primaryColor: CupertinoDynamicColor.resolve(
        const CupertinoDynamicColor.withBrightness(
          color: Palette.accentColor,
          darkColor: Palette.accentColor,
        ),
        ctx,
      ),
      textTheme: CupertinoTextThemeData(
        primaryColor: CupertinoDynamicColor.resolve(
          const CupertinoDynamicColor.withBrightness(
            color: Palette.accentColor,
            darkColor: Palette.accentColor,
          ),
          ctx,
        ),
        textStyle: AppTheme.cupertinoTextStyle(ctx),
        actionTextStyle: AppTheme.cupertinoTextStyle(ctx),
        dateTimePickerTextStyle: AppTheme.cupertinoTextStyle(ctx),
        navLargeTitleTextStyle: AppTheme.cupertinoTextStyle(ctx),
        // navTitleTextStyle: AppTheme.cupertinoTextStyle(ctx),
        pickerTextStyle: AppTheme.cupertinoTextStyle(ctx),
        tabLabelTextStyle: AppTheme.cupertinoTextStyle(ctx),
      ),
      scaffoldBackgroundColor: CupertinoDynamicColor.resolve(
        const CupertinoDynamicColor.withBrightness(
          color: Palette.neutralF9,
          darkColor: Palette.secondaryColor,
        ),
        ctx,
      ),
      primaryContrastingColor: Colors.white,
      barBackgroundColor: CupertinoDynamicColor.resolve(
        CupertinoDynamicColor.withBrightness(
          color: Palette.neutralF9,
          darkColor: Palette.secondaryColor.shade600,
        ),
        ctx,
      ),
    );
  }

  AppTheme copyWith({
    ThemeMode? themeMode,
    Brightness? brightness,
    Brightness? accentColorBrightness,
    Color? primaryColor,
    Color? buttonColor,
    Color? indicatorColor,
    Color? primaryColorDark,
    Color? primaryColorLight,
    Color? toggleableActiveColor,
    Color? scaffoldBackgroundColor,
    Color? accentColor,
    Color? splashColor,
    ColorScheme? colorScheme,
    InputDecorationTheme? textFieldTheme,
    InteractiveInkFeatureFactory? splashFactory,
    VisualDensity? visualDensity,
    TextTheme? textTheme,
    BottomSheetThemeData? bottomSheetThemeData,
    BottomNavigationBarThemeData? bottomNavigationBarTheme,
    ButtonThemeData? buttonThemeData,
    RadioThemeData? radioThemeData,
    SwitchThemeData? switchThemeData,
    TextSelectionThemeData? textSelectionThemeData,
  }) {
    return AppTheme._(
      id: id,
      themeMode: themeMode ?? this.themeMode,
      brightness: brightness ?? _brightness,
      accentColorBrightness: accentColorBrightness ?? _accentColorBrightness,
      primaryColor: primaryColor ?? _primaryColor,
      buttonColor: buttonColor ?? _buttonColor,
      indicatorColor: indicatorColor ?? _indicatorColor,
      primaryColorDark: primaryColorDark ?? _primaryColorDark,
      primaryColorLight: primaryColorLight ?? _primaryColorLight,
      inputTheme: textFieldTheme ?? _textFieldTheme,
      scaffoldBackgroundColor: scaffoldBackgroundColor ?? _scaffoldBackgroundColor,
      toggleableActiveColor: toggleableActiveColor ?? _toggleableActiveColor,
      accentColor: accentColor ?? _accentColor,
      splashColor: splashColor ?? _splashColor,
      splashFactory: splashFactory ?? _splashFactory,
      colorScheme: colorScheme ?? _colorScheme,
      visualDensity: visualDensity ?? _visualDensity,
      textTheme: textTheme ?? _textTheme,
      bottomSheetThemeData: bottomSheetThemeData ?? _bottomSheetThemeData,
      bottomNavigationBarTheme: bottomNavigationBarTheme ?? _bottomNavigationBarTheme,
      buttonThemeData: buttonThemeData ?? _buttonThemeData,
      radioThemeData: radioThemeData ?? _radioThemeData,
      switchThemeData: switchThemeData ?? _switchThemeData,
      textSelectionThemeData: textSelectionThemeData ?? _textSelectionThemeData,
    );
  }

  static T? platform<T>({
    T? Function()? material,
    T? Function()? cupertino,
  }) {
    if (Platform.isIOS || Platform.isMacOS)
      return cupertino?.call();
    else
      return material?.call();
  }
}
