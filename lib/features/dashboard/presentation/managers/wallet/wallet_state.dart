part of 'wallet_cubit.dart';

@immutable
@Freezed(map: FreezedMapOptions.none, when: FreezedWhenOptions.none)
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
  static final FocusNode focusToken = FocusNode();

  const factory WalletState({
    @Default(false) bool isLoading,
    @Default(false) bool isFetchingWalletBalance,
    @Default(false) bool isFundingWallet,
    @Default(false) bool validate,
    @Default(false) bool isConfiguringPin,
    @Default(false) bool isWithdrawing,
    @Default(false) bool isResolvingAccount,
    @Default(false) bool requestedPINReset,
    @Default(SecurityQuestion.locality) SecurityQuestion securityQuestion,
    required MoneyMaskedTextController amountTextController,
    required NumField<double> amount,
    required BasicTextField securityAnswer,
    required OTPCode otpCode,
    BankAccount? bankAccount,
    UserWallet? wallet,
    required TextEditingController accountNameController,
    @Default(PaymentStatus.pending) PaymentStatus paymentStatus,
    @Default(PaymentMethod.FLUTTERWAVE) PaymentMethod paymentMethod,
    required OTPCode withdrawalPin,
    required OTPCode confirmWithdrawalPin,
    @Default(KtList.empty()) KtList<Bank> banks,
    @Default(None()) Option<AppHttpResponse?> status,
  }) = _WalletState;

  factory WalletState.initial() => WalletState(
        amount: NumField(0),
        withdrawalPin: OTPCode(null),
        confirmWithdrawalPin: OTPCode(null),
        securityAnswer: BasicTextField(null),
        otpCode: OTPCode(null),
        accountNameController: TextEditingController(),
        amountTextController: MoneyMaskedTextController(
          initialValue: 0,
          precision: 0,
          decimalSeparator: '',
          thousandSeparator: ',',
        ),
      );
}
