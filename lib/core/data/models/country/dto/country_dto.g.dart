// GENERATED CODE - DO NOT MODIFY BY HAND

part of country_dto.dart;

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CountryDTO _$$_CountryDTOFromJson(Map<String, dynamic> json) =>
    _$_CountryDTO(
      id: json['id'] as String?,
      name: json['name'] as String?,
      iso: json['isoCode'] as String?,
      dialCode: json['dialCode'] as String?,
      flagUrl: json['flag'] as String?,
      currency:
          const CurrencyTypeSerializer().fromJson(json['currency'] as String?),
      currencyIcon: json['currency_icon'] as String?,
    );

Map<String, dynamic> _$$_CountryDTOToJson(_$_CountryDTO instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('name', instance.name);
  writeNotNull('isoCode', instance.iso);
  writeNotNull('dialCode', instance.dialCode);
  writeNotNull('flag', instance.flagUrl);
  writeNotNull(
      'currency', const CurrencyTypeSerializer().toJson(instance.currency));
  writeNotNull('currency_icon', instance.currencyIcon);
  return val;
}
