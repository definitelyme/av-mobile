// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'brand_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_BrandDTO _$$_BrandDTOFromJson(Map<String, dynamic> json) => _$_BrandDTO(
      active: const BooleanSerializer().fromJson(json['Active']),
      id: json['_id'] as String?,
      createdBy:
          const TimestampConverter().fromJson(json['CreatedBy'] as String?),
      name: json['Name'] as String?,
      description: json['Description'] as String?,
      slug: json['Slug'] as String?,
      createdAt:
          const TimestampConverter().fromJson(json['CreatedAt'] as String?),
      updatedAt:
          const TimestampConverter().fromJson(json['UpdatedAt'] as String?),
    );

Map<String, dynamic> _$$_BrandDTOToJson(_$_BrandDTO instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('Active', const BooleanSerializer().toJson(instance.active));
  writeNotNull('_id', instance.id);
  writeNotNull(
      'CreatedBy', const TimestampConverter().toJson(instance.createdBy));
  writeNotNull('Name', instance.name);
  writeNotNull('Description', instance.description);
  writeNotNull('Slug', instance.slug);
  writeNotNull(
      'CreatedAt', const TimestampConverter().toJson(instance.createdAt));
  writeNotNull(
      'UpdatedAt', const TimestampConverter().toJson(instance.updatedAt));
  return val;
}
