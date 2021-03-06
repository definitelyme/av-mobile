import 'package:flutter/material.dart';
import 'package:auctionvillage/utils/utils.dart';

enum PlatformType { android, ios, web, linux, macosx, other }

typedef _PlatformBuilder = Widget Function(BuildContext context);

class PlatformBuilder extends StatelessWidget {
  final _PlatformBuilder? cupertino;
  final _PlatformBuilder? material;
  final PlatformType? platform;

  const PlatformBuilder({
    Key? key,
    _PlatformBuilder? cupertino,
    _PlatformBuilder? material,
    this.platform,
  })  : cupertino = cupertino,
        material = material,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return platform?.when(
          android: () => material?.call(context),
          ios: () => cupertino?.call(context),
          web: () => material?.call(context),
          linux: () => material?.call(context),
          macosx: () => material?.call(context),
          orElse: () => Theme.of(context).platform.fold(
                cupertino: () => cupertino?.call(context) ?? Utils.nothing,
                material: () => material?.call(context) ?? Utils.nothing,
              ),
        ) ??
        Theme.of(context).platform.fold(
              cupertino: () => cupertino?.call(context) ?? Utils.nothing,
              material: () => material?.call(context) ?? Utils.nothing,
            );
  }
}

extension PlatformTypeX on PlatformType {
  bool get isIOS => this == PlatformType.ios;
  bool get isAndroid => this == PlatformType.android;
  bool get isWeb => this == PlatformType.web;
  bool get isLinux => this == PlatformType.linux;
  bool get isMac => this == PlatformType.macosx;
  bool get isOther => this == PlatformType.other;

  T when<T>({
    T Function()? android,
    T Function()? ios,
    T Function()? web,
    T Function()? linux,
    T Function()? macosx,
    required T Function() orElse,
  }) {
    switch (this) {
      case PlatformType.android:
        return android?.call() ?? orElse();
      case PlatformType.ios:
        return ios?.call() ?? orElse();
      case PlatformType.web:
        return web?.call() ?? orElse();
      case PlatformType.linux:
        return linux?.call() ?? orElse();
      case PlatformType.macosx:
        return macosx?.call() ?? orElse();
      default:
        return orElse();
    }
  }
}
