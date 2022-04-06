library auth_cubit.dart;

import 'dart:io';

import 'package:auctionvillage/core/data/response/index.dart';
import 'package:auctionvillage/core/domain/entities/entities.dart';
import 'package:auctionvillage/core/presentation/managers/managers.dart';
import 'package:auctionvillage/features/auth/domain/index.dart';
import 'package:auctionvillage/features/auth/presentation/managers/watcher/auth_watcher_cubit.dart';
import 'package:auctionvillage/manager/locator/locator.dart';
import 'package:auctionvillage/manager/settings/external/preference_repository.dart';
import 'package:auctionvillage/utils/utils.dart';
import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image_picker/image_picker.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/collection.dart';

part 'auth_cubit.freezed.dart';
part 'auth_state.dart';

@injectable
class AuthCubit extends Cubit<AuthState> with BaseCubit<AuthState>, _ImagePickerMixin {
  final AuthFacade _auth;
  final PreferenceRepository _preferences;
  User? _temp = User.blank();

  AuthCubit(
    this._auth,
    this._preferences,
  ) : super(AuthState.initial());

  @override
  Future<void> close() {
    // state.phoneTextController.dispose();
    return super.close();
  }

  KtList<Country> get countries => getIt<AuthWatcherCubit>().state.countries;

  Country? get _defaultCountry => countries.firstOrNull((e) => e.iso.getOrNull?.toLowerCase() == Country.defaultISO.toLowerCase());

  Future<Phone?> _parsePhoneNumber(String? phone) async {
    try {
      final _phoneNumberData = await phone?.let((it) async => await PhoneNumber.getRegionInfoFromPhoneNumber(it));

      final _country = countries.firstOrNull((e) => e.iso.getOrNull?.toLowerCase() == _phoneNumberData?.isoCode?.toLowerCase());

      countryChanged(_country);

      return _phoneNumberData?.let((it) => Phone(it.phoneNumber, country: _country));
    } catch (e, tr) {
      await App.report(exception: e, stack: tr);
      return null;
    }
  }

  void init({bool loader = false}) async {
    if (loader) toggleLoading(true, none());

    Future.delayed(const Duration(milliseconds: 8), () => toggleLoading(false));

    // Retrieve stored / cached user data
    final _cached = await _preferences.getString(Const.kPhoneNumberPrefKey);

    User? _user = state.user;

    Phone? _phoneNumber;

    _phoneNumber = await _parsePhoneNumber(_cached);

    _user = (await _auth.user).getOrElse(() => state.user);

    final p = ((_user?.phone.getOrNull != null && !_user!.phone.getOrNull!.startsWith('+')))
        ? '+${_user.phone.getOrNull}'
        : _user?.phone.getOrNull;
    _phoneNumber = await _parsePhoneNumber(p);

    if (_phoneNumber?.getOrNull == null) countryChanged();

    _user = _user?.copyWith(phone: _phoneNumber ?? _user.phone.ensure((p0) => (p0 as Phone), orElse: (_) => state.user.phone));

    _temp = _user;

    emit(state.copyWith(
      user: _user!,
      phoneTextController: state.phoneTextController..text = _phoneNumber?.noDialCode?.getOrNull ?? '',
    ));

    if (loader) toggleLoading(false);
  }

  void initSocials() async {
    toggleLoading(true, none());

    final _value = await _auth.user;

    _value.fold(
      () => null,
      (user) {
        // full name
        final fullName = user?.firstName.getOrNull?.split(' ');
        // first name
        final firstName = fullName != null && fullName.isNotEmpty ? DisplayName(fullName[0]) : user?.firstName;
        final lastName = fullName != null && fullName.length > 1 ? DisplayName(fullName[1]) : user?.lastName;

        if (!isClosed)
          emit(state.copyWith(
            user: user?.copyWith(firstName: firstName!, lastName: lastName!) ?? state.user,
          ));
      },
    );

    if (!isClosed) toggleLoading(false);
  }

  bool get isDirty => _temp != state.user;

  void toggleLoading([bool? isLoading, Option<AppHttpResponse?>? status]) =>
      emit(state.copyWith(isLoading: isLoading ?? !state.isLoading, status: status ?? state.status));

  void toggleOldPasswordVisibility() => emit(state.copyWith(isOldPasswordHidden: !state.isOldPasswordHidden));

  void togglePasswordVisibility() => emit(state.copyWith(isPasswordHidden: !state.isPasswordHidden));

  void firstNameChanged(String value) => emit(state.copyWith.user(firstName: DisplayName(value.trim())));

  void lastNameChanged(String value) => emit(state.copyWith.user(lastName: DisplayName(value.trim())));

  void emailChanged(String value) => emit(state.copyWith.user(email: EmailAddress(value.trim())));

  void oldPasswordChanged(String value) => emit(state.copyWith(oldPassword: Password(value)));

  void countryChanged([Country? country]) {
    phoneNumberChanged(state.phoneTextController.text);

    emit(state.copyWith.user(
      phone: state.user.phone.copyWith(state.user.phone.getOrNull, country: country),
      country: country,
    ));
  }

  void passwordChanged(String value) => emit(state.copyWith(
        passwordMatches: state.confirmPassword.compare(value),
        user: state.user.copyWith(password: Password(value)),
      ));

  void passwordConfirmationChanged(String value) {
    emit(state.copyWith(
      passwordMatches: state.user.password.compare(value),
      confirmPassword: Password(value),
    ));
  }

  void toggleAcceptTerms([bool? value]) => emit(state.copyWith(acceptedTerms: value ?? !state.acceptedTerms));

  void phoneNumberChanged(String value) async {
    final country = state.user.phone.country ?? _defaultCountry;
    var phoneNumber = value;

    try {
      if (value.length > 2) {
        var number = await PhoneNumber.getRegionInfoFromPhoneNumber(value, country?.iso.getOrNull ?? '');
        var _parsed = await PhoneNumber.getParsableNumber(number);
        if (_parsed.isNotEmpty) phoneNumber = _parsed;
      }
    } catch (e, tr) {
      await App.report(exception: e, stack: tr);
    }

    emit(state.copyWith(
      user: state.user.copyWith(phone: Phone(value.trim(), country: country)),
      phoneTextController: state.phoneTextController
        ..text = phoneNumber
        ..value = TextEditingValue(
          text: phoneNumber,
          selection: TextSelection.fromPosition(TextPosition(offset: phoneNumber.length)),
        ),
    ));
  }

  void otpCodeChanged(String value) => emit(state.copyWith(code: OTPCode(value, AuthState.OTP_CODE_LENGTH)));

  void createAccount() async {
    toggleLoading(true, none());

    AppHttpResponse? result;

    if (!state.acceptedTerms) {
      emit(state.copyWith(
        status: some(AppHttpResponse.failure('Please accept the Terms of Use!')),
        isLoading: false,
      ));
      return;
    }

    env.flavor.fold(
      dev: () {
        if (state.user.login.isSome()) {
          toggleAcceptTerms(true);

          if (state.user.firstName.getOrNull == null) firstNameChanged('Dummy');
          if (state.user.lastName.getOrNull == null) lastNameChanged('Joe');
          if (state.user.email.getOrNull == null) emailChanged('${UniqueId.v4().value}@forx.anonaddy.com');
          if (state.user.phone.getOrNull == null) phoneNumberChanged('${UniqueId.int(500000000, 4699999999).value}');
          if (state.user.password.getOrNull == null) passwordChanged('password');
        }
      },
      prod: () => null,
    );

    // Enable form validation
    emit(state.copyWith(validate: true, status: none()));

    if (state.user.signup.isNone()) {
      // Attempt Authentication
      result = await _auth.createAccount(
        firstName: state.user.firstName,
        lastName: state.user.lastName,
        emailAddress: state.user.email,
        password: state.user.password,
        phone: state.user.phone.formatted!,
      );

      // emit status
      emit(state.copyWith(status: optionOf(result)));
    }

    toggleLoading(false);
  }

  void login() async {
    toggleLoading(true, none());

    AppHttpResponse? result;

    env.flavor.fold(
      dev: () {
        if (state.user.login.isSome()) {
          emailChanged('brianna@forx.anonaddy.com');
          passwordChanged('password');
        }
      },
      prod: () => null,
    );

    // Enable form validation
    emit(state.copyWith(validate: true, status: none()));

    if (state.user.login.isNone()) {
      // Attempt Authentication
      result = await _auth.login(
        email: state.user.email,
        password: state.user.password,
      );

      emit(state.copyWith(
        status: optionOf(result.copyWith(
          response: result.response.maybeMap(
            success: (s) => s.copyWith(pop: true),
            orElse: () => result!.response,
          ),
        )),
      ));
    }

    toggleLoading(false);
  }

  Future<void> verifyPhone() async {
    toggleLoading(true, none());

    AppHttpResponse result;

    // Enable form validation
    emit(state.copyWith(validate: true, status: none()));

    if (state.user.phone.isValid && state.code.isValid) {
      result = await _auth.verifyPhoneNumber(
        phone: state.user.phone.formatted!,
        token: state.code,
      );

      await result.response.maybeMap(
        orElse: () async => null,
        success: (s) async => await _preferences.remove(Const.kPhoneNumberPrefKey),
      );

      emit(state.copyWith(
        status: optionOf(
          result.copyWith(
            response: result.response.maybeMap(
              success: (s) => s.copyWith(pop: true),
              orElse: () => result.response,
            ),
          ),
        ),
      ));
    }

    toggleLoading(false);
  }

  Future<bool> forgotPassword([bool pop = true]) async {
    toggleLoading(true, none());

    AppHttpResponse? result;

    // Enable form validation
    emit(state.copyWith(validate: true, status: none()));

    if (state.user.phone.isValid) {
      final phone = state.user.phone.formatted?.getOrNull != null ? state.user.phone.formatted! : state.user.phone;

      result = await _auth.sendPasswordResetInstructions(phone);

      await result.response.maybeMap(
        orElse: () async => null,
        success: (s) async => await _preferences.setString(
          key: Const.kPhoneNumberPrefKey,
          value: phone.getOrEmpty!,
        ),
      );

      emit(state.copyWith(
        status: optionOf(
          result.copyWith(
            response: result.response.maybeMap(
              success: (s) => s.copyWith(pop: pop),
              orElse: () => result!.response,
            ),
          ),
        ),
      ));
    }

    toggleLoading(false);

    return result?.response.mapOrNull(success: (_) => true) ?? false;
  }

  void resetPassword() async {
    toggleLoading(true, none());

    AppHttpResponse result;

    // Enable form validation
    emit(state.copyWith(validate: true, status: none()));

    if (state.user.phone.isValid &&
        state.user.password.isValid &&
        state.code.isValid &&
        state.confirmPassword.isValid &&
        state.passwordMatches) {
      result = await _auth.confirmPasswordReset(
        code: state.code,
        phone: state.user.phone.formatted!,
        newPassword: state.user.password,
        confirmation: state.confirmPassword,
      );

      await result.response.maybeMap(
        orElse: () async => null,
        success: (s) async => await _preferences.remove(Const.kPhoneNumberPrefKey),
      );

      emit(state.copyWith(
        status: optionOf(
          result.copyWith(
            response: result.response.maybeMap(
              success: (s) => s.copyWith(pop: true),
              orElse: () => result.response,
            ),
          ),
        ),
      ));
    }

    toggleLoading(false);
  }

  void updateProfile() async {
    toggleLoading(true, none());

    AppHttpResponse result;

    // Enable form validation
    emit(state.copyWith(validate: true, status: none()));

    if (state.user.profile.isNone()) {
      result = await _auth.updateProfile(
        state.user,
        firstName: state.user.firstName,
        lastName: state.user.lastName,
        email: state.user.email,
        image: state.selectedPhoto,
      );

      emit(state.copyWith(
        status: optionOf(
          result.copyWith(
            response: result.response.maybeMap(
              success: (s) => s.copyWith(pop: true),
              orElse: () => result.response,
            ),
          ),
        ),
      ));
    }

    toggleLoading(false);
  }

  Future<void> sendPhoneUpdateOTP([bool shouldPop = true]) async {
    toggleLoading(true, none());

    AppHttpResponse result;

    // Enable form validation
    emit(state.copyWith(validate: true, status: none()));

    if (state.user.phone.isValid) {
      result = await _auth.updatePhone(state.user.phone.formatted!);

      emit(state.copyWith(
        status: optionOf(
          result.copyWith(
            response: result.response.maybeMap(
              success: (s) => s.copyWith(pop: shouldPop),
              orElse: () => result.response,
            ),
          ),
        ),
      ));
    }

    toggleLoading(false);
  }

  void sleep() async {
    toggleLoading();
    // Enable form validation
    emit(state.copyWith(validate: true, status: none()));

    await _auth.sleep();

    toggleLoading();
  }

  Future<void> googleAuth([bool notify = false]) async {
    emit(state.copyWith(isGoogleAuthLoading: true, status: none()));

    var result = await _auth.googleAuthentication(notify);

    emit(state.copyWith(status: result));
    emit(state.copyWith(isGoogleAuthLoading: false));
  }

  Future<void> appleAuth([bool notify = false]) async {
    emit(state.copyWith(isAppleAuthLoading: true, status: none()));

    var result = await _auth.appleAuthentication(notify);

    emit(state.copyWith(status: result));
    emit(state.copyWith(isAppleAuthLoading: false));
  }

  void updateSocialsProfile() async {
    toggleLoading(true, none());

    Option<AppHttpResponse?> result;

    // Enable form validation
    emit(state.copyWith(validate: true, status: none()));

    if (state.user.socials.isNone()) {
      result = await _auth.updateSocialsProfile(
        firstName: state.user.firstName,
        lastName: state.user.lastName,
        email: state.user.email,
        phone: state.user.phone.formatted,
      );

      emit(state.copyWith(status: result));

      await _auth.sink();
    }

    toggleLoading(false);
  }

  void updatePassword() async {
    toggleLoading(true, none());

    AppHttpResponse result;

    // Enable form validation
    emit(state.copyWith(validate: true, status: none()));

    if (state.oldPassword.isValid && state.user.password.isValid && state.confirmPassword.isValid && state.passwordMatches) {
      result = await _auth.updatePassword(
        current: state.oldPassword,
        newPassword: state.user.password,
        confirmation: state.confirmPassword,
      );

      emit(state.copyWith(
        status: optionOf(
          result.copyWith(
            response: result.response.maybeMap(
              success: (s) => s.copyWith(pop: true),
              orElse: () => result.response,
            ),
          ),
        ),
      ));
    }

    toggleLoading(false);
  }

  Future<void> deleteAccount() async {
    toggleLoading(true, none());

    final result = await _auth.deleteAccount();

    emit(state.copyWith(status: some(result)));

    toggleLoading(false);
  }
}

mixin _ImagePickerMixin on Cubit<AuthState> {
  final ImagePicker _picker = ImagePicker();

  void pickImage(ImageSource source) async {
    File? file;
    var fileSize = 0;

    var _result = await _picker.pickImage(source: source);

    if (_result == null)
      file = await _attemptFileRetrieval(_picker);
    else {
      file = File(_result.path);
      fileSize = file.lengthSync();
    }

    if (fileSize > Const.maxImageUploadSize) {
      emit(state.copyWith(
        status: some(AppHttpResponse.failure(
          'Max. image upload size is ${(Const.maxImageUploadSize / 1e+6).ceil()}MB',
        )),
      ));
      return;
    }

    if (file != null) emit(state.copyWith(selectedPhoto: file));
  }

  Future<File?> _attemptFileRetrieval(ImagePicker? picker) async {
    if (picker == null) return null;
    final _response = await _picker.retrieveLostData();
    if (!_response.isEmpty && _response.file != null) return File(_response.file!.path);
    return null;
  }
}
