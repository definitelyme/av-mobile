part of 'wallet_cubit.dart';

enum SecurityQuestion { favPlace, favAthlete, locality }

@immutable
@Freezed(maybeMap: false)
class WalletState extends BaseState with _$WalletState {
  static final FocusNode cardName = FocusNode();
  static final FocusNode cardNumber = FocusNode();
  static final FocusNode cardExpiry = FocusNode();
  static final FocusNode cardCVV = FocusNode();
  static final FocusNode focusAmount = FocusNode();
  static final FocusNode focusPin = FocusNode();
  static final FocusNode focusPinConfirmation = FocusNode();
  static final FocusNode focusAccountNumber = FocusNode();
  static final FocusNode focusSecurityAnswer = FocusNode();

  const factory WalletState({
    @Default(false) bool isLoading,
    @Default(false) bool isFundingWallet,
    @Default(false) bool validate,
    @Default(false) bool isAddingCard,
    @Default(false) bool isConfiguringPin,
    @Default(false) bool isWithdrawing,
    @Default(false) bool isResolvingAccount,
    DebitCard? card,
    @Default(SecurityQuestion.locality) SecurityQuestion securityQuestion,
    @Default(KtList.empty()) KtList<DebitCard> debitCards,
    required MoneyMaskedTextController amountTextController,
    required AmountField<double> amount,
    required BasicTextField<String?> securityAnswer,
    BankAccount? bankAccount,
    required TextEditingController accountNameController,
    required OTPCode cardPin,
    required OTPCode withdrawalPin,
    required OTPCode confirmWithdrawalPin,
    @Default(KtList.empty()) KtList<Bank> banks,
    @Default(None()) Option<AppHttpResponse?> status,
  }) = _WalletState;

  factory WalletState.initial() => WalletState(
        amount: AmountField(0),
        cardPin: OTPCode(null),
        withdrawalPin: OTPCode(null),
        confirmWithdrawalPin: OTPCode(null),
        securityAnswer: BasicTextField(null),
        accountNameController: TextEditingController(),
        amountTextController: MoneyMaskedTextController(
          initialValue: 0,
          precision: 0,
          decimalSeparator: '',
          thousandSeparator: ',',
          // leftSymbol: '${Utils.currency} ',
        ),
      );
}

extension SecurityQuestionX on SecurityQuestion {
  String get question {
    switch (this) {
      case SecurityQuestion.favPlace:
        return 'What is your favorite place?';
      case SecurityQuestion.favAthlete:
        return 'Who is your favorite athlete?';
      case SecurityQuestion.locality:
        return 'What is your locality?';
      default:
        return 'What is your favorite place?';
    }
  }

  T when<T>({
    required T Function() favPlace,
    required T Function() favAthlete,
    required T Function() locality,
  }) {
    switch (this) {
      case SecurityQuestion.favAthlete:
        return favAthlete();
      case SecurityQuestion.favPlace:
        return favPlace();
      case SecurityQuestion.locality:
      default:
        return locality();
    }
  }
}
