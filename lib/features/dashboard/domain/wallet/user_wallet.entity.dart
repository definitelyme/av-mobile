library user_wallet.entity.dart;

import 'package:auctionvillage/core/domain/entities/entities.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_wallet.entity.freezed.dart';

@freezed
@immutable
class UserWallet extends BaseEntity with _$UserWallet {
  const UserWallet._();

  const factory UserWallet({
    required UniqueId<String?> id,
    required AmountField<double> balance,
    required AmountField<double> revenue,
    required AmountField<double> expense,
    required AmountField<double> expendingExpense,
    @Default(false) bool isActive,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) = _UserWallet;

  factory UserWallet.blank({
    String? id,
    double? balance,
    double? revenue,
    double? expense,
    double? expendingExpense,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) =>
      UserWallet(
        id: UniqueId.fromExternal(id),
        balance: AmountField(balance ?? 0),
        revenue: AmountField(revenue ?? 0),
        expense: AmountField(expense ?? 0),
        expendingExpense: AmountField(expendingExpense ?? 0),
        createdAt: createdAt,
        updatedAt: updatedAt,
      );
}
