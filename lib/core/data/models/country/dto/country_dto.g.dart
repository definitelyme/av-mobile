// GENERATED CODE - DO NOT MODIFY BY HAND

part of country_dto.dart;

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CountryDTO _$$_CountryDTOFromJson(Map<String, dynamic> json) =>
    _$_CountryDTO(
      id: json['Id'] as String?,
      name: json['Name'] as String?,
      iso2: json['Iso2'] as String?,
      iso3: json['Iso3'] as String?,
      dialCode: json['phone_code'] as String?,
    );

Map<String, dynamic> _$$_CountryDTOToJson(_$_CountryDTO instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('Id', instance.id);
  writeNotNull('Name', instance.name);
  writeNotNull('Iso2', instance.iso2);
  writeNotNull('Iso3', instance.iso3);
  writeNotNull('phone_code', instance.dialCode);
  return val;
}
