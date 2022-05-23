library auth_remote_source.dart;

import 'package:auctionvillage/core/data/index.dart';
import 'package:auctionvillage/features/auth/data/models/index.dart';
import 'package:auctionvillage/manager/locator/locator.dart';
import 'package:auctionvillage/manager/settings/external/preference_repository.dart';
import 'package:auctionvillage/utils/utils.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';

@singleton
class AuthRemoteDatasource {
  static const String profileImgKey = 'avatar';
  static const String socialsTokenKey = 'token';

  final AppHttpClient _dio;
  final PreferenceRepository preferences;

  AuthRemoteDatasource(this._dio, this.preferences);

  Future<Response<dynamic>> createUserAccount(UserDTO dto) async {
    // Perform POST request based on role / user_type
    return await _dio.post(EndPoints.REGISTER, data: dto.toJson());
  }

  Future<Response<dynamic>> login({
    required String? email,
    required String? password,
  }) async {
    // Convert data to DTO
    final dto = UserDTO(email: email, password: password);
    // Perform POST request based on role / user_type
    return _dio.post(EndPoints.LOGIN, data: dto.toJson());
  }

  Future<dynamic> signOut() async => await _dio.post(EndPoints.LOGOUT);

  Future<Response<dynamic>> timeout() async => await _dio.get(EndPoints.SLEEP);

  Future<Response<dynamic>> resendPhoneVerification(String? phone) {
    // Generate Form Data for request
    final data = FormData.fromMap(UserDTO(phone: phone?.trim().removeNewLines().trimWhiteSpaces()).toJson());
    // Perform POST request based on role / user_type
    return _dio.post(EndPoints.RESEND_PHONE_VERIFICATION, data: data);
  }

  Future<Response<dynamic>> verifyPhoneNumber({
    required String? phone,
    required String? token,
  }) async {
    // Convert data to DTO
    final dto = UserDTO(phone: phone?.trim().removeNewLines().trimWhiteSpaces(), token: token);
    // Generate Form Data for request
    final data = FormData.fromMap(dto.toJson());
    // Perform POST request based on role / user_type
    return _dio.post(EndPoints.CONFIRM_PHONE_VERIFICATION, data: data);
  }

  Future<Response<dynamic>> sendPasswordResetMessage(String? phone) async {
    // Generate Form Data for request
    final data = FormData.fromMap(UserDTO(phone: phone?.trim().removeNewLines().trimWhiteSpaces()).toJson());
    // Perform request to send password reset email
    return _dio.post(EndPoints.SEND_PASSWORD_RESET_MESSAGE, data: data);
  }

  Future<Response<dynamic>> confirmPasswordReset(UserDTO dto) async {
    // Generate Form Data for request
    final data = FormData.fromMap(dto.toJson());
    // Perform request to reset user's password
    return _dio.post(EndPoints.CONFIRM_PASSWORD_RESET, data: data);
  }

  Future<Response<dynamic>> updateProfile(UserDTO? dto) async {
    final _dto = dto?.copyWith(countryName: null, id: null);
    // Perform PUT request to update user's profile
    return _dio.put('${EndPoints.UPDATE_USER_PROFILE}/${dto?.id}', data: _dto?.toJson());
  }

  Future<Response<dynamic>> updatePhoneNumber(String? phone) {
    // Generate Form Data for request
    final _data = FormData.fromMap(UserDTO(phone: phone?.trim().removeNewLines().trimWhiteSpaces()).toJson());
    // Perform PUT request to update user's profile
    return _dio.post(EndPoints.UPDATE_PHONE, data: _data);
  }

  Future<Response<dynamic>> updatePassword({
    required String? current,
    required String? newPassword,
    required String? confirmation,
  }) {
    // Generate Form Data for request
    final data = UserDTO(
      oldPassword: current,
      password: newPassword,
      confirmation: confirmation,
    ).toJson();
    // Perform PUT request to update user's profile
    return _dio.patch(EndPoints.UPDATE_PASSWORD, data: data);
  }

  Future<Response<dynamic>> signInWithGoogle(String? token) async {
    return _dio.post(EndPoints.GOOGLE_SIGNIN, data: {'$socialsTokenKey': token});
  }

  Future<Response<dynamic>> signInWithApple(String? token) async {
    return _dio.post(EndPoints.APPLE_SIGNIN, data: {'$socialsTokenKey': token});
  }

  Future<Response<dynamic>> updateSocialsProfile(UserDTO dto) async {
    // Perform POST request to update user's profile
    return _dio.post('EndPoints.UPDATE_USER_PROFILE', data: dto.toJson());
  }

  Future<Response<dynamic>> deleteAccount() async {
    // Perform request to reset user's password
    return _dio.delete('EndPoints.DELETE_USER_ACCOUNT');
  }

  Future<Either<AppHttpResponse, UserDTO?>> getUser([
    VoidCallback? callback,
  ]) async {
    try {
      final _result = (await getIt<AppHttpClient>().get(EndPoints.GET_USER)).data as Map<String, dynamic>;

      final _response = AppHttpResponse.fromJson(_result);

      if (_result.containsKey('status')) {
        return _response.response.map(
          info: (info) => left(_response),
          error: (error) => left(_response.copyWith(response: _response.response, data: _result)),
          success: (_) {
            preferences.remove(Const.kPhoneNumberPrefKey);
            return right(RegisteredUserDTO.fromJson(_result).data);
          },
        );
      } else {
        return right(RegisteredUserDTO.fromJson(_result).data);
      }
    } on AppHttpResponse catch (e, tr) {
      return _catchBlock(e, callback, tr);
    } on AppNetworkException catch (e, tr) {
      return _catchBlock(e.asResponse(), callback, tr);
    }
  }

  Future<Either<AppHttpResponse, UserDTO?>> _catchBlock(
    AppHttpResponse e, [
    VoidCallback? callback,
    StackTrace? trace,
  ]) async {
    // If callback is not-null, call the method
    callback?.call();

    switch (e.reason) {
      case AppNetworkExceptionReason.timedOut:
      case AppNetworkExceptionReason.cancelled:
        return left(e);
      case AppNetworkExceptionReason.responseError:
      default:
        await env.flavor.fold(
          prod: () async => // Log Inknown Exceptions to Firebase Analytics
              await getIt<FirebaseCrashlytics>().recordFlutterError(
            FlutterErrorDetails(exception: e.message, stack: trace),
          ),
        );
        return left(e);
    }
  }
}
