part of 'auth_cubit.dart';

@freezed
class AuthState extends BaseState with _$AuthState {
  static const int OTP_CODE_LENGTH = 4;
  static final GlobalKey loginFormKey = GlobalKey<FormState>();
  static final GlobalKey signupFormKey = GlobalKey<FormState>();
  static final GlobalKey forgotPasswordFormKey = GlobalKey<FormState>();
  static final FocusNode firstNameFocus = FocusNode();
  static final FocusNode lastNameFocus = FocusNode();
  static final FocusNode newEmailFocus = FocusNode();
  static final FocusNode emailFocus = FocusNode();
  static final FocusNode phoneFocus = FocusNode();
  static final FocusNode newPhoneFocus = FocusNode();
  static final FocusNode tokenFocus = FocusNode();
  static final FocusNode resetPasswordFocus = FocusNode();
  static final FocusNode oldPasswordFocus = FocusNode();
  static final FocusNode newPasswordFocus = FocusNode();
  static final FocusNode passwordFocus = FocusNode();
  static final FocusNode passwordConfirmationFocus = FocusNode();

  const factory AuthState({
    @Default(false) bool isLoading,
    @Default(false) bool isUploadingImage,
    @Default(false) bool validate,
    @Default(true) bool isPasswordHidden,
    @Default(true) bool isOldPasswordHidden,
    @Default(false) bool passwordMatches,
    @Default(false) bool isGoogleAuthLoading,
    @Default(false) bool isAppleAuthLoading,
    required Password oldPassword,
    required Password confirmPassword,
    required OTPCode code,
    required User user,
    required TextEditingController phoneTextController,
    @Default(false) bool acceptedTerms,
    @Default(None()) Option<AppHttpResponse?> status,
  }) = _AuthState;

  const AuthState._();

  factory AuthState.initial() => AuthState(
        user: User.blank(),
        code: OTPCode(null),
        oldPassword: Password(null),
        confirmPassword: Password(null),
        phoneTextController: TextEditingController(),
      );
}
