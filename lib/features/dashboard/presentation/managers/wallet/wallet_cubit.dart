library wallet_cubit.dart;

import 'dart:async';

import 'package:auctionvillage/core/data/response/index.dart';
import 'package:auctionvillage/core/domain/entities/entities.dart';
import 'package:auctionvillage/core/presentation/index.dart';
import 'package:auctionvillage/features/dashboard/data/repositories/wallet_repository.dart';
import 'package:auctionvillage/features/dashboard/domain/index.dart';
import 'package:auctionvillage/utils/utils.dart';
import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:flutter/material.dart';
import 'package:flutter_masked_text2/flutter_masked_text2.dart';
import 'package:flutter_paystack/flutter_paystack.dart';
import 'package:flutterwave_standard/flutterwave.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/collection.dart';

part 'wallet_cubit.freezed.dart';
part 'wallet_state.dart';

enum _TransactionType { cr, dr }

@injectable
class WalletCubit extends Cubit<WalletState> with BaseCubit {
  final WalletRepository _repository;
  final FirebaseAnalytics _firebaseAnalytics;
  final PaystackPlugin _paystack;
  StreamSubscription<DebitCard?>? _cardsSubscription;
  static const int MINIMUM_WITHDRAWAL_AMOUNT = 100;
  static const int ACCOUNT_NUMBER_LENGTH = 10;

  WalletCubit(this._repository, this._paystack, this._firebaseAnalytics) : super(WalletState.initial());

  void toggleLoading([bool? isLoading, Option<AppHttpResponse?>? status]) =>
      emit(state.copyWith(isLoading: isLoading ?? !state.isLoading, status: status ?? state.status));

  void cardNameChanged(String value) => emit(state.copyWith(card: state.card?.copyWith(cardName: DebitCardName(value))));

  void cardNumberChanged(String value) =>
      emit(state.copyWith(card: state.card?.copyWith(cardNumber: DebitCardNumber(value.trimWhiteSpaces().removeNewLines()))));

  void cardExpiryChanged(String value) =>
      emit(state.copyWith(card: state.card?.copyWith(cardExpiryDate: DebitCardExpiryDate(value.trimWhiteSpaces()))));

  void cardCVVChanged(String value) => emit(state.copyWith(card: state.card?.copyWith(cardCVV: DebitCardCVV(value.trimWhiteSpaces()))));

  void otpCodeChanged(String value) => emit(state.copyWith(otpCode: BasicTextField(value)));

  void paymentMethodChanged(PaymentMethod value) => emit(state.copyWith(paymentMethod: value));

  void amountChanged() {
    final value = state.amountTextController.numberValue;
    emit(state.copyWith(amount: AmountField((value ?? 0).toDouble())));
  }

  @override
  Future<void> close() {
    _cardsSubscription?.cancel();
    return super.close();
  }

  void pinChanged(String? value) => emit(state.copyWith(withdrawalPin: OTPCode(value)));

  void pinConfirmationChanged(String? value) => emit(state.copyWith(confirmWithdrawalPin: OTPCode(value)));

  void initAddCard(User? user) => emit(state.copyWith(card: DebitCard.blank(uid: user?.id.value, email: user?.email.getOrNull)));

  void watchCards() {
    _cardsSubscription ??= _repository.watch().listen((debitCard) {
      emit(state.copyWith(
        card: debitCard,
        debitCards: KtList.from([
          ...(debitCard != null ? [debitCard] : []),
        ]),
      ));
    });
  }

  void questionChanged(SecurityQuestion? value) => emit(state.copyWith(securityQuestion: value ?? state.securityQuestion));

  void answerChanged(String value) => emit(state.copyWith(securityAnswer: BasicTextField(value)));

  void fetchBanks() async {
    final response = await _repository.getBanks();

    emit(response.fold(
      (f) => state.copyWith(isLoading: false, status: some(f)),
      (banks) => state.copyWith(
        isLoading: false,
        banks: banks.sortedWith((a, b) => a.bankName.getOrNull!.compareTo(b.bankName.getOrNull!)),
      ),
    ));
  }

  Future<bool?> hasAddedCard() async {
    await getCard(local: false);
    return state.card?.cardAdded;
  }

  Future<bool?> hasSetupPin() async {
    await getCard(local: false);
    return state.card?.pinAdded;
  }

  bool get accountNumberIsValid =>
      state.bankAccount?.accountNumber.getOrNull != null && state.bankAccount?.accountNumber.getOrNull?.length == ACCOUNT_NUMBER_LENGTH;

  bool get accountNameIsValid => state.bankAccount?.accountName.getOrNull != null;

  bool get canWithdraw {
    return state.amount.getOrNull >= MINIMUM_WITHDRAWAL_AMOUNT &&
        state.bankAccount != null &&
        (state.bankAccount!.bank != null && accountNumberIsValid && accountNameIsValid) &&
        state.withdrawalPin.isValid;
  }

  bool canFinishPinSetup([bool requestedOTP = false]) =>
      state.withdrawalPin.isValid &&
      state.confirmWithdrawalPin.isValid &&
      state.securityAnswer.isValid &&
      ((requestedOTP && state.otpCode.isValid) || !requestedOTP);

  Future<void> getCard({DebitCard? card, bool? local}) async {
    toggleLoading(true, none());

    final response = await _repository.getCard(card: card, local: local);

    emit(response.fold(
      (f) => state.copyWith(status: some(f)),
      (card) => state.copyWith(card: card),
    ));

    toggleLoading(false);
  }

  void validateAndSaveCard() async {
    emit(state.copyWith(isAddingCard: true, validate: true, status: none()));

    // if (state.card != null && state.card!.failure.isNone()) {
    final response = await _repository.addDebitCard(state.card!);

    emit(state.copyWith(status: optionOf(response), isAddingCard: false));

    // }

    emit(state.copyWith(isAddingCard: false));
  }

  void accountNumberChanged(String? value) {
    emit(state.copyWith(
      bankAccount: BankAccount.blank(
        bank: state.bankAccount?.bank,
        accountName: state.bankAccount?.accountName.getOrNull,
        accountNumber: value,
      ),
    ));

    resolveBankAccount(value);
  }

  void bankChanged(Bank? value) {
    emit(state.copyWith(
      bankAccount: BankAccount.blank(
        bank: value,
        accountName: state.bankAccount?.accountName.getOrNull,
        accountNumber: state.bankAccount?.accountNumber.getOrNull,
      ),
    ));

    resolveBankAccount(state.bankAccount?.accountNumber.getOrNull);
  }

  void fundWallet(BuildContext c, User? user) async {
    emit(state.copyWith(isFundingWallet: true, validate: true, status: none()));

    final _conn = await connection();

    await _conn.fold(
      () async {
        await state.paymentMethod.when(
          flutterwave: () => _flutterwavePayment(c, user),
          paystack: () => _paystackPay(c, user),
        );

        state.amountTextController.clear();
        emit(state.copyWith(amount: AmountField(0)));
      },
      (f) async => emit(state.copyWith(status: optionOf(f))),
    );

    emit(state.copyWith(isFundingWallet: false));
  }

  Future<void> _flutterwavePayment(BuildContext ctx, User? user) async {
    final name = user?.fullName.getOrEmpty;
    final email = user?.email.getOrEmpty;
    final phone = user?.phone.getOrNull;
    final _amount = env.flavor.fold(prod: () => state.amount.getOrNull, dev: () => 5);
    final _currency = user?.phone.country?.type?.name ?? 'NGN';

    final _style = FlutterwaveStyle(
      appBarText: state.paymentMethod.formatted,
      appBarTitleTextStyle: Utils.foldTheme(
        light: () => TextStyle(color: Palette.text100, fontSize: 20.sp),
        dark: () => TextStyle(color: Palette.text100Dark, fontSize: 20.sp),
      ),
      buttonColor: Palette.accentColor,
      appBarIcon: Icon(
        Icons.keyboard_backspace_rounded,
        color: App.resolveColor(Colors.black87, dark: Palette.iconDark, context: ctx),
      ),
      buttonTextStyle: TextStyle(
        color: Palette.cardColorLight,
        fontSize: 18.sp,
      ),
      appBarColor: App.resolveColor(Palette.primaryColor, dark: Palette.secondaryColor.shade400, context: ctx),
      dialogCancelTextStyle: TextStyle(
        color: App.resolveColor(Palette.text100, dark: Palette.text100Dark, context: ctx),
        fontSize: 18.sp,
      ),
      dialogContinueTextStyle: TextStyle(
        color: App.resolveColor(Palette.accentColor, context: ctx),
        fontSize: 18.sp,
      ),
    );

    final _flutterwave = Flutterwave(
      context: ctx,
      style: _style,
      publicKey: env.flutterwaveKey,
      currency: _currency,
      txRef: reference,
      amount: '$_amount',
      isTestMode: env.flavor.fold(prod: () => false, dev: () => false),
      customer: Customer(
        name: '${_TransactionType.cr.name}'.toUpperCase().trim().trimWhiteSpaces().removeNewLines(),
        email: '$email',
        phoneNumber: '$phone',
      ),
      meta: {'transactionType': '${_TransactionType.cr.name}'.toUpperCase().trim().trimWhiteSpaces().removeNewLines()},
      paymentOptions: 'card',
      customization: Customization(
        title: '${Const.appName} - Fund Wallet',
        description: '$name wants to fund their wallet with $_amount, pls honor if valid.',
        logo: Const.logoPng,
      ),
    );

    ChargeResponse? _flwResponse;

    try {
      _flwResponse = await _flutterwave.charge();

      if (_flwResponse != null) {
        if (_flwResponse.success!) {
          emit(state.copyWith(
            paymentStatus: PaymentStatus.confirmed,
            status: some(AppHttpResponse.successful('Success! Please wait while we process your payment.')),
          ));
          _logPaymentSuccessful(_amount.toDouble(), user, currency: _currency);
        } else {
          final msg = '${_flwResponse.status}\n Something went wrong, please try again after sometime.';
          emit(state.copyWith(paymentStatus: PaymentStatus.failed, status: some(AppHttpResponse.failure(msg))));
          _logPaymentFailed(_amount.toDouble(), user, _flwResponse.status, currency: _currency);
        }
      } else
        emit(state.copyWith(paymentStatus: PaymentStatus.failed));
    } catch (e) {
      emit(state.copyWith(status: some(AppHttpResponse.failure('$e'))));
    }
  }

  Future<void> _paystackPay(BuildContext ctx, User? user) async {
    final name = user?.fullName.getOrEmpty;
    final email = user?.email.getOrEmpty;
    final phone = user?.phone.getOrNull;
    final _amount = env.flavor.fold(prod: () => state.amount.getOrNull * 100, dev: () => 500);
    final _currency = user?.phone.country?.type?.name ?? 'NGN';

    var _charge = Charge()
      ..amount = _amount.floor()
      ..email = email
      ..reference = reference
      ..currency = _currency
      ..putMetaData('transactionType', '${_TransactionType.cr.name}'.toUpperCase())
      ..putCustomField("User's Name", '$name')
      ..putCustomField("User's Phone", '$phone')
      ..putCustomField('Payment Reference', reference);

    try {
      final _response = await _paystack.checkout(
        ctx,
        charge: _charge,
        fullscreen: true,
        hideAmount: false,
        hideEmail: false,
        logo: Image.asset(AppAssets.launchIcon, width: 0.25.w, height: 0.15.w),
        method: CheckoutMethod.card,
      );

      if (!isClosed) {
        if (_response.status) {
          emit(state.copyWith(paymentStatus: PaymentStatus.confirmed));
          _logPaymentSuccessful(_amount.toDouble(), user, currency: _currency);
        } else {
          emit(state.copyWith(paymentStatus: PaymentStatus.failed));
          _logPaymentFailed(_amount.toDouble(), user, _response.message, currency: _currency);
        }
      }
    } on PaystackException catch (e) {
      if (!isClosed) emit(state.copyWith(status: some(AppHttpResponse.failure('${e.message}'))));
    }
  }

  void setupPin({bool requiresOTP = false}) async {
    emit(state.copyWith(isConfiguringPin: true, validate: true, status: none()));

    if (!state.withdrawalPin.compare(state.confirmWithdrawalPin.getOrNull)) {
      emit(state.copyWith(isConfiguringPin: false, status: some(AppHttpResponse.failure('PINs do not match'))));
      return;
    }

    if (canFinishPinSetup(requiresOTP)) {
      if (requiresOTP) {
        AppHttpResponse? response;

        response = await _repository.resetWithdrawalPin('${state.otpCode.getOrEmpty}');

        await response.response.mapOrNull(success: (_) async {
          response = await _repository.setupPin(
            '${state.withdrawalPin.getOrEmpty}',
            state.securityQuestion,
            answer: state.securityAnswer.getOrNull,
          );
        });

        emit(state.copyWith(status: optionOf(response), isConfiguringPin: false, validate: false));
      } else {
        final response = await _repository.setupPin(
          '${state.withdrawalPin.getOrEmpty}',
          state.securityQuestion,
          answer: state.securityAnswer.getOrNull,
        );
        emit(state.copyWith(status: optionOf(response), isConfiguringPin: false, validate: false));
      }
    }

    emit(state.copyWith(isConfiguringPin: false));
  }

  void withdraw(void Function(bool) onDone) async {
    emit(state.copyWith(isWithdrawing: true, validate: true, status: none()));
    if (state.amount.getOrNull < MINIMUM_WITHDRAWAL_AMOUNT) {
      emit(state.copyWith(
        isWithdrawing: false,
        status: some(AppHttpResponse.failure('Minimum withdrawal amount is ${Utils.currency}$MINIMUM_WITHDRAWAL_AMOUNT')),
      ));
      onDone(false);
      return;
    } else if (state.bankAccount?.bank == null) {
      emit(state.copyWith(isWithdrawing: false, status: some(AppHttpResponse.failure('Please select Bank'))));
      onDone(false);
      return;
    } else if (!accountNumberIsValid) {
      emit(state.copyWith(isWithdrawing: false, status: some(AppHttpResponse.failure('Please enter a valid Account Number'))));
      onDone(false);
      return;
    }

    if (state.bankAccount != null) {
      if (state.amount.getOrNull >= MINIMUM_WITHDRAWAL_AMOUNT && accountNumberIsValid && state.withdrawalPin.isValid) {
        final response = await _repository.withdraw(
          state.amount.getOrNull,
          account: state.bankAccount?.accountNumber.getOrEmpty,
          bank: state.bankAccount?.bank?.bankName.getOrNull,
          pin: state.withdrawalPin.getOrNull!,
        );

        emit(state.copyWith(status: optionOf(response), isWithdrawing: false, validate: false));

        response.response.maybeMap(orElse: () => onDone(true), error: (_) => onDone(false));
      }
    }

    onDone(false);

    emit(state.copyWith(isWithdrawing: false));
  }

  void resolveBankAccount(String? value, [bool clearName = true]) async {
    emit(state.copyWith(status: none()));

    if (clearName)
      emit(state.copyWith(
        bankAccount: state.bankAccount?.copyWith(accountName: BasicTextField('')),
        accountNameController: state.accountNameController..text = '',
      ));

    if (value != null && value.length == ACCOUNT_NUMBER_LENGTH && state.bankAccount?.bank != null && !state.isResolvingAccount) {
      emit(state.copyWith(status: some(AppHttpResponse.info('Fetching account information..Please wait!')), isResolvingAccount: true));

      final _result = await _repository.verifyBankAccount(value, state.bankAccount?.bank);

      emit(_result.fold(
        (f) => state.copyWith(
          status: optionOf(f),
          validate: false,
          accountNameController: state.accountNameController..text = '',
        ),
        (account) => state.copyWith(
          validate: false,
          bankAccount: state.bankAccount?.merge(account),
          accountNameController: state.accountNameController..text = account != null ? '${account.accountName.getOrEmpty}' : '',
        ),
      ));
    }

    emit(state.copyWith(isResolvingAccount: false));
  }

  Future<void> forgotSecurityAnswer([bool? pop]) async {
    emit(state.copyWith(status: none(), isLoading: true));

    final response = await _repository.forgotSecurityAnswer(pop);

    emit(state.copyWith(
      requestedPINReset: response.response.maybeMap(orElse: () => false, info: (_) => true),
      status: optionOf(response),
      isLoading: false,
    ));
  }

  void confirmSecurityAnswer() async {
    emit(state.copyWith(status: none(), validate: true, isConfiguringPin: true));

    if (state.securityAnswer.isValid) {
      final response = await _repository.confirmSecurityAnswer(
        // state.securityQuestion,
        SecurityQuestion.favAthlete,
        answer: state.securityAnswer.getOrNull,
      );

      emit(state.copyWith(status: optionOf(response), isConfiguringPin: false, validate: false));
    }

    emit(state.copyWith(isConfiguringPin: false));
  }

  void _logPaymentSuccessful(double? amount, User? user, {required String currency}) async {
    await _firebaseAnalytics.logAddPaymentInfo(
      value: amount,
      currency: currency,
      callOptions: AnalyticsCallOptions(global: false),
      paymentType: 'CARD',
      coupon: 'NO_COUPON',
      items: [
        AnalyticsEventItem(
          itemId: 'user-id---${user?.id.value}',
          itemName: 'User ID',
          price: amount,
          quantity: 1,
          currency: currency,
        ),
        AnalyticsEventItem(
          itemId: 'transaction-type--${_TransactionType.cr.name.toUpperCase()}',
          itemName: 'Transaction Type',
          price: amount,
          quantity: 1,
          currency: currency,
        ),
      ],
    );

    await _firebaseAnalytics.logEvent(
      name: 'payment_successful',
      parameters: {
        'transactionType': _TransactionType.cr.name.toUpperCase(),
        'payment_status': 'Successful',
        'payment_type': 'CARD',
        'payment_reference': reference,
        'amount': amount,
        'currency': currency,
      },
    );
  }

  void _logPaymentFailed(double? amount, User? user, Object? message, {required String currency}) async {
    await _firebaseAnalytics.logEvent(
      name: 'payment_failed',
      parameters: <String, dynamic>{
        'reason_message': '$message',
        'payment_type': 'CARD',
        'payment_status': 'Failed',
        'payment_reference': reference,
        'payment_amount': amount,
        'payment_currency': currency,
      },
    );
  }
}
