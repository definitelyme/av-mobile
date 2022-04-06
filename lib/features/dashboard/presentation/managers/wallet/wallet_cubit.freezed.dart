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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$WalletStateTearOff {
  const _$WalletStateTearOff();

  _WalletState call(
      {bool isLoading = false,
      bool isFundingWallet = false,
      bool validate = false,
      bool isAddingCard = false,
      bool isConfiguringPin = false,
      bool isWithdrawing = false,
      bool isResolvingAccount = false,
      DebitCard? card,
      SecurityQuestion securityQuestion = SecurityQuestion.locality,
      KtList<DebitCard> debitCards = const KtList.empty(),
      required MoneyMaskedTextController amountTextController,
      required AmountField<double> amount,
      required BasicTextField<String?> securityAnswer,
      BankAccount? bankAccount,
      required TextEditingController accountNameController,
      required OTPCode cardPin,
      required OTPCode withdrawalPin,
      required OTPCode confirmWithdrawalPin,
      KtList<Bank> banks = const KtList.empty(),
      Option<AppHttpResponse?> status = const None()}) {
    return _WalletState(
      isLoading: isLoading,
      isFundingWallet: isFundingWallet,
      validate: validate,
      isAddingCard: isAddingCard,
      isConfiguringPin: isConfiguringPin,
      isWithdrawing: isWithdrawing,
      isResolvingAccount: isResolvingAccount,
      card: card,
      securityQuestion: securityQuestion,
      debitCards: debitCards,
      amountTextController: amountTextController,
      amount: amount,
      securityAnswer: securityAnswer,
      bankAccount: bankAccount,
      accountNameController: accountNameController,
      cardPin: cardPin,
      withdrawalPin: withdrawalPin,
      confirmWithdrawalPin: confirmWithdrawalPin,
      banks: banks,
      status: status,
    );
  }
}

/// @nodoc
const $WalletState = _$WalletStateTearOff();

/// @nodoc
mixin _$WalletState {
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isFundingWallet => throw _privateConstructorUsedError;
  bool get validate => throw _privateConstructorUsedError;
  bool get isAddingCard => throw _privateConstructorUsedError;
  bool get isConfiguringPin => throw _privateConstructorUsedError;
  bool get isWithdrawing => throw _privateConstructorUsedError;
  bool get isResolvingAccount => throw _privateConstructorUsedError;
  DebitCard? get card => throw _privateConstructorUsedError;
  SecurityQuestion get securityQuestion => throw _privateConstructorUsedError;
  KtList<DebitCard> get debitCards => throw _privateConstructorUsedError;
  MoneyMaskedTextController get amountTextController =>
      throw _privateConstructorUsedError;
  AmountField<double> get amount => throw _privateConstructorUsedError;
  BasicTextField<String?> get securityAnswer =>
      throw _privateConstructorUsedError;
  BankAccount? get bankAccount => throw _privateConstructorUsedError;
  TextEditingController get accountNameController =>
      throw _privateConstructorUsedError;
  OTPCode get cardPin => throw _privateConstructorUsedError;
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
      DebitCard? card,
      SecurityQuestion securityQuestion,
      KtList<DebitCard> debitCards,
      MoneyMaskedTextController amountTextController,
      AmountField<double> amount,
      BasicTextField<String?> securityAnswer,
      BankAccount? bankAccount,
      TextEditingController accountNameController,
      OTPCode cardPin,
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
    Object? card = freezed,
    Object? securityQuestion = freezed,
    Object? debitCards = freezed,
    Object? amountTextController = freezed,
    Object? amount = freezed,
    Object? securityAnswer = freezed,
    Object? bankAccount = freezed,
    Object? accountNameController = freezed,
    Object? cardPin = freezed,
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
      bankAccount: bankAccount == freezed
          ? _value.bankAccount
          : bankAccount // ignore: cast_nullable_to_non_nullable
              as BankAccount?,
      accountNameController: accountNameController == freezed
          ? _value.accountNameController
          : accountNameController // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
      cardPin: cardPin == freezed
          ? _value.cardPin
          : cardPin // ignore: cast_nullable_to_non_nullable
              as OTPCode,
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
abstract class _$WalletStateCopyWith<$Res>
    implements $WalletStateCopyWith<$Res> {
  factory _$WalletStateCopyWith(
          _WalletState value, $Res Function(_WalletState) then) =
      __$WalletStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool isLoading,
      bool isFundingWallet,
      bool validate,
      bool isAddingCard,
      bool isConfiguringPin,
      bool isWithdrawing,
      bool isResolvingAccount,
      DebitCard? card,
      SecurityQuestion securityQuestion,
      KtList<DebitCard> debitCards,
      MoneyMaskedTextController amountTextController,
      AmountField<double> amount,
      BasicTextField<String?> securityAnswer,
      BankAccount? bankAccount,
      TextEditingController accountNameController,
      OTPCode cardPin,
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
class __$WalletStateCopyWithImpl<$Res> extends _$WalletStateCopyWithImpl<$Res>
    implements _$WalletStateCopyWith<$Res> {
  __$WalletStateCopyWithImpl(
      _WalletState _value, $Res Function(_WalletState) _then)
      : super(_value, (v) => _then(v as _WalletState));

  @override
  _WalletState get _value => super._value as _WalletState;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? isFundingWallet = freezed,
    Object? validate = freezed,
    Object? isAddingCard = freezed,
    Object? isConfiguringPin = freezed,
    Object? isWithdrawing = freezed,
    Object? isResolvingAccount = freezed,
    Object? card = freezed,
    Object? securityQuestion = freezed,
    Object? debitCards = freezed,
    Object? amountTextController = freezed,
    Object? amount = freezed,
    Object? securityAnswer = freezed,
    Object? bankAccount = freezed,
    Object? accountNameController = freezed,
    Object? cardPin = freezed,
    Object? withdrawalPin = freezed,
    Object? confirmWithdrawalPin = freezed,
    Object? banks = freezed,
    Object? status = freezed,
  }) {
    return _then(_WalletState(
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
      bankAccount: bankAccount == freezed
          ? _value.bankAccount
          : bankAccount // ignore: cast_nullable_to_non_nullable
              as BankAccount?,
      accountNameController: accountNameController == freezed
          ? _value.accountNameController
          : accountNameController // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
      cardPin: cardPin == freezed
          ? _value.cardPin
          : cardPin // ignore: cast_nullable_to_non_nullable
              as OTPCode,
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
      this.card,
      this.securityQuestion = SecurityQuestion.locality,
      this.debitCards = const KtList.empty(),
      required this.amountTextController,
      required this.amount,
      required this.securityAnswer,
      this.bankAccount,
      required this.accountNameController,
      required this.cardPin,
      required this.withdrawalPin,
      required this.confirmWithdrawalPin,
      this.banks = const KtList.empty(),
      this.status = const None()});

  @JsonKey()
  @override
  final bool isLoading;
  @JsonKey()
  @override
  final bool isFundingWallet;
  @JsonKey()
  @override
  final bool validate;
  @JsonKey()
  @override
  final bool isAddingCard;
  @JsonKey()
  @override
  final bool isConfiguringPin;
  @JsonKey()
  @override
  final bool isWithdrawing;
  @JsonKey()
  @override
  final bool isResolvingAccount;
  @override
  final DebitCard? card;
  @JsonKey()
  @override
  final SecurityQuestion securityQuestion;
  @JsonKey()
  @override
  final KtList<DebitCard> debitCards;
  @override
  final MoneyMaskedTextController amountTextController;
  @override
  final AmountField<double> amount;
  @override
  final BasicTextField<String?> securityAnswer;
  @override
  final BankAccount? bankAccount;
  @override
  final TextEditingController accountNameController;
  @override
  final OTPCode cardPin;
  @override
  final OTPCode withdrawalPin;
  @override
  final OTPCode confirmWithdrawalPin;
  @JsonKey()
  @override
  final KtList<Bank> banks;
  @JsonKey()
  @override
  final Option<AppHttpResponse?> status;

  @override
  String toString() {
    return 'WalletState(isLoading: $isLoading, isFundingWallet: $isFundingWallet, validate: $validate, isAddingCard: $isAddingCard, isConfiguringPin: $isConfiguringPin, isWithdrawing: $isWithdrawing, isResolvingAccount: $isResolvingAccount, card: $card, securityQuestion: $securityQuestion, debitCards: $debitCards, amountTextController: $amountTextController, amount: $amount, securityAnswer: $securityAnswer, bankAccount: $bankAccount, accountNameController: $accountNameController, cardPin: $cardPin, withdrawalPin: $withdrawalPin, confirmWithdrawalPin: $confirmWithdrawalPin, banks: $banks, status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _WalletState &&
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
            const DeepCollectionEquality()
                .equals(other.bankAccount, bankAccount) &&
            const DeepCollectionEquality()
                .equals(other.accountNameController, accountNameController) &&
            const DeepCollectionEquality().equals(other.cardPin, cardPin) &&
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
        const DeepCollectionEquality().hash(card),
        const DeepCollectionEquality().hash(securityQuestion),
        const DeepCollectionEquality().hash(debitCards),
        const DeepCollectionEquality().hash(amountTextController),
        const DeepCollectionEquality().hash(amount),
        const DeepCollectionEquality().hash(securityAnswer),
        const DeepCollectionEquality().hash(bankAccount),
        const DeepCollectionEquality().hash(accountNameController),
        const DeepCollectionEquality().hash(cardPin),
        const DeepCollectionEquality().hash(withdrawalPin),
        const DeepCollectionEquality().hash(confirmWithdrawalPin),
        const DeepCollectionEquality().hash(banks),
        const DeepCollectionEquality().hash(status)
      ]);

  @JsonKey(ignore: true)
  @override
  _$WalletStateCopyWith<_WalletState> get copyWith =>
      __$WalletStateCopyWithImpl<_WalletState>(this, _$identity);
}

abstract class _WalletState implements WalletState {
  const factory _WalletState(
      {bool isLoading,
      bool isFundingWallet,
      bool validate,
      bool isAddingCard,
      bool isConfiguringPin,
      bool isWithdrawing,
      bool isResolvingAccount,
      DebitCard? card,
      SecurityQuestion securityQuestion,
      KtList<DebitCard> debitCards,
      required MoneyMaskedTextController amountTextController,
      required AmountField<double> amount,
      required BasicTextField<String?> securityAnswer,
      BankAccount? bankAccount,
      required TextEditingController accountNameController,
      required OTPCode cardPin,
      required OTPCode withdrawalPin,
      required OTPCode confirmWithdrawalPin,
      KtList<Bank> banks,
      Option<AppHttpResponse?> status}) = _$_WalletState;

  @override
  bool get isLoading;
  @override
  bool get isFundingWallet;
  @override
  bool get validate;
  @override
  bool get isAddingCard;
  @override
  bool get isConfiguringPin;
  @override
  bool get isWithdrawing;
  @override
  bool get isResolvingAccount;
  @override
  DebitCard? get card;
  @override
  SecurityQuestion get securityQuestion;
  @override
  KtList<DebitCard> get debitCards;
  @override
  MoneyMaskedTextController get amountTextController;
  @override
  AmountField<double> get amount;
  @override
  BasicTextField<String?> get securityAnswer;
  @override
  BankAccount? get bankAccount;
  @override
  TextEditingController get accountNameController;
  @override
  OTPCode get cardPin;
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
  _$WalletStateCopyWith<_WalletState> get copyWith =>
      throw _privateConstructorUsedError;
}
