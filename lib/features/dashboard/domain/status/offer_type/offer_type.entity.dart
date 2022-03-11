library offer_type.entity.dart;

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:json_annotation/json_annotation.dart';

part 'offer_type.entity.g.dart';

class OfferType extends EnumClass {
  static const OfferType negotiable = _$negotiable;
  @BuiltValueEnumConst(fallback: true)
  static const OfferType nonNegotiable = _$nonNegotiable;

  const OfferType._(String name) : super(name);

  static BuiltSet<OfferType> get values => _$values;

  static OfferType valueOf(String name) => _$valueOf(name);

  @override
  String toString() => '$name';
}

class OfferTypeSerializer implements JsonConverter<OfferType?, String?> {
  const OfferTypeSerializer();

  @override
  OfferType fromJson(String? value) => OfferType.valueOf('$value'.toUpperCase());

  @override
  String? toJson(OfferType? instance) => '${instance?.name}';
}

extension OfferTypeX on OfferType {
  T when<T>({
    required T Function() negotiable,
    required T Function() nonNegotiable,
  }) {
    switch (this) {
      case OfferType.negotiable:
        return negotiable.call();
      case OfferType.nonNegotiable:
      default:
        return nonNegotiable.call();
    }
  }
}
