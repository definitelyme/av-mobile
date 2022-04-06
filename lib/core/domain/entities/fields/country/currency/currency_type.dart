import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:json_annotation/json_annotation.dart';

part 'currency_type.g.dart';

class CurrencyType extends EnumClass {
  @BuiltValueEnumConst(fallback: true)
  static const CurrencyType NGN = _$NGN;
  static const CurrencyType USD = _$USD;
  static const CurrencyType GBP = _$GBP;

  const CurrencyType._(String name) : super(name);

  static BuiltSet<CurrencyType> get values => _$currencyTypeValues;

  static CurrencyType valueOf(String name) => _$currencyTypeValueOf(name);

  static Serializer<CurrencyType> get serializer => _$currencyTypeSerializer;
}

class CurrencyTypeSerializer implements JsonConverter<CurrencyType?, String?> {
  const CurrencyTypeSerializer();

  @override
  CurrencyType fromJson(String? value) => CurrencyType.valueOf('$value');

  static String? toJsonString(CurrencyType? instance) => instance?.name.toUpperCase();

  @override
  String? toJson(CurrencyType? instance) => toJsonString(instance);
}
