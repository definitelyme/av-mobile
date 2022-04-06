// GENERATED CODE - DO NOT MODIFY BY HAND

part of brand_information_dto.dart;

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_BrandInformationDTO _$$_BrandInformationDTOFromJson(
        Map<String, dynamic> json) =>
    _$_BrandInformationDTO(
      brand: json['brand'] as String?,
      brandModel: json['brandModel'] as String?,
      transmission: json['transmission'] as String?,
      yearOfManufacturer: json['yearOfManufacturer'] as int?,
      color: json['color'] as String?,
      condition: const ItemConditionSerializer()
          .fromJson(json['condition'] as String?),
      description: json['description'] as String?,
    );

Map<String, dynamic> _$$_BrandInformationDTOToJson(
    _$_BrandInformationDTO instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('brand', instance.brand);
  writeNotNull('brandModel', instance.brandModel);
  writeNotNull('transmission', instance.transmission);
  writeNotNull('yearOfManufacturer', instance.yearOfManufacturer);
  writeNotNull('color', instance.color);
  writeNotNull(
      'condition', ItemConditionSerializer.toJsonString(instance.condition));
  writeNotNull('description', instance.description);
  return val;
}
