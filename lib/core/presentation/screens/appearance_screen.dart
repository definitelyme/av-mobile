library appearance_screen.dart;

import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:auctionvillage/manager/theme/theme.dart';
import 'package:auctionvillage/utils/utils.dart';
import 'package:auctionvillage/widgets/widgets.dart';

/// A stateless widget to render AppearanceScreen.
class AppearanceScreen extends StatelessWidget with AutoRouteWrapper {
  const AppearanceScreen({Key? key}) : super(key: key);

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider.value(
      value: context.read<ThemeCubit>(),
      child: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    return AdaptiveScaffold(
      backgroundColor: Palette.accentColor,
      adaptiveToolbar: AdaptiveToolbar(
        title: 'Appearance',
        titleStyle: App.titleStyle,
        elevation: 0,
        showCupertinoCustomLeading: false,
        showMaterialCustomLeading: false,
        implyLeading: false,
        centerTitle: true,
        backgroundColor: App.platform.cupertino(Palette.accentColor),
        cupertinoImplyLeading: false,
        overlayStyle: App.customSystemOverlay(ctx: context, android: Brightness.light, ios: Brightness.light),
        leadingIconColor: Colors.white,
        leadingBgColor: Colors.transparent,
      ),
      body: AdaptiveScaffoldBody(
        builder: (c) => Material(
          color: App.resolveColor(Palette.cardColorLight, dark: Palette.cardColorDark),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Disabled(
                disabled: context.watch<ThemeCubit>().isDeviceThemeMode,
                child: AdaptiveListTile.adaptiveSwitch(
                  value: context.watch<ThemeCubit>().isDarkMode,
                  title: AdaptiveText(
                    !context.watch<ThemeCubit>().isDarkMode ? 'Light Mode' : 'Dark Mode',
                    maxLines: 1,
                    fontSize: 17.sp,
                    maxFontSize: 17,
                    fontWeight: FontWeight.w600,
                  ),
                  subtitle: AdaptiveText.rich(
                    TextSpan(children: [
                      WidgetSpan(
                        alignment: PlaceholderAlignment.middle,
                        child: Icon(
                          Utils.platform_(cupertino: CupertinoIcons.info, material: Icons.info_outline_rounded),
                          color: App.resolveColor(Palette.subTextLight, dark: const Color(0xff656f7c), ctx: c),
                          size: 19,
                        ),
                      ),
                      const TextSpan(text: ' Flip the switch to toggle.'),
                    ]),
                    fontSize: 13.sp,
                    maxFontSize: 14,
                    isDefault: true,
                    textColor: Palette.subTextLight,
                    textColorDark: const Color(0xff656f7c),
                  ),
                  // inactiveThumbColor: Palette.text40,
                  inactiveThumbColor: App.resolveColor(Colors.black, dark: Colors.white, ctx: c),
                  inactiveTrackColor: App.resolveColor(const Color.fromRGBO(33, 33, 33, 0.08), dark: const Color(0xff979797), ctx: c),
                  activeTrackColor: Palette.primaryColor.withOpacity(0.38),
                  // activeColor: Palette.primaryColor,
                  thumbColor: Utils.platform_(material: Palette.primaryColor),
                  cupertinoTrackColor: App.resolveColor(const Color.fromRGBO(33, 33, 33, 0.08), dark: const Color(0xff979797), ctx: c),
                  noCupertinoBorder: true,
                  borderRadius: 0.br,
                  onChanged: (_) => context.read<ThemeCubit>().toggleTheme(),
                ),
              ),
              //
              AdaptiveListTile.adaptiveSwitch(
                value: context.watch<ThemeCubit>().isDeviceThemeMode,
                title: AdaptiveText(
                  'Use Device Settings',
                  maxLines: 1,
                  fontSize: 17.sp,
                  maxFontSize: 17,
                  fontWeight: FontWeight.w600,
                ),
                subtitle: AdaptiveText.rich(
                  const TextSpan(children: [
                    TextSpan(text: 'Upon activation, Day or Night mode will be determined by device settings.'),
                  ]),
                  fontSize: 13.sp,
                  maxFontSize: 14,
                  isDefault: true,
                  textColor: Palette.subTextLight,
                  textColorDark: const Color(0xff656f7c),
                ),
                // inactiveThumbColor: Palette.text40,
                inactiveThumbColor: App.resolveColor(Colors.black, dark: Colors.white, ctx: c),
                inactiveTrackColor: App.resolveColor(const Color.fromRGBO(33, 33, 33, 0.08), dark: const Color(0xff979797), ctx: c),
                activeTrackColor: Palette.primaryColor.withOpacity(0.38),
                // activeColor: Palette.primaryColor,
                thumbColor: Utils.platform_(material: Palette.primaryColor),
                cupertinoTrackColor: App.resolveColor(const Color.fromRGBO(33, 33, 33, 0.08), dark: const Color(0xff979797), ctx: c),
                noCupertinoBorder: true,
                borderRadius: 0.br,
                onChanged: (_) => context.read<ThemeCubit>().toggleThemeMode(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
