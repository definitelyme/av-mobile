library main_dev.dart;

import 'dart:async';

import 'package:auctionvillage/app.dart';
import 'package:auctionvillage/core/domain/facades/index.dart';
import 'package:auctionvillage/utils/utils.dart';
import 'package:awesome_notifications/awesome_notifications.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_downloader/flutter_downloader.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';

void main() async {
  // Preserve Native Splash Screen
  FlutterNativeSplash.preserve(widgetsBinding: WidgetsFlutterBinding.ensureInitialized());

  unawaited(SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge, overlays: [SystemUiOverlay.bottom, SystemUiOverlay.top]));

  // Initialize Flutter Downloader
  await FlutterDownloader.initialize(debug: kDebugMode);

  // Initialize awesome notifications
  await AwesomeNotifications().initialize(
    'resource://drawable/res_notification_app_icon',
    MessagingFacade.channels,
  );

  // Setup Environmental variables & Service provider
  await BuildEnvironment.init(flavor: BuildFlavor.dev);

  // This app is designed only to work vertically, so we limit
  // orientations to portrait up and down.
  await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);

  runApp(const AuctionVillageApp());

  // Remove Native splash
  FlutterNativeSplash.remove();
}
