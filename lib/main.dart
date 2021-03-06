import 'dart:async';

import 'package:auctionvillage/app.dart';
import 'package:auctionvillage/core/domain/facades/index.dart';
import 'package:auctionvillage/manager/locator/locator.dart';
import 'package:auctionvillage/utils/utils.dart';
import 'package:awesome_notifications/awesome_notifications.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Add Google Fonts Licensing
  LicenseRegistry.addLicense(() async* {
    final license =
        await rootBundle.loadString('assets/fonts/google_fonts/OFL.txt');
    yield LicenseEntryWithLineBreaks(['google_fonts'], license);
  });

  try {
    // Initializes Hive with a valid directory in your app files.
    await Hive.initFlutter();
    await Hive.openBox<String>(Const.kAccessTokenBoxKey);
  } catch (e, trace) {
    log.e('Error initializing Hive', e, trace);
  }

  // Initialize Hydrated storage
  final storage =
      await HydratedStorage.build(storageDirectory: await Utils.cacheDir);

  await HydratedBlocOverrides.runZoned(
    () async => await runZonedGuarded(
      () async {
        // Initialize awesome notifications
        await AwesomeNotifications().initialize(
          'resource://drawable/res_notification_app_icon',
          MessagingFacade.channels,
        );

        // Setup Environmental variables & Service provider
        await BuildEnvironment.init(
            flavor: const BuildFlavor(BuildFlavor.prod));

        // Pass all uncaught errors from the framework to Crashlytics.
        FlutterError.onError = getIt<FirebaseCrashlytics>().recordFlutterError;

        runApp(const AuctionVillageApp());
      },
      (error, trace) => log.e(error.toString(), error, trace),
    ),
    storage: storage,
  );
}
