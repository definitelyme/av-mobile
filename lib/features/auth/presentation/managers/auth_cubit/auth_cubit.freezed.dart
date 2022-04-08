// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of auth_cubit.dart;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AuthStateTearOff {
  const _$AuthStateTearOff();

  _AuthState call(
      {bool isLoading = false,
      bool isUploadingImage = false,
      bool validate = false,
      bool isPasswordHidden = true,
      bool isOldPasswordHidden = true,
      bool passwordMatches = false,
      bool isGoogleAuthLoading = false,
      bool isAppleAuthLoading = false,
      required Password oldPassword,
      required Password confirmPassword,
      required OTPCode code,
      required User user,
      required TextEditingController phoneTextController,
      bool acceptedTerms = false,
      Option<AppHttpResponse?> status = const None()}) {
    return _AuthState(
      isLoading: isLoading,
      isUploadingImage: isUploadingImage,
      validate: validate,
      isPasswordHidden: isPasswordHidden,
      isOldPasswordHidden: isOldPasswordHidden,
      passwordMatches: passwordMatches,
      isGoogleAuthLoading: isGoogleAuthLoading,
      isAppleAuthLoading: isAppleAuthLoading,
      oldPassword: oldPassword,
      confirmPassword: confirmPassword,
      code: code,
      user: user,
      phoneTextController: phoneTextController,
      acceptedTerms: acceptedTerms,
      status: status,
    );
  }
}

/// @nodoc
const $AuthState = _$AuthStateTearOff();

/// @nodoc
mixin _$AuthState {
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isUploadingImage => throw _privateConstructorUsedError;
  bool get validate => throw _privateConstructorUsedError;
  bool get isPasswordHidden => throw _privateConstructorUsedError;
  bool get isOldPasswordHidden => throw _privateConstructorUsedError;
  bool get passwordMatches => throw _privateConstructorUsedError;
  bool get isGoogleAuthLoading => throw _privateConstructorUsedError;
  bool get isAppleAuthLoading => throw _privateConstructorUsedError;
  Password get oldPassword => throw _privateConstructorUsedError;
  Password get confirmPassword => throw _privateConstructorUsedError;
  OTPCode get code => throw _privateConstructorUsedError;
  User get user => throw _privateConstructorUsedError;
  TextEditingController get phoneTextController =>
      throw _privateConstructorUsedError;
  bool get acceptedTerms => throw _privateConstructorUsedError;
  Option<AppHttpResponse?> get status => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AuthStateCopyWith<AuthState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res>;
  $Res call(
      {bool isLoading,
      bool isUploadingImage,
      bool validate,
      bool isPasswordHidden,
      bool isOldPasswordHidden,
      bool passwordMatches,
      bool isGoogleAuthLoading,
      bool isAppleAuthLoading,
      Password oldPassword,
      Password confirmPassword,
      OTPCode code,
      User user,
      TextEditingController phoneTextController,
      bool acceptedTerms,
      Option<AppHttpResponse?> status});

  $UserCopyWith<$Res> get user;
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res> implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  final AuthState _value;
  // ignore: unused_field
  final $Res Function(AuthState) _then;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? isUploadingImage = freezed,
    Object? validate = freezed,
    Object? isPasswordHidden = freezed,
    Object? isOldPasswordHidden = freezed,
    Object? passwordMatches = freezed,
    Object? isGoogleAuthLoading = freezed,
    Object? isAppleAuthLoading = freezed,
    Object? oldPassword = freezed,
    Object? confirmPassword = freezed,
    Object? code = freezed,
    Object? user = freezed,
    Object? phoneTextController = freezed,
    Object? acceptedTerms = freezed,
    Object? status = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isUploadingImage: isUploadingImage == freezed
          ? _value.isUploadingImage
          : isUploadingImage // ignore: cast_nullable_to_non_nullable
              as bool,
      validate: validate == freezed
          ? _value.validate
          : validate // ignore: cast_nullable_to_non_nullable
              as bool,
      isPasswordHidden: isPasswordHidden == freezed
          ? _value.isPasswordHidden
          : isPasswordHidden // ignore: cast_nullable_to_non_nullable
              as bool,
      isOldPasswordHidden: isOldPasswordHidden == freezed
          ? _value.isOldPasswordHidden
          : isOldPasswordHidden // ignore: cast_nullable_to_non_nullable
              as bool,
      passwordMatches: passwordMatches == freezed
          ? _value.passwordMatches
          : passwordMatches // ignore: cast_nullable_to_non_nullable
              as bool,
      isGoogleAuthLoading: isGoogleAuthLoading == freezed
          ? _value.isGoogleAuthLoading
          : isGoogleAuthLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isAppleAuthLoading: isAppleAuthLoading == freezed
          ? _value.isAppleAuthLoading
          : isAppleAuthLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      oldPassword: oldPassword == freezed
          ? _value.oldPassword
          : oldPassword // ignore: cast_nullable_to_non_nullable
              as Password,
      confirmPassword: confirmPassword == freezed
          ? _value.confirmPassword
          : confirmPassword // ignore: cast_nullable_to_non_nullable
              as Password,
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as OTPCode,
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
      phoneTextController: phoneTextController == freezed
          ? _value.phoneTextController
          : phoneTextController // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
      acceptedTerms: acceptedTerms == freezed
          ? _value.acceptedTerms
          : acceptedTerms // ignore: cast_nullable_to_non_nullable
              as bool,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Option<AppHttpResponse?>,
    ));
  }

  @override
  $UserCopyWith<$Res> get user {
    return $UserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc
abstract class _$AuthStateCopyWith<$Res> implements $AuthStateCopyWith<$Res> {
  factory _$AuthStateCopyWith(
          _AuthState value, $Res Function(_AuthState) then) =
      __$AuthStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool isLoading,
      bool isUploadingImage,
      bool validate,
      bool isPasswordHidden,
      bool isOldPasswordHidden,
      bool passwordMatches,
      bool isGoogleAuthLoading,
      bool isAppleAuthLoading,
      Password oldPassword,
      Password confirmPassword,
      OTPCode code,
      User user,
      TextEditingController phoneTextController,
      bool acceptedTerms,
      Option<AppHttpResponse?> status});

  @override
  $UserCopyWith<$Res> get user;
}

/// @nodoc
class __$AuthStateCopyWithImpl<$Res> extends _$AuthStateCopyWithImpl<$Res>
    implements _$AuthStateCopyWith<$Res> {
  __$AuthStateCopyWithImpl(_AuthState _value, $Res Function(_AuthState) _then)
      : super(_value, (v) => _then(v as _AuthState));

  @override
  _AuthState get _value => super._value as _AuthState;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? isUploadingImage = freezed,
    Object? validate = freezed,
    Object? isPasswordHidden = freezed,
    Object? isOldPasswordHidden = freezed,
    Object? passwordMatches = freezed,
    Object? isGoogleAuthLoading = freezed,
    Object? isAppleAuthLoading = freezed,
    Object? oldPassword = freezed,
    Object? confirmPassword = freezed,
    Object? code = freezed,
    Object? user = freezed,
    Object? phoneTextController = freezed,
    Object? acceptedTerms = freezed,
    Object? status = freezed,
  }) {
    return _then(_AuthState(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isUploadingImage: isUploadingImage == freezed
          ? _value.isUploadingImage
          : isUploadingImage // ignore: cast_nullable_to_non_nullable
              as bool,
      validate: validate == freezed
          ? _value.validate
          : validate // ignore: cast_nullable_to_non_nullable
              as bool,
      isPasswordHidden: isPasswordHidden == freezed
          ? _value.isPasswordHidden
          : isPasswordHidden // ignore: cast_nullable_to_non_nullable
              as bool,
      isOldPasswordHidden: isOldPasswordHidden == freezed
          ? _value.isOldPasswordHidden
          : isOldPasswordHidden // ignore: cast_nullable_to_non_nullable
              as bool,
      passwordMatches: passwordMatches == freezed
          ? _value.passwordMatches
          : passwordMatches // ignore: cast_nullable_to_non_nullable
              as bool,
      isGoogleAuthLoading: isGoogleAuthLoading == freezed
          ? _value.isGoogleAuthLoading
          : isGoogleAuthLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isAppleAuthLoading: isAppleAuthLoading == freezed
          ? _value.isAppleAuthLoading
          : isAppleAuthLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      oldPassword: oldPassword == freezed
          ? _value.oldPassword
          : oldPassword // ignore: cast_nullable_to_non_nullable
              as Password,
      confirmPassword: confirmPassword == freezed
          ? _value.confirmPassword
          : confirmPassword // ignore: cast_nullable_to_non_nullable
              as Password,
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as OTPCode,
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
      phoneTextController: phoneTextController == freezed
          ? _value.phoneTextController
          : phoneTextController // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
      acceptedTerms: acceptedTerms == freezed
          ? _value.acceptedTerms
          : acceptedTerms // ignore: cast_nullable_to_non_nullable
              as bool,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Option<AppHttpResponse?>,
    ));
  }
}

/// @nodoc

class _$_AuthState extends _AuthState {
  const _$_AuthState(
      {this.isLoading = false,
      this.isUploadingImage = false,
      this.validate = false,
      this.isPasswordHidden = true,
      this.isOldPasswordHidden = true,
      this.passwordMatches = false,
      this.isGoogleAuthLoading = false,
      this.isAppleAuthLoading = false,
      required this.oldPassword,
      required this.confirmPassword,
      required this.code,
      required this.user,
      required this.phoneTextController,
      this.acceptedTerms = false,
      this.status = const None()})
      : super._();

  @JsonKey()
  @override
  final bool isLoading;
  @JsonKey()
  @override
  final bool isUploadingImage;
  @JsonKey()
  @override
  final bool validate;
  @JsonKey()
  @override
  final bool isPasswordHidden;
  @JsonKey()
  @override
  final bool isOldPasswordHidden;
  @JsonKey()
  @override
  final bool passwordMatches;
  @JsonKey()
  @override
  final bool isGoogleAuthLoading;
  @JsonKey()
  @override
  final bool isAppleAuthLoading;
  @override
  final Password oldPassword;
  @override
  final Password confirmPassword;
  @override
  final OTPCode code;
  @override
  final User user;
  @override
  final TextEditingController phoneTextController;
  @JsonKey()
  @override
  final bool acceptedTerms;
  @JsonKey()
  @override
  final Option<AppHttpResponse?> status;

  @override
  String toString() {
    return 'AuthState(isLoading: $isLoading, isUploadingImage: $isUploadingImage, validate: $validate, isPasswordHidden: $isPasswordHidden, isOldPasswordHidden: $isOldPasswordHidden, passwordMatches: $passwordMatches, isGoogleAuthLoading: $isGoogleAuthLoading, isAppleAuthLoading: $isAppleAuthLoading, oldPassword: $oldPassword, confirmPassword: $confirmPassword, code: $code, user: $user, phoneTextController: $phoneTextController, acceptedTerms: $acceptedTerms, status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AuthState &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading) &&
            const DeepCollectionEquality()
                .equals(other.isUploadingImage, isUploadingImage) &&
            const DeepCollectionEquality().equals(other.validate, validate) &&
            const DeepCollectionEquality()
                .equals(other.isPasswordHidden, isPasswordHidden) &&
            const DeepCollectionEquality()
                .equals(other.isOldPasswordHidden, isOldPasswordHidden) &&
            const DeepCollectionEquality()
                .equals(other.passwordMatches, passwordMatches) &&
            const DeepCollectionEquality()
                .equals(other.isGoogleAuthLoading, isGoogleAuthLoading) &&
            const DeepCollectionEquality()
                .equals(other.isAppleAuthLoading, isAppleAuthLoading) &&
            const DeepCollectionEquality()
                .equals(other.oldPassword, oldPassword) &&
            const DeepCollectionEquality()
                .equals(other.confirmPassword, confirmPassword) &&
            const DeepCollectionEquality().equals(other.code, code) &&
            const DeepCollectionEquality().equals(other.user, user) &&
            const DeepCollectionEquality()
                .equals(other.phoneTextController, phoneTextController) &&
            const DeepCollectionEquality()
                .equals(other.acceptedTerms, acceptedTerms) &&
            const DeepCollectionEquality().equals(other.status, status));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(isLoading),
      const DeepCollectionEquality().hash(isUploadingImage),
      const DeepCollectionEquality().hash(validate),
      const DeepCollectionEquality().hash(isPasswordHidden),
      const DeepCollectionEquality().hash(isOldPasswordHidden),
      const DeepCollectionEquality().hash(passwordMatches),
      const DeepCollectionEquality().hash(isGoogleAuthLoading),
      const DeepCollectionEquality().hash(isAppleAuthLoading),
      const DeepCollectionEquality().hash(oldPassword),
      const DeepCollectionEquality().hash(confirmPassword),
      const DeepCollectionEquality().hash(code),
      const DeepCollectionEquality().hash(user),
      const DeepCollectionEquality().hash(phoneTextController),
      const DeepCollectionEquality().hash(acceptedTerms),
      const DeepCollectionEquality().hash(status));

  @JsonKey(ignore: true)
  @override
  _$AuthStateCopyWith<_AuthState> get copyWith =>
      __$AuthStateCopyWithImpl<_AuthState>(this, _$identity);
}

abstract class _AuthState extends AuthState {
  const factory _AuthState(
      {bool isLoading,
      bool isUploadingImage,
      bool validate,
      bool isPasswordHidden,
      bool isOldPasswordHidden,
      bool passwordMatches,
      bool isGoogleAuthLoading,
      bool isAppleAuthLoading,
      required Password oldPassword,
      required Password confirmPassword,
      required OTPCode code,
      required User user,
      required TextEditingController phoneTextController,
      bool acceptedTerms,
      Option<AppHttpResponse?> status}) = _$_AuthState;
  const _AuthState._() : super._();

  @override
  bool get isLoading;
  @override
  bool get isUploadingImage;
  @override
  bool get validate;
  @override
  bool get isPasswordHidden;
  @override
  bool get isOldPasswordHidden;
  @override
  bool get passwordMatches;
  @override
  bool get isGoogleAuthLoading;
  @override
  bool get isAppleAuthLoading;
  @override
  Password get oldPassword;
  @override
  Password get confirmPassword;
  @override
  OTPCode get code;
  @override
  User get user;
  @override
  TextEditingController get phoneTextController;
  @override
  bool get acceptedTerms;
  @override
  Option<AppHttpResponse?> get status;
  @override
  @JsonKey(ignore: true)
  _$AuthStateCopyWith<_AuthState> get copyWith =>
      throw _privateConstructorUsedError;
}
