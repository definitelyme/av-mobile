// GENERATED CODE - DO NOT MODIFY BY HAND

part of user_wallet_dto.dart;

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserWalletDTO _$$_UserWalletDTOFromJson(Map<String, dynamic> json) =>
    _$_UserWalletDTO(
      meta: json['_meta'] == null
          ? null
          : MetaDTO.fromJson(json['_meta'] as Map<String, dynamic>),
      data: _UserWalletDTOData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_UserWalletDTOToJson(_$_UserWalletDTO instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('_meta', instance.meta?.toJson());
  val['data'] = instance.data.toJson();
  return val;
}

_$__UserWalletDTOData _$$__UserWalletDTODataFromJson(
        Map<String, dynamic> json) =>
    _$__UserWalletDTOData(
      id: json['_id'] as String?,
      balance: const DoubleSerializer().fromJson(json['balance']),
      revenue: const DoubleSerializer().fromJson(json['revenue']),
      expense: const DoubleSerializer().fromJson(json['expense']),
      expendingExpense:
          const DoubleSerializer().fromJson(json['expendingExpense']),
      active: const BooleanSerializer().fromJson(json['active']),
      createdAt:
          const TimestampConverter().fromJson(json['createdAt'] as String?),
      updatedAt:
          const TimestampConverter().fromJson(json['updatedAt'] as String?),
    );

Map<String, dynamic> _$$__UserWalletDTODataToJson(
    _$__UserWalletDTOData instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('_id', instance.id);
  writeNotNull('balance', const DoubleSerializer().toJson(instance.balance));
  writeNotNull('revenue', const DoubleSerializer().toJson(instance.revenue));
  writeNotNull('expense', const DoubleSerializer().toJson(instance.expense));
  writeNotNull('expendingExpense',
      const DoubleSerializer().toJson(instance.expendingExpense));
  writeNotNull('active', const BooleanSerializer().toJson(instance.active));
  writeNotNull(
      'createdAt', const TimestampConverter().toJson(instance.createdAt));
  writeNotNull(
      'updatedAt', const TimestampConverter().toJson(instance.updatedAt));
  return val;
}

_$_UserWalletListDTO _$$_UserWalletListDTOFromJson(Map<String, dynamic> json) =>
    _$_UserWalletListDTO(
      meta: json['_meta'] == null
          ? null
          : MetaDTO.fromJson(json['_meta'] as Map<String, dynamic>),
      data: (json['data'] as List<dynamic>?)
              ?.map(
                  (e) => _UserWalletDTOData.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$_UserWalletListDTOToJson(
    _$_UserWalletListDTO instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('_meta', instance.meta?.toJson());
  val['data'] = instance.data.map((e) => e.toJson()).toList();
  return val;
}
