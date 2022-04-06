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
import 'package:flutter/widgets.dart';
import 'package:flutter_masked_text2/flutter_masked_text2.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/collection.dart';

part 'wallet_cubit.freezed.dart';
part 'wallet_state.dart';

@injectable
class WalletCubit extends Cubit<WalletState> with BaseCubit {
  final WalletRepository _repository;
  StreamSubscription<DebitCard?>? _cardsSubscription;
  static const int MINIMUM_WITHDRAWAL_AMOUNT = 100;
  static const int ACCOUNT_NUMBER_LENGTH = 10;

  WalletCubit(this._repository) : super(WalletState.initial());

  void toggleLoading([bool? isLoading, Option<AppHttpResponse?>? status]) =>
      emit(state.copyWith(isLoading: isLoading ?? !state.isLoading, status: status ?? state.status));

  void cardNameChanged(String value) => emit(state.copyWith(card: state.card?.copyWith(cardName: DebitCardName(value))));

  void cardNumberChanged(String value) =>
      emit(state.copyWith(card: state.card?.copyWith(cardNumber: DebitCardNumber(value.trimWhiteSpaces().removeNewLines()))));

  void cardExpiryChanged(String value) =>
      emit(state.copyWith(card: state.card?.copyWith(cardExpiryDate: DebitCardExpiryDate(value.trimWhiteSpaces()))));

  void cardCVVChanged(String value) => emit(state.copyWith(card: state.card?.copyWith(cardCVV: DebitCardCVV(value.trimWhiteSpaces()))));

  void amountChanged() {
    final value = state.amountTextController.numberValue;
    emit(state.copyWith(amount: AmountField((value ?? 0).toDouble())));
  }

  @override
  Future<void> close() {
    _cardsSubscription?.cancel();
    return super.close();
  }

  void pinChanged(String? value) => emit(state.copyWith(cardPin: OTPCode(value), withdrawalPin: OTPCode(value)));

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

  bool get canFinishPinSetup => state.withdrawalPin.isValid && state.confirmWithdrawalPin.isValid && state.securityAnswer.isValid;

  Future<void> getCard({DebitCard? card, bool? local}) async {
    toggleLoading(true, none());

    final response = await _repository.getCard(card: card, local: local);

    emit(response.fold(
      (f) => state.copyWith(status: some(f)),
      (card) => state.copyWith(card: card),
    ));

    toggleLoading(false);
  }

  void validateAndSaveCard(void Function(bool) onDone) async {
    emit(state.copyWith(isAddingCard: true, validate: true, status: none()));

    // if (state.card != null && state.card!.failure.isNone()) {
    final response = await _repository.addDebitCard(state.card!);

    emit(state.copyWith(status: optionOf(response), isAddingCard: false));

    response.response.maybeMap(orElse: () => onDone(true), error: (_) => onDone(false));
    // }

    onDone(false);

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

  void fundWallet(void Function(bool) onDone) async {
    emit(state.copyWith(isFundingWallet: true, validate: true, status: none()));

    if (state.amount.isValid && state.cardPin.isValid) {
      final response = await _repository.fundWallet(
        amount: state.amount.getOrNull,
        cardPin: state.cardPin.getOrNull!,
      );

      log.w(response.response);

      emit(state.copyWith(status: optionOf(response), isFundingWallet: false, validate: false));

      response.response.maybeMap(orElse: () => onDone(true), error: (_) => onDone(false));
    }

    onDone(false);

    emit(state.copyWith(isFundingWallet: false));
  }

  void setupPin(void Function(bool) onDone) async {
    emit(state.copyWith(isConfiguringPin: true, validate: true, status: none()));

    if (!state.withdrawalPin.compare(state.confirmWithdrawalPin.getOrNull)) {
      emit(state.copyWith(isConfiguringPin: false, status: some(AppHttpResponse.failure('PINs do not match'))));
      onDone(false);
      return;
    }

    if (state.withdrawalPin.isValid && state.securityAnswer.isValid) {
      final response = await _repository.setupPin(
        '${state.withdrawalPin.getOrEmpty}',
        state.securityQuestion,
        answer: state.securityAnswer.getOrNull,
      );

      emit(state.copyWith(status: optionOf(response), isConfiguringPin: false, validate: false));

      response.response.maybeMap(orElse: () => onDone(true), error: (_) => onDone(false));
    }

    onDone(false);

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
}
