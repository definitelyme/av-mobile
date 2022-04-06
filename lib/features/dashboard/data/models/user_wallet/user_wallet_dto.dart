// ignore_for_file: unused_element

library user_wallet_dto.dart;

import 'package:auctionvillage/core/data/index.dart';
import 'package:auctionvillage/features/dashboard/domain/index.dart';
import 'package:auctionvillage/manager/serializer/serializers.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/collection.dart';

part 'user_wallet_dto.g.dart';
part 'user_wallet_dto.freezed.dart';

UserWalletDTO deserializeUserWalletDTO(Map<String, dynamic> json) => UserWalletDTO.fromJson(json);
Map<String, dynamic> serializeUserWalletDTO(UserWalletDTO object) => object.toJson();

@immutable
@Freezed(maybeMap: false)
class UserWalletDTO with _$UserWalletDTO {
  const UserWalletDTO._();

  const factory UserWalletDTO({
    @JsonKey(name: '_meta') MetaDTO? meta,
    required _UserWalletDTOData data,
  }) = _UserWalletDTO;

  /// Maps the incoming Json to a Data Transfer Object (DTO).
  factory UserWalletDTO.fromJson(Map<String, dynamic> json) => _$UserWalletDTOFromJson(json);

  /// Maps the Data Transfer Object to a UserWallet Object.
  UserWallet get domain => data.domain;
}

@Freezed(maybeMap: false)
@immutable
class _UserWalletDTOData with _$_UserWalletDTOData {
  const _UserWalletDTOData._();

  const factory _UserWalletDTOData({
    @JsonKey(name: '_id') String? id,
    @DoubleSerializer() double? balance,
    @DoubleSerializer() double? revenue,
    @DoubleSerializer() double? expense,
    @DoubleSerializer() double? expendingExpense,
    @BooleanSerializer() bool? active,
    @TimestampConverter() DateTime? createdAt,
    @TimestampConverter() DateTime? updatedAt,
  }) = __UserWalletDTOData;

  /// Maps the incoming Json to a Data Transfer Object (DTO).
  factory _UserWalletDTOData.fromJson(Map<String, dynamic> json) => _$_UserWalletDTODataFromJson(json);

  /// Maps the Data Transfer Object to a UserWallet Object.
  UserWallet get domain => UserWallet.blank(
        id: id,
        balance: balance,
        expense: expense,
        revenue: revenue,
        expendingExpense: expendingExpense,
        createdAt: createdAt,
        updatedAt: updatedAt,
      );
}

UserWalletListDTO deserializeUserWalletListDTO(Map<String, dynamic> json) => UserWalletListDTO.fromJson(json);
Map<String, dynamic> serializeUserWalletListDTO(UserWalletListDTO object) => object.toJson();

@immutable
@Freezed(maybeMap: false)
class UserWalletListDTO with _$UserWalletListDTO {
  const UserWalletListDTO._();

  const factory UserWalletListDTO({
    @JsonKey(name: '_meta') MetaDTO? meta,
    @Default([]) List<_UserWalletDTOData> data,
  }) = _UserWalletListDTO;

  /// Maps the incoming Json to a Data Transfer Object (DTO).
  factory UserWalletListDTO.fromJson(Map<String, dynamic> json) => _$UserWalletListDTOFromJson(json);

  /// Maps the Data Transfer Object to a KtList<UserWalletlist> Object.
  KtList<UserWallet> get domain => KtList.from(data.map((e) => e.domain));
}
