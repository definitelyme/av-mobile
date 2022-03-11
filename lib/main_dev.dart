import 'dart:async';

import 'package:auctionvillage/app.dart';
import 'package:auctionvillage/core/domain/facades/index.dart';
import 'package:auctionvillage/utils/utils.dart';
import 'package:awesome_notifications/awesome_notifications.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

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
        await BuildEnvironment.init(flavor: const BuildFlavor(BuildFlavor.dev));

        runApp(const AuctionVillageApp());
      },
      (error, stackTrace) => log.wtf(error.toString(), error, stackTrace),
    ),
    storage: storage,
  );
}
