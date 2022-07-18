import 'package:auctionvillage/core/data/index.dart';
import 'package:auctionvillage/manager/locator/locator.dart';
import 'package:auctionvillage/utils/utils.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/foundation.dart';

// enum BuildFlavor { prod, staging, isolate, dev }

class BuildFlavor {
  /// name of the environment
  final String name;

  /// default constructor
  const BuildFlavor(this.name);

  /// preset of common env name 'dev'
  static const dev = BuildFlavor('dev');

  /// preset of common env name 'staging'
  static const staging = BuildFlavor('staging');

  /// preset of common env name 'isolate'
  static const isolate = BuildFlavor('isolate');

  /// preset of common env name 'prod'
  static const prod = BuildFlavor('prod');

  /// preset of common env name 'test'
  static const test = BuildFlavor('test');

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

  BuildEnvironment._({this.flavor = BuildFlavor.dev, this.baseUri});

  String get appApiKey => 'AuctionDevKey';

  static String domain([BuildFlavor? value]) =>
      (value ?? env.flavor).fold(dev: () => '${EndPoints.APP_DEV_DOMAIN}', prod: () => '${EndPoints.APP_PROD_DOMAIN}');

  static String get http => Uri.http(domain(), '').toString();

  static String get https => Uri.https(domain(), '').toString();

  int get connectTimeout => 16000;

  int get receiveTimeout => 16000;

  String get packageName => env.flavor.fold(dev: () => '${Const.packageNameDev}', prod: () => '${Const.packageName}');

  Duration get greetingDuration => const Duration(milliseconds: 1200);

  String get googleMapsAPI => Utils.platform_(material: Secrets.androidAPIKey, cupertino: Secrets.iOSAPIKey)!;

  String get paystackKey =>
      flavor.fold(dev: () => Secrets.paystackKeyDev, prod: () => kDebugMode ? Secrets.paystackKeyDev : Secrets.paystackKeyProd);

  String get flutterwaveKey =>
      flavor.fold(dev: () => Secrets.flutterwaveKeyDev, prod: () => kDebugMode ? Secrets.flutterwaveKeyDev : Secrets.flutterwaveKeyProd);

  Duration get splashDuration => flavor.fold(dev: () => const Duration(milliseconds: 1200), prod: () => const Duration(milliseconds: 1700));

  String get pusherKey => Secrets.pusherKey;

  String get pusherCluster => Secrets.pusherCluster;

  String get pusherAppId => Secrets.pusherAppId;

  String get pusherAuthUrl => Uri.https('${domain()}', '${EndPoints.PUSHER_AUTH_URL}').toString();

  String get cloudName => Secrets.cloudName;

  String get uploadPreset => Secrets.uploadPreset;

  /// Sets up the top-level [env] getter on the first call only.
  static Future<void> init({required BuildFlavor flavor}) async {
    _env ??= BuildEnvironment.factory(flavor: flavor, uri: Uri.https(domain(flavor), kDebugMode ? EndPoints.API_ENDPOINT : ''));

    await env.flavor.fold(
      dev: () => locator(BuildFlavor.dev.name),
      prod: () => locator(BuildFlavor.prod.name),
    );

    await HiveClient.initialize();

    await getIt<FirebaseCrashlytics>().setCrashlyticsCollectionEnabled(!kDebugMode);
  }
}

extension XBuildFlavor on BuildFlavor {
  U fold<U>({
    U Function()? dev,
    U Function()? staging,
    U Function()? isolate,
    required U Function() prod,
  }) {
    if (this == BuildFlavor.dev) return dev?.call() ?? staging?.call() ?? prod.call();
    if (this == BuildFlavor.staging) return staging?.call() ?? prod.call();
    if (this == BuildFlavor.isolate) return isolate?.call() ?? prod.call();
    return prod.call();
  }

  U maybeWhen<U>({
    U Function()? dev,
    U Function()? staging,
    U Function()? isolate,
    U Function()? prod,
    required U Function() orElse,
  }) {
    if (this == BuildFlavor.dev) return dev?.call() ?? orElse.call();
    if (this == BuildFlavor.staging) return staging?.call() ?? orElse.call();
    if (this == BuildFlavor.isolate) return isolate?.call() ?? orElse.call();
    if (this == BuildFlavor.prod) return prod?.call() ?? orElse.call();
    return orElse.call();
  }
}
