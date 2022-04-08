library country_dto.dart;

import 'dart:convert';

import 'package:auctionvillage/core/domain/entities/entities.dart';
import 'package:auctionvillage/utils/utils.dart';
import 'package:floor/floor.dart';
import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/kt.dart';

part 'country_dto.freezed.dart';
part 'country_dto.g.dart';

CountryDTO deserializeCountryDTO(Map<String, dynamic> json) => CountryDTO.fromJson(json);
Map<String, dynamic> serializeCountryDTO(CountryDTO object) => object.toJson();

@freezed
@immutable
class CountryDTO with _$CountryDTO {
  const CountryDTO._();

  const factory CountryDTO({
    String? id,
    String? name,
    @JsonKey(name: 'isoCode') String? iso,
    @JsonKey(name: 'dialCode') String? dialCode,
    @JsonKey(name: 'flag') String? flagUrl,
    @CurrencyTypeSerializer() CurrencyType? currency,
    @JsonKey(name: 'currency_icon') String? currencyIcon,
    String? locale,
  }) = _CountryDTO;

  factory CountryDTO.fromJson(Map<String, dynamic> json) => _$CountryDTOFromJson(json);

  factory CountryDTO.fromDomain(Country? instance) => CountryDTO(
        id: instance?.id?.value,
        iso: instance?.iso.valueOrNull,
        name: instance?.name.valueOrNull,
        dialCode: instance?.dialCode.valueOrNull,
      );

  Country get domain => Country(
        id: UniqueId.fromExternal(id),
        iso: BasicTextField(iso?.toLowerCase()),
        name: BasicTextField(name),
        dialCode: BasicTextField(dialCode),
        flag: BasicTextField(flagUrl),
        currencyIcon: BasicTextField(currencyIcon),
        locale: locale,
        type: currency,
      );

  static Future<List<CountryDTO>> countries(BuildContext context) async {
    final data = await DefaultAssetBundle.of(context).loadString(AppAssets.countries);
    final json = jsonDecode(data) as List<dynamic>;
    return json.map((e) => CountryDTO.fromJson((e as Map).mapToStringDynamic)).toList();
  }
}

class CountryDTOFloorConverter extends TypeConverter<CountryDTO?, String> {
  @override
  CountryDTO? decode(String databaseValue) => CountryDTO.fromJson(jsonDecode(databaseValue) as Map<String, dynamic>);

  @override
  String encode(CountryDTO? value) => jsonEncode(value?.toJson());
}

extension CountryDTOListX on List<CountryDTO> {
  KtList<Country> get domain => KtList.from(map((e) => e.domain).toList());
}
