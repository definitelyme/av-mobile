library deal_type.entity.dart;

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:json_annotation/json_annotation.dart';

part 'deal_type.entity.g.dart';

class DealType extends EnumClass {
  static const DealType auction = _$auction;
  @BuiltValueEnumConst(fallback: true)
  static const DealType buyNow = _$buyNow;

  const DealType._(String name) : super(name);

  static BuiltSet<DealType> get values => _$values;

  static DealType valueOf(String name) => _$valueOf(name);

  @override
  String toString() => '$name'.toUpperCase();
}

class DealTypeSerializer implements JsonConverter<DealType?, String?> {
  const DealTypeSerializer();

  @override
  DealType fromJson(String? value) => DealType.valueOf('$value'.toUpperCase());

  @override
  String? toJson(DealType? instance) => '${instance?.name}';
}

extension DealTypeX on DealType {
  T when<T>({
    required T Function() auction,
    required T Function() buyNow,
  }) {
    switch (this) {
      case DealType.auction:
        return auction.call();
      case DealType.buyNow:
      default:
        return buyNow.call();
    }
  }
}
