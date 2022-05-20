// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:auctionvillage/core/data/index.dart' as _i4;
import 'package:auctionvillage/core/data/repository/firebase_messaging_service.dart'
    as _i19;
import 'package:auctionvillage/core/domain/facades/index.dart' as _i18;
import 'package:auctionvillage/core/presentation/managers/tab_navigation/tab_navigation_cubit.dart'
    as _i23;
import 'package:auctionvillage/features/auth/data/repositories/auth/auth_facade_impl.dart'
    as _i37;
import 'package:auctionvillage/features/auth/data/repositories/repos.dart'
    as _i3;
import 'package:auctionvillage/features/auth/data/sources/local/auth_local_source.dart'
    as _i6;
import 'package:auctionvillage/features/auth/data/sources/remote/auth_remote_source.dart'
    as _i34;
import 'package:auctionvillage/features/auth/domain/index.dart' as _i36;
import 'package:auctionvillage/features/auth/presentation/managers/auth_cubit/auth_cubit.dart'
    as _i39;
import 'package:auctionvillage/features/auth/presentation/managers/watcher/auth_watcher_cubit.dart'
    as _i38;
import 'package:auctionvillage/features/dashboard/data/local/wallet/wallet_local.dart'
    as _i26;
import 'package:auctionvillage/features/dashboard/data/remote/deal_remote/deal_remote.dart'
    as _i10;
import 'package:auctionvillage/features/dashboard/data/remote/search/search.remote.dart'
    as _i21;
import 'package:auctionvillage/features/dashboard/data/remote/wallet_remote/wallet_remote.dart'
    as _i27;
import 'package:auctionvillage/features/dashboard/data/repositories/deal_repository.dart'
    as _i29;
import 'package:auctionvillage/features/dashboard/data/repositories/utilities_repository.dart'
    as _i25;
import 'package:auctionvillage/features/dashboard/data/repositories/wallet_repository.dart'
    as _i28;
import 'package:auctionvillage/features/dashboard/presentation/managers/deal/deal_cubit.dart'
    as _i35;
import 'package:auctionvillage/features/dashboard/presentation/managers/product/product_bloc.dart'
    as _i31;
import 'package:auctionvillage/features/dashboard/presentation/managers/search/search_bloc.dart'
    as _i32;
import 'package:auctionvillage/features/dashboard/presentation/managers/wallet/wallet_cubit.dart'
    as _i33;
import 'package:auctionvillage/manager/locator/modules/modules.dart' as _i40;
import 'package:auctionvillage/manager/settings/external/preference_repository.dart'
    as _i30;
import 'package:auctionvillage/manager/theme/manager/theme_cubit.dart' as _i24;
import 'package:auctionvillage/utils/utils.dart' as _i5;
import 'package:awesome_notifications/awesome_notifications.dart' as _i7;
import 'package:cloudinary_public/cloudinary_public.dart' as _i8;
import 'package:connectivity_plus/connectivity_plus.dart' as _i9;
import 'package:firebase_analytics/firebase_analytics.dart' as _i11;
import 'package:firebase_core/firebase_core.dart' as _i12;
import 'package:firebase_crashlytics/firebase_crashlytics.dart' as _i13;
import 'package:firebase_messaging/firebase_messaging.dart' as _i14;
import 'package:flutter_paystack/flutter_paystack.dart' as _i20;
import 'package:get_it/get_it.dart' as _i1;
import 'package:google_sign_in/google_sign_in.dart' as _i15;
import 'package:injectable/injectable.dart' as _i2;
import 'package:internet_connection_checker/internet_connection_checker.dart'
    as _i16;
import 'package:localstore/localstore.dart' as _i17;
import 'package:shared_preferences/shared_preferences.dart'
    as _i22; // ignore_for_file: unnecessary_lambdas

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
    gh.singleton<_i8.CloudinaryPublic>(firebaseModules.cloudinary);
    gh.lazySingleton<_i9.Connectivity>(() => serviceModules.connectionStatus);
    gh.lazySingleton<_i10.DealRemote>(
        () => _i10.DealRemote(get<_i4.AppHttpClient>()));
    gh.lazySingleton<_i11.FirebaseAnalytics>(
        () => firebaseModules.firebaseAnalytics);
    await gh.factoryAsync<_i12.FirebaseApp>(() => firebaseModules.firebaseApp,
        preResolve: true);
    gh.lazySingleton<_i13.FirebaseCrashlytics>(
        () => firebaseModules.firebaseCrashlytics);
    gh.lazySingleton<_i14.FirebaseMessaging>(
        () => firebaseModules.firebaseMessaging);
    gh.lazySingleton<_i15.GoogleSignIn>(() => serviceModules.googleSignIn);
    gh.lazySingleton<_i16.InternetConnectionChecker>(
        () => serviceModules.connectionChecker);
    gh.singleton<_i17.Localstore>(firebaseModules.localstore);
    gh.singleton<_i18.MessagingFacade>(
        _i19.InAppMessaging(
            get<_i14.FirebaseMessaging>(),
            get<_i16.InternetConnectionChecker>(),
            get<_i9.Connectivity>(),
            get<_i7.AwesomeNotifications>()),
        dispose: (i) => i.dispose());
    gh.lazySingleton<_i20.PaystackPlugin>(() => serviceModules.paystackInit);
    gh.lazySingleton<_i21.SearchRemote>(
        () => _i21.SearchRemote(get<_i4.AppHttpClient>()));
    await gh.factoryAsync<_i22.SharedPreferences>(
        () => serviceModules.preferences,
        preResolve: true);
    gh.factory<_i23.TabNavigationCubit>(() => _i23.TabNavigationCubit());
    gh.factory<_i24.ThemeCubit>(() => _i24.ThemeCubit());
    gh.factory<_i25.UtilitiesRepository>(() => _i25.UtilitiesRepository(
        get<_i16.InternetConnectionChecker>(), get<_i9.Connectivity>()));
    gh.lazySingleton<_i26.WalletLocal>(
        () => _i26.WalletLocal(get<_i17.Localstore>()));
    gh.lazySingleton<_i27.WalletRemote>(
        () => _i27.WalletRemote(get<_i4.AppHttpClient>()));
    gh.factory<_i28.WalletRepository>(() => _i28.WalletRepository(
        get<_i16.InternetConnectionChecker>(),
        get<_i9.Connectivity>(),
        get<_i27.WalletRemote>(),
        get<_i26.WalletLocal>()));
    gh.factory<_i29.DealRepository>(() => _i29.DealRepository(
        get<_i16.InternetConnectionChecker>(),
        get<_i9.Connectivity>(),
        get<_i10.DealRemote>()));
    gh.singleton<_i30.PreferenceRepository>(
        _i30.PreferenceRepository(get<_i22.SharedPreferences>()));
    gh.factory<_i31.ProductBloc>(() => _i31.ProductBloc(
        get<_i29.DealRepository>(),
        get<_i17.Localstore>(),
        get<_i8.CloudinaryPublic>()));
    gh.factory<_i32.SearchBloc>(
        () => _i32.SearchBloc(get<_i21.SearchRemote>()));
    gh.factory<_i33.WalletCubit>(() => _i33.WalletCubit(
        get<_i28.WalletRepository>(),
        get<_i20.PaystackPlugin>(),
        get<_i11.FirebaseAnalytics>()));
    gh.singleton<_i34.AuthRemoteDatasource>(_i34.AuthRemoteDatasource(
        get<_i4.AppHttpClient>(), get<_i30.PreferenceRepository>()));
    gh.factory<_i35.DealCubit>(
        () => _i35.DealCubit(get<_i29.DealRepository>()));
    gh.lazySingleton<_i36.AuthFacade>(() => _i37.AuthFacadeImpl(
        get<_i34.AuthRemoteDatasource>(),
        get<_i6.AuthLocalDatasource>(),
        get<_i15.GoogleSignIn>(),
        get<_i11.FirebaseAnalytics>(),
        get<_i30.PreferenceRepository>()));
    gh.singleton<_i38.AuthWatcherCubit>(_i38.AuthWatcherCubit(
        get<_i36.AuthFacade>(), get<_i25.UtilitiesRepository>()));
    gh.factory<_i39.AuthCubit>(() => _i39.AuthCubit(get<_i36.AuthFacade>(),
        get<_i30.PreferenceRepository>(), get<_i8.CloudinaryPublic>()));
    return this;
  }
}

class _$AppModules extends _i40.AppModules {}

class _$ServiceModules extends _i40.ServiceModules {}

class _$FirebaseModules extends _i40.FirebaseModules {}
