// GENERATED CODE - DO NOT MODIFY BY HAND

part of deal_dto.dart;

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DealDTO _$$_DealDTOFromJson(Map<String, dynamic> json) => _$_DealDTO(
      meta: json['_meta'] == null
          ? null
          : MetaDTO.fromJson(json['_meta'] as Map<String, dynamic>),
      data: DealDTOData.fromJson(json['Data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_DealDTOToJson(_$_DealDTO instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('_meta', instance.meta?.toJson());
  val['Data'] = instance.data.toJson();
  return val;
}

_$_DealDTOData _$$_DealDTODataFromJson(Map<String, dynamic> json) =>
    _$_DealDTOData(
      id: json['_id'] as String?,
      basePrice: const DoubleSerializer().fromJson(json['BasePrice']),
      isPrivate: const BooleanSerializer().fromJson(json['IsPrivate']),
      status: json['status'] as String?,
      sponsored: const BooleanSerializer().fromJson(json['Sponsored']),
      dealPlan: json['plan'] as String?,
      admittanceFee: const DoubleSerializer().fromJson(json['AdmittanceFee']),
      clicks: const IntegerSerializer().fromJson(json['Clicks']),
      dealPriority: const IntegerSerializer().fromJson(json['DealPriority']),
      bidStatus: json['BidStatus'] as String?,
      isClosing: const BooleanSerializer().fromJson(json['IsClosing']),
      active: const BooleanSerializer().fromJson(json['Active']),
      lastPriceOffered:
          const DoubleSerializer().fromJson(json['LastPriceOffered']),
      offerType: json['OfferType'] as String?,
      startDate:
          const TimestampConverter().fromJson(json['StartDate'] as String?),
      endDate: const TimestampConverter().fromJson(json['EndDate'] as String?),
      type: json['Type'] as String?,
      user: json['User'] == null
          ? null
          : UserDTO.fromJson(json['User'] as Map<String, dynamic>),
      vendor: json['Vendor'] == null
          ? null
          : UserDTO.fromJson(json['Vendor'] as Map<String, dynamic>),
      product: json['Product'] == null
          ? null
          : ProductDTOData.fromJson(json['Product'] as Map<String, dynamic>),
      category: json['Category'] == null
          ? null
          : CategoryDTOData.fromJson(json['Category'] as Map<String, dynamic>),
      createdAt:
          const TimestampConverter().fromJson(json['CreatedAt'] as String?),
      updatedAt:
          const TimestampConverter().fromJson(json['UpdatedAt'] as String?),
    );

Map<String, dynamic> _$$_DealDTODataToJson(_$_DealDTOData instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('_id', instance.id);
  writeNotNull(
      'BasePrice', const DoubleSerializer().toJson(instance.basePrice));
  writeNotNull(
      'IsPrivate', const BooleanSerializer().toJson(instance.isPrivate));
  writeNotNull('status', instance.status);
  writeNotNull(
      'Sponsored', const BooleanSerializer().toJson(instance.sponsored));
  writeNotNull('plan', instance.dealPlan);
  writeNotNull(
      'AdmittanceFee', const DoubleSerializer().toJson(instance.admittanceFee));
  writeNotNull('Clicks', const IntegerSerializer().toJson(instance.clicks));
  writeNotNull(
      'DealPriority', const IntegerSerializer().toJson(instance.dealPriority));
  writeNotNull('BidStatus', instance.bidStatus);
  writeNotNull(
      'IsClosing', const BooleanSerializer().toJson(instance.isClosing));
  writeNotNull('Active', const BooleanSerializer().toJson(instance.active));
  writeNotNull('LastPriceOffered',
      const DoubleSerializer().toJson(instance.lastPriceOffered));
  writeNotNull('OfferType', instance.offerType);
  writeNotNull(
      'StartDate', const TimestampConverter().toJson(instance.startDate));
  writeNotNull('EndDate', const TimestampConverter().toJson(instance.endDate));
  writeNotNull('Type', instance.type);
  writeNotNull('User', instance.user?.toJson());
  writeNotNull('Vendor', instance.vendor?.toJson());
  writeNotNull('Product', instance.product?.toJson());
  writeNotNull('Category', instance.category?.toJson());
  writeNotNull(
      'CreatedAt', const TimestampConverter().toJson(instance.createdAt));
  writeNotNull(
      'UpdatedAt', const TimestampConverter().toJson(instance.updatedAt));
  return val;
}

_$_DealListDTO _$$_DealListDTOFromJson(Map<String, dynamic> json) =>
    _$_DealListDTO(
      meta: json['_meta'] == null
          ? null
          : MetaDTO.fromJson(json['_meta'] as Map<String, dynamic>),
      data: (json['Data'] as List<dynamic>?)
              ?.map((e) => DealDTOData.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$_DealListDTOToJson(_$_DealListDTO instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('_meta', instance.meta?.toJson());
  val['Data'] = instance.data.map((e) => e.toJson()).toList();
  return val;
}
