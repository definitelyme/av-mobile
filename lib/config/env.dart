import 'package:auctionvillage/manager/locator/locator.dart';
import 'package:auctionvillage/utils/utils.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/services.dart';
import 'package:flutter/foundation.dart';

// enum BuildFlavor { prod, staging, isolate, dev }

class BuildFlavor {
  /// name of the environment
  final String name;

  /// default constructor
  const BuildFlavor(this.name);

  /// preset of common env name 'dev'
  static const dev = 'dev';

  /// preset of common env name 'staging'
  static const staging = 'staging';

  /// preset of common env name 'isolate'
  static const isolate = 'isolate';

  /// preset of common env name 'prod'
  static const prod = 'prod';

  /// preset of common env name 'test'
  static const test = 'test';

  @override
  bool operator ==(other) {
    if (identical(this, other)) return true;
    return other is BuildFlavor && other.name == name;
  }

  @override
  int get hashCode => name.hashCode;

  @override
  String toString() => '$name';
}

BuildEnvironment get env => _env!;
BuildEnvironment? _env;

class BuildEnvironment implements Secrets {
  final BuildFlavor flavor;
  final Uri? baseUri;

  factory BuildEnvironment.factory({required BuildFlavor flavor, Uri? uri}) => BuildEnvironment._(flavor: flavor, baseUri: uri);

  BuildEnvironment._({this.flavor = const BuildFlavor(BuildFlavor.dev), this.baseUri});

  String get appApiKey => 'AuctionDevKey';

  static String domain([BuildFlavor? value]) => (value ?? env.flavor).fold(
        dev: () => '${EndPoints.APP_DEV_DOMAIN}',
        prod: () => kDebugMode ? '${EndPoints.APP_DEV_DOMAIN}' : '${EndPoints.APP_PROD_DOMAIN}',
        // prod: () => '${EndPoints.APP_PROD_DOMAIN}',
      );

  int get connectTimeout => 16000;

  int get receiveTimeout => 16000;

  String get packageName => env.flavor.fold(dev: () => '${Const.packageNameDev}', prod: () => '${Const.packageName}');

  Duration get greetingDuration => const Duration(milliseconds: 1200);

  String get googleMapsAPI => Utils.platform_(material: Secrets.androidAPIKey, cupertino: Secrets.iOSAPIKey)!;

  String get paystackKey => flavor.fold(dev: () => Secrets.paystackKeyDev, prod: () => Secrets.paystackKeyProd);

  String get flutterwaveKey => flavor.fold(dev: () => Secrets.flutterwaveKeyDev, prod: () => Secrets.flutterwaveKeyProd);

  String get flwEncryptionKey => Secrets.flutterwaveEncrptionKey;

  Duration get splashDuration => flavor.fold(dev: () => const Duration(milliseconds: 1200), prod: () => const Duration(milliseconds: 1700));

  String get pusherKey => Secrets.pusherKey;

  String get pusherCluster => Secrets.pusherCluster;

  String get pusherAppId => Secrets.pusherAppId;

  String get pusherAuthUrl => Uri.https('${domain()}', '${EndPoints.PUSHER_AUTH_URL}').toString();

  String get cloudName => Secrets.cloudName;

  String get uploadPreset => Secrets.uploadPreset;

  /// Sets up the top-level [env] getter on the first call only.
  static Future<void> init({required BuildFlavor flavor}) async {
    _env ??= BuildEnvironment.factory(flavor: flavor, uri: Uri.https(domain(flavor), EndPoints.API_ENDPOINT));

    // This app is designed only to work vertically, so we limit
    // orientations to portrait up and down.
    await env.flavor.maybeWhen(
      isolate: () => null,
      orElse: () async {
        await SystemChrome.setPreferredOrientations([
          DeviceOrientation.portraitUp,
          DeviceOrientation.portraitDown,
        ]);
      },
    );

    await flavor.fold(
      dev: () async {
        await locator(BuildFlavor.dev);
        await getIt<FirebaseCrashlytics>().setCrashlyticsCollectionEnabled(!kDebugMode);
      },
      prod: () async {
        await locator(BuildFlavor.prod);
        await getIt<FirebaseCrashlytics>().setCrashlyticsCollectionEnabled(!kDebugMode);
      },
    );
  }
}

extension XBuildFlavor on BuildFlavor {
  U fold<U>({
    U Function()? dev,
    U Function()? staging,
    U Function()? isolate,
    required U Function() prod,
  }) {
    switch (name) {
      case BuildFlavor.dev:
        return dev?.call() ?? staging?.call() ?? prod.call();
      case BuildFlavor.staging:
        return staging?.call() ?? prod.call();
      case BuildFlavor.isolate:
        return isolate?.call() ?? prod.call();
      case BuildFlavor.prod:
      default:
        return prod.call();
    }
  }

  U maybeWhen<U>({
    U Function()? dev,
    U Function()? staging,
    U Function()? isolate,
    U Function()? prod,
    required U Function() orElse,
  }) {
    switch (name) {
      case BuildFlavor.dev:
        return dev?.call() ?? orElse.call();
      case BuildFlavor.staging:
        return staging?.call() ?? orElse.call();
      case BuildFlavor.isolate:
        return isolate?.call() ?? orElse.call();
      case BuildFlavor.prod:
        return prod?.call() ?? orElse.call();
    }

    return orElse.call();
  }
}
