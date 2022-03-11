// GENERATED CODE - DO NOT MODIFY BY HAND

part of brand_information_dto.dart;

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_BrandInformationDTO _$$_BrandInformationDTOFromJson(
        Map<String, dynamic> json) =>
    _$_BrandInformationDTO(
      brand: json['Brand'] == null
          ? null
          : BrandDTO.fromJson(json['Brand'] as Map<String, dynamic>),
      brandModel: json['BrandModel'] == null
          ? null
          : BrandModelDTO.fromJson(json['BrandModel'] as Map<String, dynamic>),
      yearOfManufacturer: json['YearOfManufacturer'] as int?,
      color: json['Color'] as String?,
      condition: json['Condition'] as String?,
      description: json['Description'] as String?,
    );

Map<String, dynamic> _$$_BrandInformationDTOToJson(
    _$_BrandInformationDTO instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('Brand', instance.brand?.toJson());
  writeNotNull('BrandModel', instance.brandModel?.toJson());
  writeNotNull('YearOfManufacturer', instance.yearOfManufacturer);
  writeNotNull('Color', instance.color);
  writeNotNull('Condition', instance.condition);
  writeNotNull('Description', instance.description);
  return val;
}
