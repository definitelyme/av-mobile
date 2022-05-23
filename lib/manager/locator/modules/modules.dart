library modules.dart;

import 'package:auctionvillage/core/data/index.dart';
import 'package:auctionvillage/features/auth/data/repositories/repos.dart';
import 'package:auctionvillage/manager/locator/locator.dart';
import 'package:auctionvillage/utils/utils.dart';
import 'package:awesome_notifications/awesome_notifications.dart';
import 'package:cloudinary_public/cloudinary_public.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dio/dio.dart';
import 'package:dio_cache_interceptor/dio_cache_interceptor.dart';
import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter_paystack/flutter_paystack.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:injectable/injectable.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:localstore/localstore.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'http_client_module.part.dart';

@module
abstract class FirebaseModules {
  @lazySingleton
  FirebaseAnalytics get firebaseAnalytics => FirebaseAnalytics.instance..logAppOpen();

  @preResolve
  @singleton
  Future<FirebaseApp> get firebaseApp => Firebase.initializeApp();

  @lazySingleton
  FirebaseCrashlytics get firebaseCrashlytics => FirebaseCrashlytics.instance;

  @lazySingleton
  FirebaseMessaging get firebaseMessaging => FirebaseMessaging.instance;

  @singleton
  Localstore get localstore => Localstore.instance;

  @singleton
  CloudinaryPublic get cloudinary => CloudinaryPublic(env.cloudName, env.uploadPreset, cache: false);
}

@module
abstract class AppModules {
  @lazySingleton
  AccessTokenManager get accessTokenManager => AccessTokenManager();

  @singleton
  AppHttpClient get httpClient => _HttpClients._clientv2();

  @preResolve
  @singleton
  Future<HiveClient> get hiveClient => HiveClient.initialize();

  @singleton
  AppRouter get router => AppRouter(authGuard: AuthGuard(), guestGuard: GuestGuard());
}

@module
abstract class ServiceModules {
  @lazySingleton
  AwesomeNotifications get awesomeNotifications => AwesomeNotifications();

  @lazySingleton
  InternetConnectionChecker get connectionChecker => InternetConnectionChecker();

  @lazySingleton
  Connectivity get connectionStatus => Connectivity();

  @lazySingleton
  GoogleSignIn get googleSignIn => GoogleSignIn(
        scopes: [
          'https://www.googleapis.com/auth/userinfo.email',
          'https://www.googleapis.com/auth/userinfo.profile',
        ],
      );

  @preResolve
  Future<SharedPreferences> get preferences => SharedPreferences.getInstance();

  @lazySingleton
  PaystackPlugin get paystackInit => PaystackPlugin()..initialize(publicKey: env.paystackKey);
}
