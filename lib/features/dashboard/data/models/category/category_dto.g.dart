// GENERATED CODE - DO NOT MODIFY BY HAND

part of category_dto.dart;

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CategoryDTO _$$_CategoryDTOFromJson(Map<String, dynamic> json) =>
    _$_CategoryDTO(
      meta: json['_meta'] == null
          ? null
          : MetaDTO.fromJson(json['_meta'] as Map<String, dynamic>),
      data: CategoryDTOData.fromJson(json['Data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_CategoryDTOToJson(_$_CategoryDTO instance) {
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

_$_CategoryDTOData _$$_CategoryDTODataFromJson(Map<String, dynamic> json) =>
    _$_CategoryDTOData(
      productsAssigned:
          const IntegerSerializer().fromJson(json['ProductsAssigned']),
      percentageIncrease:
          const DoubleSerializer().fromJson(json['PercentageIncrease']),
      charge: const DoubleSerializer().fromJson(json['Charge']),
      active: const BooleanSerializer().fromJson(json['Active']),
      id: json['_id'] as String?,
      image: json['Image'] as String?,
      name: json['Name'] as String?,
      description: json['Description'] as String?,
      slug: json['Slug'] as String?,
      createdAt:
          const TimestampConverter().fromJson(json['CreatedAt'] as String?),
      updatedAt:
          const TimestampConverter().fromJson(json['UpdatedAt'] as String?),
    );

Map<String, dynamic> _$$_CategoryDTODataToJson(_$_CategoryDTOData instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('ProductsAssigned',
      const IntegerSerializer().toJson(instance.productsAssigned));
  writeNotNull('PercentageIncrease',
      const DoubleSerializer().toJson(instance.percentageIncrease));
  writeNotNull('Charge', const DoubleSerializer().toJson(instance.charge));
  writeNotNull('Active', const BooleanSerializer().toJson(instance.active));
  writeNotNull('_id', instance.id);
  writeNotNull('Image', instance.image);
  writeNotNull('Name', instance.name);
  writeNotNull('Description', instance.description);
  writeNotNull('Slug', instance.slug);
  writeNotNull(
      'CreatedAt', const TimestampConverter().toJson(instance.createdAt));
  writeNotNull(
      'UpdatedAt', const TimestampConverter().toJson(instance.updatedAt));
  return val;
}

_$_CategoryListDTO _$$_CategoryListDTOFromJson(Map<String, dynamic> json) =>
    _$_CategoryListDTO(
      meta: json['_meta'] == null
          ? null
          : MetaDTO.fromJson(json['_meta'] as Map<String, dynamic>),
      data: (json['Data'] as List<dynamic>?)
              ?.map((e) => CategoryDTOData.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$_CategoryListDTOToJson(_$_CategoryListDTO instance) {
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
