// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of wallet_cubit.dart;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$WalletState {
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isFetchingWalletBalance => throw _privateConstructorUsedError;
  bool get isFundingWallet => throw _privateConstructorUsedError;
  bool get validate => throw _privateConstructorUsedError;
  bool get isConfiguringPin => throw _privateConstructorUsedError;
  bool get isWithdrawing => throw _privateConstructorUsedError;
  bool get isResolvingAccount => throw _privateConstructorUsedError;
  bool get requestedPINReset => throw _privateConstructorUsedError;
  SecurityQuestion get securityQuestion => throw _privateConstructorUsedError;
  MoneyMaskedTextController get amountTextController =>
      throw _privateConstructorUsedError;
  NumField<double> get amount => throw _privateConstructorUsedError;
  BasicTextField get securityAnswer => throw _privateConstructorUsedError;
  OTPCode get otpCode => throw _privateConstructorUsedError;
  BankAccount? get bankAccount => throw _privateConstructorUsedError;
  UserWallet? get wallet => throw _privateConstructorUsedError;
  TextEditingController get accountNameController =>
      throw _privateConstructorUsedError;
  PaymentStatus get paymentStatus => throw _privateConstructorUsedError;
  PaymentMethod get paymentMethod => throw _privateConstructorUsedError;
  OTPCode get withdrawalPin => throw _privateConstructorUsedError;
  OTPCode get confirmWithdrawalPin => throw _privateConstructorUsedError;
  KtList<Bank> get banks => throw _privateConstructorUsedError;
  Option<AppHttpResponse?> get status => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $WalletStateCopyWith<WalletState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WalletStateCopyWith<$Res> {
  factory $WalletStateCopyWith(
          WalletState value, $Res Function(WalletState) then) =
      _$WalletStateCopyWithImpl<$Res>;
  $Res call(
      {bool isLoading,
      bool isFetchingWalletBalance,
      bool isFundingWallet,
      bool validate,
      bool isConfiguringPin,
      bool isWithdrawing,
      bool isResolvingAccount,
      bool requestedPINReset,
      SecurityQuestion securityQuestion,
      MoneyMaskedTextController amountTextController,
      NumField<double> amount,
      BasicTextField securityAnswer,
      OTPCode otpCode,
      BankAccount? bankAccount,
      UserWallet? wallet,
      TextEditingController accountNameController,
      PaymentStatus paymentStatus,
      PaymentMethod paymentMethod,
      OTPCode withdrawalPin,
      OTPCode confirmWithdrawalPin,
      KtList<Bank> banks,
      Option<AppHttpResponse?> status});

  $BankAccountCopyWith<$Res>? get bankAccount;
  $UserWalletCopyWith<$Res>? get wallet;
}

/// @nodoc
class _$WalletStateCopyWithImpl<$Res> implements $WalletStateCopyWith<$Res> {
  _$WalletStateCopyWithImpl(this._value, this._then);

  final WalletState _value;
  // ignore: unused_field
  final $Res Function(WalletState) _then;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? isFetchingWalletBalance = freezed,
    Object? isFundingWallet = freezed,
    Object? validate = freezed,
    Object? isConfiguringPin = freezed,
    Object? isWithdrawing = freezed,
    Object? isResolvingAccount = freezed,
    Object? requestedPINReset = freezed,
    Object? securityQuestion = freezed,
    Object? amountTextController = freezed,
    Object? amount = freezed,
    Object? securityAnswer = freezed,
    Object? otpCode = freezed,
    Object? bankAccount = freezed,
    Object? wallet = freezed,
    Object? accountNameController = freezed,
    Object? paymentStatus = freezed,
    Object? paymentMethod = freezed,
    Object? withdrawalPin = freezed,
    Object? confirmWithdrawalPin = freezed,
    Object? banks = freezed,
    Object? status = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isFetchingWalletBalance: isFetchingWalletBalance == freezed
          ? _value.isFetchingWalletBalance
          : isFetchingWalletBalance // ignore: cast_nullable_to_non_nullable
              as bool,
      isFundingWallet: isFundingWallet == freezed
          ? _value.isFundingWallet
          : isFundingWallet // ignore: cast_nullable_to_non_nullable
              as bool,
      validate: validate == freezed
          ? _value.validate
          : validate // ignore: cast_nullable_to_non_nullable
              as bool,
      isConfiguringPin: isConfiguringPin == freezed
          ? _value.isConfiguringPin
          : isConfiguringPin // ignore: cast_nullable_to_non_nullable
              as bool,
      isWithdrawing: isWithdrawing == freezed
          ? _value.isWithdrawing
          : isWithdrawing // ignore: cast_nullable_to_non_nullable
              as bool,
      isResolvingAccount: isResolvingAccount == freezed
          ? _value.isResolvingAccount
          : isResolvingAccount // ignore: cast_nullable_to_non_nullable
              as bool,
      requestedPINReset: requestedPINReset == freezed
          ? _value.requestedPINReset
          : requestedPINReset // ignore: cast_nullable_to_non_nullable
              as bool,
      securityQuestion: securityQuestion == freezed
          ? _value.securityQuestion
          : securityQuestion // ignore: cast_nullable_to_non_nullable
              as SecurityQuestion,
      amountTextController: amountTextController == freezed
          ? _value.amountTextController
          : amountTextController // ignore: cast_nullable_to_non_nullable
              as MoneyMaskedTextController,
      amount: amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as NumField<double>,
      securityAnswer: securityAnswer == freezed
          ? _value.securityAnswer
          : securityAnswer // ignore: cast_nullable_to_non_nullable
              as BasicTextField,
      otpCode: otpCode == freezed
          ? _value.otpCode
          : otpCode // ignore: cast_nullable_to_non_nullable
              as OTPCode,
      bankAccount: bankAccount == freezed
          ? _value.bankAccount
          : bankAccount // ignore: cast_nullable_to_non_nullable
              as BankAccount?,
      wallet: wallet == freezed
          ? _value.wallet
          : wallet // ignore: cast_nullable_to_non_nullable
              as UserWallet?,
      accountNameController: accountNameController == freezed
          ? _value.accountNameController
          : accountNameController // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
      paymentStatus: paymentStatus == freezed
          ? _value.paymentStatus
          : paymentStatus // ignore: cast_nullable_to_non_nullable
              as PaymentStatus,
      paymentMethod: paymentMethod == freezed
          ? _value.paymentMethod
          : paymentMethod // ignore: cast_nullable_to_non_nullable
              as PaymentMethod,
      withdrawalPin: withdrawalPin == freezed
          ? _value.withdrawalPin
          : withdrawalPin // ignore: cast_nullable_to_non_nullable
              as OTPCode,
      confirmWithdrawalPin: confirmWithdrawalPin == freezed
          ? _value.confirmWithdrawalPin
          : confirmWithdrawalPin // ignore: cast_nullable_to_non_nullable
              as OTPCode,
      banks: banks == freezed
          ? _value.banks
          : banks // ignore: cast_nullable_to_non_nullable
              as KtList<Bank>,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Option<AppHttpResponse?>,
    ));
  }

  @override
  $BankAccountCopyWith<$Res>? get bankAccount {
    if (_value.bankAccount == null) {
      return null;
    }

    return $BankAccountCopyWith<$Res>(_value.bankAccount!, (value) {
      return _then(_value.copyWith(bankAccount: value));
    });
  }

  @override
  $UserWalletCopyWith<$Res>? get wallet {
    if (_value.wallet == null) {
      return null;
    }

    return $UserWalletCopyWith<$Res>(_value.wallet!, (value) {
      return _then(_value.copyWith(wallet: value));
    });
  }
}

/// @nodoc
abstract class _$$_WalletStateCopyWith<$Res>
    implements $WalletStateCopyWith<$Res> {
  factory _$$_WalletStateCopyWith(
          _$_WalletState value, $Res Function(_$_WalletState) then) =
      __$$_WalletStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool isLoading,
      bool isFetchingWalletBalance,
      bool isFundingWallet,
      bool validate,
      bool isConfiguringPin,
      bool isWithdrawing,
      bool isResolvingAccount,
      bool requestedPINReset,
      SecurityQuestion securityQuestion,
      MoneyMaskedTextController amountTextController,
      NumField<double> amount,
      BasicTextField securityAnswer,
      OTPCode otpCode,
      BankAccount? bankAccount,
      UserWallet? wallet,
      TextEditingController accountNameController,
      PaymentStatus paymentStatus,
      PaymentMethod paymentMethod,
      OTPCode withdrawalPin,
      OTPCode confirmWithdrawalPin,
      KtList<Bank> banks,
      Option<AppHttpResponse?> status});

  @override
  $BankAccountCopyWith<$Res>? get bankAccount;
  @override
  $UserWalletCopyWith<$Res>? get wallet;
}

/// @nodoc
class __$$_WalletStateCopyWithImpl<$Res> extends _$WalletStateCopyWithImpl<$Res>
    implements _$$_WalletStateCopyWith<$Res> {
  __$$_WalletStateCopyWithImpl(
      _$_WalletState _value, $Res Function(_$_WalletState) _then)
      : super(_value, (v) => _then(v as _$_WalletState));

  @override
  _$_WalletState get _value => super._value as _$_WalletState;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? isFetchingWalletBalance = freezed,
    Object? isFundingWallet = freezed,
    Object? validate = freezed,
    Object? isConfiguringPin = freezed,
    Object? isWithdrawing = freezed,
    Object? isResolvingAccount = freezed,
    Object? requestedPINReset = freezed,
    Object? securityQuestion = freezed,
    Object? amountTextController = freezed,
    Object? amount = freezed,
    Object? securityAnswer = freezed,
    Object? otpCode = freezed,
    Object? bankAccount = freezed,
    Object? wallet = freezed,
    Object? accountNameController = freezed,
    Object? paymentStatus = freezed,
    Object? paymentMethod = freezed,
    Object? withdrawalPin = freezed,
    Object? confirmWithdrawalPin = freezed,
    Object? banks = freezed,
    Object? status = freezed,
  }) {
    return _then(_$_WalletState(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isFetchingWalletBalance: isFetchingWalletBalance == freezed
          ? _value.isFetchingWalletBalance
          : isFetchingWalletBalance // ignore: cast_nullable_to_non_nullable
              as bool,
      isFundingWallet: isFundingWallet == freezed
          ? _value.isFundingWallet
          : isFundingWallet // ignore: cast_nullable_to_non_nullable
              as bool,
      validate: validate == freezed
          ? _value.validate
          : validate // ignore: cast_nullable_to_non_nullable
              as bool,
      isConfiguringPin: isConfiguringPin == freezed
          ? _value.isConfiguringPin
          : isConfiguringPin // ignore: cast_nullable_to_non_nullable
              as bool,
      isWithdrawing: isWithdrawing == freezed
          ? _value.isWithdrawing
          : isWithdrawing // ignore: cast_nullable_to_non_nullable
              as bool,
      isResolvingAccount: isResolvingAccount == freezed
          ? _value.isResolvingAccount
          : isResolvingAccount // ignore: cast_nullable_to_non_nullable
              as bool,
      requestedPINReset: requestedPINReset == freezed
          ? _value.requestedPINReset
          : requestedPINReset // ignore: cast_nullable_to_non_nullable
              as bool,
      securityQuestion: securityQuestion == freezed
          ? _value.securityQuestion
          : securityQuestion // ignore: cast_nullable_to_non_nullable
              as SecurityQuestion,
      amountTextController: amountTextController == freezed
          ? _value.amountTextController
          : amountTextController // ignore: cast_nullable_to_non_nullable
              as MoneyMaskedTextController,
      amount: amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as NumField<double>,
      securityAnswer: securityAnswer == freezed
          ? _value.securityAnswer
          : securityAnswer // ignore: cast_nullable_to_non_nullable
              as BasicTextField,
      otpCode: otpCode == freezed
          ? _value.otpCode
          : otpCode // ignore: cast_nullable_to_non_nullable
              as OTPCode,
      bankAccount: bankAccount == freezed
          ? _value.bankAccount
          : bankAccount // ignore: cast_nullable_to_non_nullable
              as BankAccount?,
      wallet: wallet == freezed
          ? _value.wallet
          : wallet // ignore: cast_nullable_to_non_nullable
              as UserWallet?,
      accountNameController: accountNameController == freezed
          ? _value.accountNameController
          : accountNameController // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
      paymentStatus: paymentStatus == freezed
          ? _value.paymentStatus
          : paymentStatus // ignore: cast_nullable_to_non_nullable
              as PaymentStatus,
      paymentMethod: paymentMethod == freezed
          ? _value.paymentMethod
          : paymentMethod // ignore: cast_nullable_to_non_nullable
              as PaymentMethod,
      withdrawalPin: withdrawalPin == freezed
          ? _value.withdrawalPin
          : withdrawalPin // ignore: cast_nullable_to_non_nullable
              as OTPCode,
      confirmWithdrawalPin: confirmWithdrawalPin == freezed
          ? _value.confirmWithdrawalPin
          : confirmWithdrawalPin // ignore: cast_nullable_to_non_nullable
              as OTPCode,
      banks: banks == freezed
          ? _value.banks
          : banks // ignore: cast_nullable_to_non_nullable
              as KtList<Bank>,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Option<AppHttpResponse?>,
    ));
  }
}

/// @nodoc

class _$_WalletState implements _WalletState {
  const _$_WalletState(
      {this.isLoading = false,
      this.isFetchingWalletBalance = false,
      this.isFundingWallet = false,
      this.validate = false,
      this.isConfiguringPin = false,
      this.isWithdrawing = false,
      this.isResolvingAccount = false,
      this.requestedPINReset = false,
      this.securityQuestion = SecurityQuestion.locality,
      required this.amountTextController,
      required this.amount,
      required this.securityAnswer,
      required this.otpCode,
      this.bankAccount,
      this.wallet,
      required this.accountNameController,
      this.paymentStatus = PaymentStatus.pending,
      this.paymentMethod = PaymentMethod.FLUTTERWAVE,
      required this.withdrawalPin,
      required this.confirmWithdrawalPin,
      this.banks = const KtList.empty(),
      this.status = const None()});

  @override
  @JsonKey()
  final bool isLoading;
  @override
  @JsonKey()
  final bool isFetchingWalletBalance;
  @override
  @JsonKey()
  final bool isFundingWallet;
  @override
  @JsonKey()
  final bool validate;
  @override
  @JsonKey()
  final bool isConfiguringPin;
  @override
  @JsonKey()
  final bool isWithdrawing;
  @override
  @JsonKey()
  final bool isResolvingAccount;
  @override
  @JsonKey()
  final bool requestedPINReset;
  @override
  @JsonKey()
  final SecurityQuestion securityQuestion;
  @override
  final MoneyMaskedTextController amountTextController;
  @override
  final NumField<double> amount;
  @override
  final BasicTextField securityAnswer;
  @override
  final OTPCode otpCode;
  @override
  final BankAccount? bankAccount;
  @override
  final UserWallet? wallet;
  @override
  final TextEditingController accountNameController;
  @override
  @JsonKey()
  final PaymentStatus paymentStatus;
  @override
  @JsonKey()
  final PaymentMethod paymentMethod;
  @override
  final OTPCode withdrawalPin;
  @override
  final OTPCode confirmWithdrawalPin;
  @override
  @JsonKey()
  final KtList<Bank> banks;
  @override
  @JsonKey()
  final Option<AppHttpResponse?> status;

  @override
  String toString() {
    return 'WalletState(isLoading: $isLoading, isFetchingWalletBalance: $isFetchingWalletBalance, isFundingWallet: $isFundingWallet, validate: $validate, isConfiguringPin: $isConfiguringPin, isWithdrawing: $isWithdrawing, isResolvingAccount: $isResolvingAccount, requestedPINReset: $requestedPINReset, securityQuestion: $securityQuestion, amountTextController: $amountTextController, amount: $amount, securityAnswer: $securityAnswer, otpCode: $otpCode, bankAccount: $bankAccount, wallet: $wallet, accountNameController: $accountNameController, paymentStatus: $paymentStatus, paymentMethod: $paymentMethod, withdrawalPin: $withdrawalPin, confirmWithdrawalPin: $confirmWithdrawalPin, banks: $banks, status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WalletState &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading) &&
            const DeepCollectionEquality().equals(
                other.isFetchingWalletBalance, isFetchingWalletBalance) &&
            const DeepCollectionEquality()
                .equals(other.isFundingWallet, isFundingWallet) &&
            const DeepCollectionEquality().equals(other.validate, validate) &&
            const DeepCollectionEquality()
                .equals(other.isConfiguringPin, isConfiguringPin) &&
            const DeepCollectionEquality()
                .equals(other.isWithdrawing, isWithdrawing) &&
            const DeepCollectionEquality()
                .equals(other.isResolvingAccount, isResolvingAccount) &&
            const DeepCollectionEquality()
                .equals(other.requestedPINReset, requestedPINReset) &&
            const DeepCollectionEquality()
                .equals(other.securityQuestion, securityQuestion) &&
            const DeepCollectionEquality()
                .equals(other.amountTextController, amountTextController) &&
            const DeepCollectionEquality().equals(other.amount, amount) &&
            const DeepCollectionEquality()
                .equals(other.securityAnswer, securityAnswer) &&
            const DeepCollectionEquality().equals(other.otpCode, otpCode) &&
            const DeepCollectionEquality()
                .equals(other.bankAccount, bankAccount) &&
            const DeepCollectionEquality().equals(other.wallet, wallet) &&
            const DeepCollectionEquality()
                .equals(other.accountNameController, accountNameController) &&
            const DeepCollectionEquality()
                .equals(other.paymentStatus, paymentStatus) &&
            const DeepCollectionEquality()
                .equals(other.paymentMethod, paymentMethod) &&
            const DeepCollectionEquality()
                .equals(other.withdrawalPin, withdrawalPin) &&
            const DeepCollectionEquality()
                .equals(other.confirmWithdrawalPin, confirmWithdrawalPin) &&
            const DeepCollectionEquality().equals(other.banks, banks) &&
            const DeepCollectionEquality().equals(other.status, status));
  }

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(isLoading),
        const DeepCollectionEquality().hash(isFetchingWalletBalance),
        const DeepCollectionEquality().hash(isFundingWallet),
        const DeepCollectionEquality().hash(validate),
        const DeepCollectionEquality().hash(isConfiguringPin),
        const DeepCollectionEquality().hash(isWithdrawing),
        const DeepCollectionEquality().hash(isResolvingAccount),
        const DeepCollectionEquality().hash(requestedPINReset),
        const DeepCollectionEquality().hash(securityQuestion),
        const DeepCollectionEquality().hash(amountTextController),
        const DeepCollectionEquality().hash(amount),
        const DeepCollectionEquality().hash(securityAnswer),
        const DeepCollectionEquality().hash(otpCode),
        const DeepCollectionEquality().hash(bankAccount),
        const DeepCollectionEquality().hash(wallet),
        const DeepCollectionEquality().hash(accountNameController),
        const DeepCollectionEquality().hash(paymentStatus),
        const DeepCollectionEquality().hash(paymentMethod),
        const DeepCollectionEquality().hash(withdrawalPin),
        const DeepCollectionEquality().hash(confirmWithdrawalPin),
        const DeepCollectionEquality().hash(banks),
        const DeepCollectionEquality().hash(status)
      ]);

  @JsonKey(ignore: true)
  @override
  _$$_WalletStateCopyWith<_$_WalletState> get copyWith =>
      __$$_WalletStateCopyWithImpl<_$_WalletState>(this, _$identity);
}

abstract class _WalletState implements WalletState {
  const factory _WalletState(
      {final bool isLoading,
      final bool isFetchingWalletBalance,
      final bool isFundingWallet,
      final bool validate,
      final bool isConfiguringPin,
      final bool isWithdrawing,
      final bool isResolvingAccount,
      final bool requestedPINReset,
      final SecurityQuestion securityQuestion,
      required final MoneyMaskedTextController amountTextController,
      required final NumField<double> amount,
      required final BasicTextField securityAnswer,
      required final OTPCode otpCode,
      final BankAccount? bankAccount,
      final UserWallet? wallet,
      required final TextEditingController accountNameController,
      final PaymentStatus paymentStatus,
      final PaymentMethod paymentMethod,
      required final OTPCode withdrawalPin,
      required final OTPCode confirmWithdrawalPin,
      final KtList<Bank> banks,
      final Option<AppHttpResponse?> status}) = _$_WalletState;

  @override
  bool get isLoading;
  @override
  bool get isFetchingWalletBalance;
  @override
  bool get isFundingWallet;
  @override
  bool get validate;
  @override
  bool get isConfiguringPin;
  @override
  bool get isWithdrawing;
  @override
  bool get isResolvingAccount;
  @override
  bool get requestedPINReset;
  @override
  SecurityQuestion get securityQuestion;
  @override
  MoneyMaskedTextController get amountTextController;
  @override
  NumField<double> get amount;
  @override
  BasicTextField get securityAnswer;
  @override
  OTPCode get otpCode;
  @override
  BankAccount? get bankAccount;
  @override
  UserWallet? get wallet;
  @override
  TextEditingController get accountNameController;
  @override
  PaymentStatus get paymentStatus;
  @override
  PaymentMethod get paymentMethod;
  @override
  OTPCode get withdrawalPin;
  @override
  OTPCode get confirmWithdrawalPin;
  @override
  KtList<Bank> get banks;
  @override
  Option<AppHttpResponse?> get status;
  @override
  @JsonKey(ignore: true)
  _$$_WalletStateCopyWith<_$_WalletState> get copyWith =>
      throw _privateConstructorUsedError;
}
