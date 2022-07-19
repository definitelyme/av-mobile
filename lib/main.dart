library main.dart;

import 'dart:async';

import 'package:auctionvillage/app.dart';
import 'package:auctionvillage/core/domain/facades/index.dart';
import 'package:auctionvillage/core/domain/response/index.dart';
import 'package:auctionvillage/utils/utils.dart';
import 'package:auctionvillage/widgets/widgets.dart';
import 'package:awesome_notifications/awesome_notifications.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_downloader/flutter_downloader.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';

void main() async {
  await runZonedGuarded(
    () async {
      // Preserve Native Splash Screen
      FlutterNativeSplash.preserve(widgetsBinding: WidgetsFlutterBinding.ensureInitialized());

      unawaited(SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge, overlays: [SystemUiOverlay.bottom, SystemUiOverlay.top]));

      // Add Google Fonts Licensing
      LicenseRegistry.addLicense(() async* {
        final license = await rootBundle.loadString('assets/fonts/google_fonts/OFL.txt');
        yield LicenseEntryWithLineBreaks(['google_fonts'], license);
      });

      // Setup Environmental variables & Service provider
      await BuildEnvironment.init(flavor: BuildFlavor.prod);

      // Initialize Flutter Downloader
      await FlutterDownloader.initialize(debug: kDebugMode, ignoreSsl: kDebugMode);

      // Initialize awesome notifications
      await AwesomeNotifications().initialize(
        'resource://drawable/res_notification_app_icon',
        MessagingFacade.channels,
      );

      // Pass all uncaught errors from the framework to Crashlytics.
      // FlutterError.onError = getIt<FirebaseCrashlytics>().recordFlutterError;

      // This app is designed only to work vertically, so we limit
      // orientations to portrait up and down.
      await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);

      runApp(const AuctionVillageApp());

      // Remove Native splash
      FlutterNativeSplash.remove();
    },
    (e, tr) {
      log.w('Trace ==> $tr');

      if (e is BaseException) {
        PopupDialog.error(message: 'Zoned Error: ${e.message}', duration: const Duration(seconds: 8)).render();
      } else {
        PopupDialog.error(message: 'Zoned Error: $e', duration: const Duration(seconds: 8)).render();
      }

      App.report(e, tr, reason: '$e');

      if (kDebugMode) throw e;
    },
  );
}
