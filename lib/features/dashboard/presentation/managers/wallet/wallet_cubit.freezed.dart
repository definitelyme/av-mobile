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
  bool get isFundingWallet => throw _privateConstructorUsedError;
  bool get validate => throw _privateConstructorUsedError;
  bool get isAddingCard => throw _privateConstructorUsedError;
  bool get isConfiguringPin => throw _privateConstructorUsedError;
  bool get isWithdrawing => throw _privateConstructorUsedError;
  bool get isResolvingAccount => throw _privateConstructorUsedError;
  bool get requestedPINReset => throw _privateConstructorUsedError;
  DebitCard? get card => throw _privateConstructorUsedError;
  SecurityQuestion get securityQuestion => throw _privateConstructorUsedError;
  KtList<DebitCard> get debitCards => throw _privateConstructorUsedError;
  MoneyMaskedTextController get amountTextController =>
      throw _privateConstructorUsedError;
  AmountField<double> get amount => throw _privateConstructorUsedError;
  BasicTextField<String?> get securityAnswer =>
      throw _privateConstructorUsedError;
  BasicTextField<String?> get otpCode => throw _privateConstructorUsedError;
  BankAccount? get bankAccount => throw _privateConstructorUsedError;
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
      bool isFundingWallet,
      bool validate,
      bool isAddingCard,
      bool isConfiguringPin,
      bool isWithdrawing,
      bool isResolvingAccount,
      bool requestedPINReset,
      DebitCard? card,
      SecurityQuestion securityQuestion,
      KtList<DebitCard> debitCards,
      MoneyMaskedTextController amountTextController,
      AmountField<double> amount,
      BasicTextField<String?> securityAnswer,
      BasicTextField<String?> otpCode,
      BankAccount? bankAccount,
      TextEditingController accountNameController,
      PaymentStatus paymentStatus,
      PaymentMethod paymentMethod,
      OTPCode withdrawalPin,
      OTPCode confirmWithdrawalPin,
      KtList<Bank> banks,
      Option<AppHttpResponse?> status});

  $DebitCardCopyWith<$Res>? get card;
  $BankAccountCopyWith<$Res>? get bankAccount;
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
    Object? isFundingWallet = freezed,
    Object? validate = freezed,
    Object? isAddingCard = freezed,
    Object? isConfiguringPin = freezed,
    Object? isWithdrawing = freezed,
    Object? isResolvingAccount = freezed,
    Object? requestedPINReset = freezed,
    Object? card = freezed,
    Object? securityQuestion = freezed,
    Object? debitCards = freezed,
    Object? amountTextController = freezed,
    Object? amount = freezed,
    Object? securityAnswer = freezed,
    Object? otpCode = freezed,
    Object? bankAccount = freezed,
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
      isFundingWallet: isFundingWallet == freezed
          ? _value.isFundingWallet
          : isFundingWallet // ignore: cast_nullable_to_non_nullable
              as bool,
      validate: validate == freezed
          ? _value.validate
          : validate // ignore: cast_nullable_to_non_nullable
              as bool,
      isAddingCard: isAddingCard == freezed
          ? _value.isAddingCard
          : isAddingCard // ignore: cast_nullable_to_non_nullable
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
      card: card == freezed
          ? _value.card
          : card // ignore: cast_nullable_to_non_nullable
              as DebitCard?,
      securityQuestion: securityQuestion == freezed
          ? _value.securityQuestion
          : securityQuestion // ignore: cast_nullable_to_non_nullable
              as SecurityQuestion,
      debitCards: debitCards == freezed
          ? _value.debitCards
          : debitCards // ignore: cast_nullable_to_non_nullable
              as KtList<DebitCard>,
      amountTextController: amountTextController == freezed
          ? _value.amountTextController
          : amountTextController // ignore: cast_nullable_to_non_nullable
              as MoneyMaskedTextController,
      amount: amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as AmountField<double>,
      securityAnswer: securityAnswer == freezed
          ? _value.securityAnswer
          : securityAnswer // ignore: cast_nullable_to_non_nullable
              as BasicTextField<String?>,
      otpCode: otpCode == freezed
          ? _value.otpCode
          : otpCode // ignore: cast_nullable_to_non_nullable
              as BasicTextField<String?>,
      bankAccount: bankAccount == freezed
          ? _value.bankAccount
          : bankAccount // ignore: cast_nullable_to_non_nullable
              as BankAccount?,
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
  $DebitCardCopyWith<$Res>? get card {
    if (_value.card == null) {
      return null;
    }

    return $DebitCardCopyWith<$Res>(_value.card!, (value) {
      return _then(_value.copyWith(card: value));
    });
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
      bool isFundingWallet,
      bool validate,
      bool isAddingCard,
      bool isConfiguringPin,
      bool isWithdrawing,
      bool isResolvingAccount,
      bool requestedPINReset,
      DebitCard? card,
      SecurityQuestion securityQuestion,
      KtList<DebitCard> debitCards,
      MoneyMaskedTextController amountTextController,
      AmountField<double> amount,
      BasicTextField<String?> securityAnswer,
      BasicTextField<String?> otpCode,
      BankAccount? bankAccount,
      TextEditingController accountNameController,
      PaymentStatus paymentStatus,
      PaymentMethod paymentMethod,
      OTPCode withdrawalPin,
      OTPCode confirmWithdrawalPin,
      KtList<Bank> banks,
      Option<AppHttpResponse?> status});

  @override
  $DebitCardCopyWith<$Res>? get card;
  @override
  $BankAccountCopyWith<$Res>? get bankAccount;
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
    Object? isFundingWallet = freezed,
    Object? validate = freezed,
    Object? isAddingCard = freezed,
    Object? isConfiguringPin = freezed,
    Object? isWithdrawing = freezed,
    Object? isResolvingAccount = freezed,
    Object? requestedPINReset = freezed,
    Object? card = freezed,
    Object? securityQuestion = freezed,
    Object? debitCards = freezed,
    Object? amountTextController = freezed,
    Object? amount = freezed,
    Object? securityAnswer = freezed,
    Object? otpCode = freezed,
    Object? bankAccount = freezed,
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
      isFundingWallet: isFundingWallet == freezed
          ? _value.isFundingWallet
          : isFundingWallet // ignore: cast_nullable_to_non_nullable
              as bool,
      validate: validate == freezed
          ? _value.validate
          : validate // ignore: cast_nullable_to_non_nullable
              as bool,
      isAddingCard: isAddingCard == freezed
          ? _value.isAddingCard
          : isAddingCard // ignore: cast_nullable_to_non_nullable
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
      card: card == freezed
          ? _value.card
          : card // ignore: cast_nullable_to_non_nullable
              as DebitCard?,
      securityQuestion: securityQuestion == freezed
          ? _value.securityQuestion
          : securityQuestion // ignore: cast_nullable_to_non_nullable
              as SecurityQuestion,
      debitCards: debitCards == freezed
          ? _value.debitCards
          : debitCards // ignore: cast_nullable_to_non_nullable
              as KtList<DebitCard>,
      amountTextController: amountTextController == freezed
          ? _value.amountTextController
          : amountTextController // ignore: cast_nullable_to_non_nullable
              as MoneyMaskedTextController,
      amount: amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as AmountField<double>,
      securityAnswer: securityAnswer == freezed
          ? _value.securityAnswer
          : securityAnswer // ignore: cast_nullable_to_non_nullable
              as BasicTextField<String?>,
      otpCode: otpCode == freezed
          ? _value.otpCode
          : otpCode // ignore: cast_nullable_to_non_nullable
              as BasicTextField<String?>,
      bankAccount: bankAccount == freezed
          ? _value.bankAccount
          : bankAccount // ignore: cast_nullable_to_non_nullable
              as BankAccount?,
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
      this.isFundingWallet = false,
      this.validate = false,
      this.isAddingCard = false,
      this.isConfiguringPin = false,
      this.isWithdrawing = false,
      this.isResolvingAccount = false,
      this.requestedPINReset = false,
      this.card,
      this.securityQuestion = SecurityQuestion.locality,
      this.debitCards = const KtList.empty(),
      required this.amountTextController,
      required this.amount,
      required this.securityAnswer,
      required this.otpCode,
      this.bankAccount,
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
  final bool isFundingWallet;
  @override
  @JsonKey()
  final bool validate;
  @override
  @JsonKey()
  final bool isAddingCard;
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
  final DebitCard? card;
  @override
  @JsonKey()
  final SecurityQuestion securityQuestion;
  @override
  @JsonKey()
  final KtList<DebitCard> debitCards;
  @override
  final MoneyMaskedTextController amountTextController;
  @override
  final AmountField<double> amount;
  @override
  final BasicTextField<String?> securityAnswer;
  @override
  final BasicTextField<String?> otpCode;
  @override
  final BankAccount? bankAccount;
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
    return 'WalletState(isLoading: $isLoading, isFundingWallet: $isFundingWallet, validate: $validate, isAddingCard: $isAddingCard, isConfiguringPin: $isConfiguringPin, isWithdrawing: $isWithdrawing, isResolvingAccount: $isResolvingAccount, requestedPINReset: $requestedPINReset, card: $card, securityQuestion: $securityQuestion, debitCards: $debitCards, amountTextController: $amountTextController, amount: $amount, securityAnswer: $securityAnswer, otpCode: $otpCode, bankAccount: $bankAccount, accountNameController: $accountNameController, paymentStatus: $paymentStatus, paymentMethod: $paymentMethod, withdrawalPin: $withdrawalPin, confirmWithdrawalPin: $confirmWithdrawalPin, banks: $banks, status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WalletState &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading) &&
            const DeepCollectionEquality()
                .equals(other.isFundingWallet, isFundingWallet) &&
            const DeepCollectionEquality().equals(other.validate, validate) &&
            const DeepCollectionEquality()
                .equals(other.isAddingCard, isAddingCard) &&
            const DeepCollectionEquality()
                .equals(other.isConfiguringPin, isConfiguringPin) &&
            const DeepCollectionEquality()
                .equals(other.isWithdrawing, isWithdrawing) &&
            const DeepCollectionEquality()
                .equals(other.isResolvingAccount, isResolvingAccount) &&
            const DeepCollectionEquality()
                .equals(other.requestedPINReset, requestedPINReset) &&
            const DeepCollectionEquality().equals(other.card, card) &&
            const DeepCollectionEquality()
                .equals(other.securityQuestion, securityQuestion) &&
            const DeepCollectionEquality()
                .equals(other.debitCards, debitCards) &&
            const DeepCollectionEquality()
                .equals(other.amountTextController, amountTextController) &&
            const DeepCollectionEquality().equals(other.amount, amount) &&
            const DeepCollectionEquality()
                .equals(other.securityAnswer, securityAnswer) &&
            const DeepCollectionEquality().equals(other.otpCode, otpCode) &&
            const DeepCollectionEquality()
                .equals(other.bankAccount, bankAccount) &&
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
        const DeepCollectionEquality().hash(isFundingWallet),
        const DeepCollectionEquality().hash(validate),
        const DeepCollectionEquality().hash(isAddingCard),
        const DeepCollectionEquality().hash(isConfiguringPin),
        const DeepCollectionEquality().hash(isWithdrawing),
        const DeepCollectionEquality().hash(isResolvingAccount),
        const DeepCollectionEquality().hash(requestedPINReset),
        const DeepCollectionEquality().hash(card),
        const DeepCollectionEquality().hash(securityQuestion),
        const DeepCollectionEquality().hash(debitCards),
        const DeepCollectionEquality().hash(amountTextController),
        const DeepCollectionEquality().hash(amount),
        const DeepCollectionEquality().hash(securityAnswer),
        const DeepCollectionEquality().hash(otpCode),
        const DeepCollectionEquality().hash(bankAccount),
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
      final bool isFundingWallet,
      final bool validate,
      final bool isAddingCard,
      final bool isConfiguringPin,
      final bool isWithdrawing,
      final bool isResolvingAccount,
      final bool requestedPINReset,
      final DebitCard? card,
      final SecurityQuestion securityQuestion,
      final KtList<DebitCard> debitCards,
      required final MoneyMaskedTextController amountTextController,
      required final AmountField<double> amount,
      required final BasicTextField<String?> securityAnswer,
      required final BasicTextField<String?> otpCode,
      final BankAccount? bankAccount,
      required final TextEditingController accountNameController,
      final PaymentStatus paymentStatus,
      final PaymentMethod paymentMethod,
      required final OTPCode withdrawalPin,
      required final OTPCode confirmWithdrawalPin,
      final KtList<Bank> banks,
      final Option<AppHttpResponse?> status}) = _$_WalletState;

  @override
  bool get isLoading => throw _privateConstructorUsedError;
  @override
  bool get isFundingWallet => throw _privateConstructorUsedError;
  @override
  bool get validate => throw _privateConstructorUsedError;
  @override
  bool get isAddingCard => throw _privateConstructorUsedError;
  @override
  bool get isConfiguringPin => throw _privateConstructorUsedError;
  @override
  bool get isWithdrawing => throw _privateConstructorUsedError;
  @override
  bool get isResolvingAccount => throw _privateConstructorUsedError;
  @override
  bool get requestedPINReset => throw _privateConstructorUsedError;
  @override
  DebitCard? get card => throw _privateConstructorUsedError;
  @override
  SecurityQuestion get securityQuestion => throw _privateConstructorUsedError;
  @override
  KtList<DebitCard> get debitCards => throw _privateConstructorUsedError;
  @override
  MoneyMaskedTextController get amountTextController =>
      throw _privateConstructorUsedError;
  @override
  AmountField<double> get amount => throw _privateConstructorUsedError;
  @override
  BasicTextField<String?> get securityAnswer =>
      throw _privateConstructorUsedError;
  @override
  BasicTextField<String?> get otpCode => throw _privateConstructorUsedError;
  @override
  BankAccount? get bankAccount => throw _privateConstructorUsedError;
  @override
  TextEditingController get accountNameController =>
      throw _privateConstructorUsedError;
  @override
  PaymentStatus get paymentStatus => throw _privateConstructorUsedError;
  @override
  PaymentMethod get paymentMethod => throw _privateConstructorUsedError;
  @override
  OTPCode get withdrawalPin => throw _privateConstructorUsedError;
  @override
  OTPCode get confirmWithdrawalPin => throw _privateConstructorUsedError;
  @override
  KtList<Bank> get banks => throw _privateConstructorUsedError;
  @override
  Option<AppHttpResponse?> get status => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_WalletStateCopyWith<_$_WalletState> get copyWith =>
      throw _privateConstructorUsedError;
}
