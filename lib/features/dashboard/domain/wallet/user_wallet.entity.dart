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
    required NumField<double> balance,
    required NumField<double> revenue,
    required NumField<double> expense,
    required NumField<double> expendingExpense,
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
        balance: NumField(balance ?? 0),
        revenue: NumField(revenue ?? 0),
        expense: NumField(expense ?? 0),
        expendingExpense: NumField(expendingExpense ?? 0),
        createdAt: createdAt,
        updatedAt: updatedAt,
      );
}
