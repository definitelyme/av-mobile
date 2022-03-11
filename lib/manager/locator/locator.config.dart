// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:auctionvillage/core/data/index.dart' as _i4;
import 'package:auctionvillage/core/data/repository/firebase_messaging_service.dart'
    as _i16;
import 'package:auctionvillage/core/domain/facades/index.dart' as _i15;
import 'package:auctionvillage/core/presentation/managers/tab_navigation/tab_navigation_cubit.dart'
    as _i20;
import 'package:auctionvillage/features/auth/data/repositories/auth/auth_facade_impl.dart'
    as _i26;
import 'package:auctionvillage/features/auth/data/repositories/repos.dart'
    as _i3;
import 'package:auctionvillage/features/auth/data/sources/local/auth_local_source.dart'
    as _i6;
import 'package:auctionvillage/features/auth/data/sources/remote/auth_remote_source.dart'
    as _i24;
import 'package:auctionvillage/features/auth/domain/index.dart' as _i25;
import 'package:auctionvillage/features/auth/presentation/managers/auth_cubit/auth_cubit.dart'
    as _i28;
import 'package:auctionvillage/features/auth/presentation/managers/watcher/auth_watcher_cubit.dart'
    as _i27;
import 'package:auctionvillage/features/dashboard/data/remote/search/search.remote.dart'
    as _i18;
import 'package:auctionvillage/features/dashboard/presentation/managers/product/product_bloc.dart'
    as _i17;
import 'package:auctionvillage/features/dashboard/presentation/managers/search/search_bloc.dart'
    as _i23;
import 'package:auctionvillage/manager/locator/modules/modules.dart' as _i29;
import 'package:auctionvillage/manager/settings/external/preference_repository.dart'
    as _i22;
import 'package:auctionvillage/manager/theme/manager/theme_cubit.dart' as _i21;
import 'package:auctionvillage/utils/utils.dart' as _i5;
import 'package:awesome_notifications/awesome_notifications.dart' as _i7;
import 'package:connectivity_plus/connectivity_plus.dart' as _i8;
import 'package:firebase_analytics/firebase_analytics.dart' as _i9;
import 'package:firebase_core/firebase_core.dart' as _i10;
import 'package:firebase_crashlytics/firebase_crashlytics.dart' as _i11;
import 'package:firebase_messaging/firebase_messaging.dart' as _i12;
import 'package:get_it/get_it.dart' as _i1;
import 'package:google_sign_in/google_sign_in.dart' as _i13;
import 'package:injectable/injectable.dart' as _i2;
import 'package:internet_connection_checker/internet_connection_checker.dart'
    as _i14;
import 'package:shared_preferences/shared_preferences.dart'
    as _i19; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// an extension to register the provided dependencies inside of [GetIt]
extension GetItInjectableX on _i1.GetIt {
  /// initializes the registration of provided dependencies inside of [GetIt]
  Future<_i1.GetIt> $initGetIt(
      {String? environment, _i2.EnvironmentFilter? environmentFilter}) async {
    final gh = _i2.GetItHelper(this, environment, environmentFilter);
    final appModules = _$AppModules();
    final serviceModules = _$ServiceModules();
    final firebaseModules = _$FirebaseModules();
    gh.lazySingleton<_i3.AccessTokenManager>(
        () => appModules.accessTokenManager);
    await gh.factoryAsync<_i4.AppDatabase>(() => appModules.database,
        preResolve: true);
    gh.singleton<_i4.AppHttpClient>(appModules.httpClient);
    gh.singleton<_i5.AppRouter>(appModules.router);
    gh.singleton<_i6.AuthLocalDatasource>(_i6.AuthLocalDatasource(
        get<_i3.AccessTokenManager>(), get<_i4.AppDatabase>()));
    gh.lazySingleton<_i7.AwesomeNotifications>(
        () => serviceModules.awesomeNotifications);
    gh.lazySingleton<_i8.Connectivity>(() => serviceModules.connectionStatus);
    gh.lazySingleton<_i9.FirebaseAnalytics>(
        () => firebaseModules.firebaseAnalytics);
    await gh.factoryAsync<_i10.FirebaseApp>(() => firebaseModules.firebaseApp,
        preResolve: true);
    gh.lazySingleton<_i11.FirebaseCrashlytics>(
        () => firebaseModules.firebaseCrashlytics);
    gh.lazySingleton<_i12.FirebaseMessaging>(
        () => firebaseModules.firebaseMessaging);
    gh.lazySingleton<_i13.GoogleSignIn>(() => serviceModules.googleSignIn);
    gh.lazySingleton<_i14.InternetConnectionChecker>(
        () => serviceModules.connectionChecker);
    gh.singleton<_i15.MessagingFacade>(
        _i16.InAppMessaging(
            get<_i12.FirebaseMessaging>(),
            get<_i14.InternetConnectionChecker>(),
            get<_i8.Connectivity>(),
            get<_i7.AwesomeNotifications>()),
        dispose: (i) => i.dispose());
    gh.factory<_i17.ProductBloc>(() => _i17.ProductBloc());
    gh.lazySingleton<_i18.SearchRemote>(
        () => _i18.SearchRemote(get<_i4.AppHttpClient>()));
    await gh.factoryAsync<_i19.SharedPreferences>(
        () => serviceModules.preferences,
        preResolve: true);
    gh.factory<_i20.TabNavigationCubit>(() => _i20.TabNavigationCubit());
    gh.factory<_i21.ThemeCubit>(() => _i21.ThemeCubit());
    gh.singleton<_i22.PreferenceRepository>(
        _i22.PreferenceRepository(get<_i19.SharedPreferences>()));
    gh.factory<_i23.SearchBloc>(
        () => _i23.SearchBloc(get<_i18.SearchRemote>()));
    gh.singleton<_i24.AuthRemoteDatasource>(_i24.AuthRemoteDatasource(
        get<_i4.AppHttpClient>(), get<_i22.PreferenceRepository>()));
    gh.lazySingleton<_i25.AuthFacade>(() => _i26.AuthFacadeImpl(
        get<_i24.AuthRemoteDatasource>(),
        get<_i6.AuthLocalDatasource>(),
        get<_i13.GoogleSignIn>(),
        get<_i9.FirebaseAnalytics>(),
        get<_i22.PreferenceRepository>()));
    gh.factory<_i27.AuthWatcherCubit>(
        () => _i27.AuthWatcherCubit(get<_i25.AuthFacade>()));
    gh.factory<_i28.AuthCubit>(() => _i28.AuthCubit(
        get<_i25.AuthFacade>(), get<_i22.PreferenceRepository>()));
    return this;
  }
}

class _$AppModules extends _i29.AppModules {}

class _$ServiceModules extends _i29.ServiceModules {}

class _$FirebaseModules extends _i29.FirebaseModules {}
