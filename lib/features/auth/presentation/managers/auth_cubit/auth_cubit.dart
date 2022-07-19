library auth_cubit.dart;

import 'dart:async';
import 'dart:io';

import 'package:auctionvillage/core/data/index.dart';
import 'package:auctionvillage/core/domain/entities/entities.dart';
import 'package:auctionvillage/core/presentation/managers/managers.dart';
import 'package:auctionvillage/features/auth/domain/index.dart';
import 'package:auctionvillage/features/auth/presentation/managers/managers.dart';
import 'package:auctionvillage/features/dashboard/presentation/managers/index.dart';
import 'package:auctionvillage/utils/utils.dart';
import 'package:cloudinary_public/cloudinary_public.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image_picker/image_picker.dart';
import 'package:injectable/injectable.dart';

part 'auth_cubit.freezed.dart';
part 'auth_state.dart';

@injectable
class AuthCubit extends BaseCubit<AuthState> {
  final AuthFacade _auth;

  final CloudinaryPublic _cloudinary;
  final _picker = ImagePicker();
  User? _temp = User.blank();

  AuthCubit(this._auth, this._cloudinary) : super(AuthState.initial());

  void init({bool loader = false}) async {
    toggleLoading(loader, none());

    // Retrieve stored / cached user data
    final cached = await HiveClient.settingsBox?.get(Const.kPhoneNumberPrefKey) as String?;

    User? _user = state.user;

    Phone? _phoneNumber;

    _phoneNumber = await Phone.parseString(cached, format: true);

    Future.delayed(Duration(milliseconds: env.connectTimeout), () => toggleLoading(false));

    _user = (await _auth.user).getOrElse(() => state.user);

    final p = ((_user?.phone.getOrNull != null && !_user!.phone.getOrNull!.startsWith('+')))
        ? '+${_user.phone.getOrNull}'
        : _user?.phone.getOrNull;
    _phoneNumber = await Phone.parseString(p, format: true);

    if (_phoneNumber?.getOrNull == null) countryChanged();

    _user = _user?.copyWith(phone: _phoneNumber ?? _user.phone.ensure((p0) => p0 as Phone, orElse: (_) => state.user.phone));

    _temp = _user;

    emit(state.copyWith(
      user: _user!,
      phoneTextController: state.phoneTextController..text = _phoneNumber?.getOrNull ?? '',
    ));

    toggleLoading(false);
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

  void initReset() {
    final _cache = _auth.getCacheEmail();
    emit(state.copyWith.user(email: _cache ?? state.user.email));
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

  void countryChanged([Country? country]) => phoneNumberChanged(state.phoneTextController.text, country: country);

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

  void phoneNumberChanged(String value, {Country? country, bool format = true}) async {
    final _country = country ?? state.user.phone.country;

    final phoneNumber = await Phone.parseString(value, country: _country, format: true);

    emit(state.copyWith(
      user: state.user.copyWith(phone: phoneNumber ?? Phone(value, country: _country)),
      phoneTextController: state.phoneTextController
        ..text = phoneNumber?.getOrNull ?? ''
        ..value = TextEditingValue(
          text: phoneNumber?.getOrNull ?? '',
          selection: TextSelection.fromPosition(TextPosition(offset: (phoneNumber?.getOrNull ?? '').length)),
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
          emailChanged('brendan.uk@forx.anonaddy.com');
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

    AppHttpResponse? result;

    // Enable form validation
    emit(state.copyWith(validate: true, status: none()));

    if (state.user.profile.isNone()) {
      result = await _auth.updateProfile(
        state.user,
        firstName: state.user.firstName,
        lastName: state.user.lastName,
        email: state.user.email,
        photo: state.user.photo,
        phone: state.user.phone,
      );

      emit(state.copyWith(status: optionOf(result)));
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

    try {
      final result = await _auth.deleteAccount();
      emit(state.copyWith(status: some(result)));
    } catch (e) {
      await navigator.navigatorKey.currentContext?.let((it) async {
        await it.read<AuthWatcherCubit>().signOut();
        it.read<BottomNavigationCubit>().reset();
      });
    }

    toggleLoading(false);
  }
}

extension AuthCubitX on AuthCubit {
  void pickCamera() async {
    emit(state.copyWith(isUploadingImage: true));

    try {
      final _result = await _picker.pickImage(
        source: ImageSource.camera,
        maxWidth: Const.maxImageUploadWidth,
        maxHeight: Const.maxImageUploadHeight,
        imageQuality: Const.imageQuality,
      );
      _uploadImage(_result);
    } on MissingPluginException catch (e) {
      emit(state.copyWith(
        isUploadingImage: false,
        status: some(AppHttpResponse.failure(env.flavor.fold(prod: () => 'Photo upload failed!', dev: () => e.message))),
      ));
    } catch (e) {
      emit(state.copyWith(
        isUploadingImage: false,
        status: some(AppHttpResponse.failure(env.flavor.fold(prod: () => 'Error: $e', dev: () => '$e'))),
      ));
    }
  }

  void pickGallery() async {
    emit(state.copyWith(isUploadingImage: true));

    try {
      final _result = await _picker.pickImage(
        source: ImageSource.gallery,
        maxWidth: Const.maxImageUploadWidth,
        maxHeight: Const.maxImageUploadHeight,
        imageQuality: Const.imageQuality,
      );
      _uploadImage(_result);
    } on MissingPluginException catch (e) {
      emit(state.copyWith(
        isUploadingImage: false,
        status: some(AppHttpResponse.failure(env.flavor.fold(prod: () => 'Photo upload failed!', dev: () => e.message))),
      ));
    } catch (e) {
      emit(state.copyWith(
        isUploadingImage: false,
        status: some(AppHttpResponse.failure(env.flavor.fold(prod: () => 'Error: $e', dev: () => '$e'))),
      ));
    }
  }

  void _uploadImage(XFile? xfile) async {
    File? file;
    var fileSize = 0;

    if (xfile == null)
      file = await _attemptFileRetrieval(_picker);
    else {
      file = File(xfile.path);
      fileSize = file.lengthSync();
    }

    if (fileSize > Const.maxImageUploadSize) {
      emit(state.copyWith(
        isUploadingImage: false,
        status: some(AppHttpResponse.failure(
          'Max. image upload size is ${(Const.maxImageUploadSize / 1e+6).ceil()}MB',
        )),
      ));
      return;
    }

    if (file != null) {
      try {
        final conn = await connection();

        await conn.fold(
          () async {
            final uploadableMedia = UploadableMedia(MediaField(null), id: state.user.id.value);

            final response = await _cloudinary.uploadFile(
              CloudinaryFile.fromFile(file!.path, resourceType: CloudinaryResourceType.Image),
              uploadPreset: env.uploadPreset,
              onProgress: (count, total) => emit(state.copyWith.user(
                photo: uploadableMedia.copyWith(progress: SendProgressCallback(count, total)),
              )),
            );

            final _uploaded = uploadableMedia.copyWith(image: MediaField(response.secureUrl));

            emit(state.copyWith(user: state.user.copyWith(photo: _uploaded), isUploadingImage: false));
          },
          (f) async => emit(state.copyWith(status: optionOf(f), isUploadingImage: false)),
        );
      } on CloudinaryException catch (e, tr) {
        emit(state.copyWith(
          isUploadingImage: false,
          status: optionOf(AppHttpResponse.failure('Error ${e.statusCode}: ${e.message ?? e.responseString}')),
        ));
        unawaited(App.report(e, tr));
      }
    }
  }

  Future<File?> _attemptFileRetrieval(ImagePicker? picker) async {
    if (picker == null) return null;
    final _response = await _picker.retrieveLostData();
    if (!_response.isEmpty && _response.file != null) return File(_response.file!.path);
    return null;
  }
}
