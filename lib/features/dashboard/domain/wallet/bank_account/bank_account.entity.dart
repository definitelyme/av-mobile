library bank_account.entity.dart;

import 'package:auctionvillage/core/domain/entities/entities.dart';
import 'package:auctionvillage/features/dashboard/domain/index.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'bank_account.entity.freezed.dart';

@freezed
@immutable
class BankAccount with _$BankAccount {
  const BankAccount._();

  const factory BankAccount({
    required BasicTextField<String?> accountName,
    required BasicTextField<String?> accountNumber,
    Bank? bank,
  }) = _BankAccount;

  factory BankAccount.blank({
    String? accountName,
    String? accountNumber,
    Bank? bank,
  }) =>
      BankAccount(
        bank: bank,
        accountName: BasicTextField(accountName),
        accountNumber: BasicTextField(accountNumber),
      );

  BankAccount merge(BankAccount? other) => BankAccount(
        bank: other?.bank ?? bank,
        accountName: other?.accountName.isNotNull((it) => it as BasicTextField<String?>, orElse: (_) => accountName) ?? accountName,
        accountNumber: other?.accountNumber.isNotNull((it) => it as BasicTextField<String?>, orElse: (_) => accountNumber) ?? accountNumber,
      );
}
