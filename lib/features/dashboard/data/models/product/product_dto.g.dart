// GENERATED CODE - DO NOT MODIFY BY HAND

part of product_dto.dart;

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ProductDTO _$$_ProductDTOFromJson(Map<String, dynamic> json) =>
    _$_ProductDTO(
      meta: json['_meta'] == null
          ? null
          : MetaDTO.fromJson(json['_meta'] as Map<String, dynamic>),
      data: ProductDTOData.fromJson(json['Data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_ProductDTOToJson(_$_ProductDTO instance) {
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

_$_ProductDTOData _$$_ProductDTODataFromJson(Map<String, dynamic> json) =>
    _$_ProductDTOData(
      brandInformation: json['BrandInformation'] == null
          ? null
          : BrandInformationDTO.fromJson(
              json['BrandInformation'] as Map<String, dynamic>),
      shippingInformation: json['ShippingInformation'] == null
          ? null
          : ShippingInformationDTO.fromJson(
              json['ShippingInformation'] as Map<String, dynamic>),
      termsInformation: json['TermsInformation'] == null
          ? null
          : TermsInformationDTO.fromJson(
              json['TermsInformation'] as Map<String, dynamic>),
      category: json['Category'] == null
          ? null
          : CategoryDTO.fromJson(json['Category'] as Map<String, dynamic>),
      user: json['User'] == null
          ? null
          : UserDTO.fromJson(json['User'] as Map<String, dynamic>),
      vendor: json['Vendor'] == null
          ? null
          : UserDTO.fromJson(json['Vendor'] as Map<String, dynamic>),
      photos: (json['Photos'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      active: const BooleanSerializer().fromJson(json['Active']),
      id: json['_id'] as String?,
      status: json['Status'] as String?,
      deal: json['Deal'] == null
          ? null
          : DealDTOData.fromJson(json['Deal'] as Map<String, dynamic>),
      lga: json['Lga'] as String?,
      name: json['Name'] as String?,
      state: json['State'] as String?,
      createdAt:
          const TimestampConverter().fromJson(json['CreatedAt'] as String?),
      updatedAt:
          const TimestampConverter().fromJson(json['UpdatedAt'] as String?),
    );

Map<String, dynamic> _$$_ProductDTODataToJson(_$_ProductDTOData instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('BrandInformation', instance.brandInformation?.toJson());
  writeNotNull('ShippingInformation', instance.shippingInformation?.toJson());
  writeNotNull('TermsInformation', instance.termsInformation?.toJson());
  writeNotNull('Category', instance.category?.toJson());
  writeNotNull('User', instance.user?.toJson());
  writeNotNull('Vendor', instance.vendor?.toJson());
  val['Photos'] = instance.photos;
  writeNotNull('Active', const BooleanSerializer().toJson(instance.active));
  writeNotNull('_id', instance.id);
  writeNotNull('Status', instance.status);
  writeNotNull('Deal', instance.deal?.toJson());
  writeNotNull('Lga', instance.lga);
  writeNotNull('Name', instance.name);
  writeNotNull('State', instance.state);
  writeNotNull(
      'CreatedAt', const TimestampConverter().toJson(instance.createdAt));
  writeNotNull(
      'UpdatedAt', const TimestampConverter().toJson(instance.updatedAt));
  return val;
}

_$_ProductListDTO _$$_ProductListDTOFromJson(Map<String, dynamic> json) =>
    _$_ProductListDTO(
      meta: json['_meta'] == null
          ? null
          : MetaDTO.fromJson(json['_meta'] as Map<String, dynamic>),
      data: (json['Data'] as List<dynamic>?)
              ?.map((e) => ProductDTOData.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$_ProductListDTOToJson(_$_ProductListDTO instance) {
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
