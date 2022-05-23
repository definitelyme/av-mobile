library auth_facade.dart;

import 'package:auctionvillage/core/data/index.dart';
import 'package:auctionvillage/core/domain/entities/entities.dart';
import 'package:auctionvillage/core/domain/response/index.dart';
import 'package:auctionvillage/manager/locator/locator.dart';
import 'package:auctionvillage/utils/utils.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dartz/dartz.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';

abstract class AuthFacade {
  Future<Either<AppHttpResponse, Option<User?>>> get currentUser;
  Stream<Either<AppHttpResponse, Option<User?>>> get onAuthStateChanges;
  Stream<Option<User?>> get onUserChanges;
  Future<Option<User?>> get user;

  Future<void> sink([Either<AppHttpResponse, Option<User?>> userOrFailure]);

  Future<void> update(Option<User?> user);

  Future<AppHttpResponse> login({
    required EmailAddress email,
    required Password password,
    UserDTO? registered,
  });

  Future<AppHttpResponse?> createAccount({
    required DisplayName firstName,
    required DisplayName lastName,
    required EmailAddress emailAddress,
    required Password password,
    required Phone phone,
  });

  Future<AppHttpResponse?> updateProfile(
    User user, {
    DisplayName? firstName,
    DisplayName? lastName,
    EmailAddress? email,
    Phone? phone,
    UploadableMedia? photo,
  });

  Future<AppHttpResponse> updatePassword({
    required Password current,
    required Password newPassword,
    required Password confirmation,
  });

  Future<AppHttpResponse> updatePhone(Phone phone);

  Future<AppHttpResponse> verifyPhoneNumber({
    required Phone phone,
    required OTPCode token,
  });

  Future<AppHttpResponse> sendPasswordResetInstructions(Phone phone);

  Future<AppHttpResponse> confirmPasswordReset({
    required Phone phone,
    required OTPCode code,
    required Password newPassword,
    required Password confirmation,
  });

  Future<Option<AppHttpResponse?>> googleAuthentication([bool notify = false]);

  Future<Option<AppHttpResponse?>> appleAuthentication([bool notify = false]);

  Future<Option<AppHttpResponse?>> updateSocialsProfile({
    DisplayName? firstName,
    DisplayName? lastName,
    EmailAddress? email,
    Phone? phone,
  });

  Future<void> signOut({
    bool notify = true,
    bool regular = true,
    bool google = true,
    bool apple = true,
  });

  Future<AppHttpResponse> deleteAccount();

  Future<void> sleep();

  Future<Either<AppHttpResponse, Option<User?>>> retrieveAndCacheUpdatedUser({
    UserDTO? dto,
    bool shouldThrow = false,
    bool forceGetLocalCache = false,
  });

  Future<Either<AppHttpResponse, bool>> checkInternetConnectivity() async {
    final isConnected = (await getIt<Connectivity>().checkConnectivity()) != ConnectivityResult.none;

    if (!isConnected) return left(AppHttpResponse(AnyResponse.fromFailure(const NetworkFailure.notConnected())));

    final hasInternet = await getIt<InternetConnectionChecker>().hasConnection;

    if (isConnected && !hasInternet) return left(AppHttpResponse(AnyResponse.fromFailure(const NetworkFailure.poorInternet())));

    return right(isConnected && hasInternet);
  }

  Future<AppHttpResponse> handleFailure<R>({
    required AppHttpResponse e,
    StackTrace? trace,
    bool notify = true,
  }) async {
    switch (e.reason) {
      case AppNetworkExceptionReason.timedOut:
      case AppNetworkExceptionReason.cancelled:
        return e;
      case AppNetworkExceptionReason.responseError:
      default:
        // Log Unknown Exceptions to Firebase Analytics
        await env.flavor.fold(prod: () => App.reportFlutterError(e, trace, reason: 'Probably an invalid access token'));

        // Log the user of if access token has expired
        return await e.fold(
          is401: () async {
            await signOut(notify: notify);
            return e;
          },
          orElse: () async {
            // Sink all unrelated auth-failures
            // propagate any necessary data the widget tree
            if (notify) await sink(left(e));
            return e;
          },
        );
    }
  }
}
