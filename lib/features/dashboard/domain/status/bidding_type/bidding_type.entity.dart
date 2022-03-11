library bidding_type.entity.dart;

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:json_annotation/json_annotation.dart';

part 'bidding_type.entity.g.dart';

class BiddingType extends EnumClass {
  @BuiltValueEnumConst(fallback: true)
  static const BiddingType online = _$online;
  static const BiddingType offline = _$offline;

  const BiddingType._(String name) : super(name);

  String get value {
    switch (this) {
      case BiddingType.online:
        return 'Online Bidding';
      case BiddingType.offline:
      default:
        return 'Offline Bidding';
    }
  }

  static BuiltSet<BiddingType> get values => _$values;

  static BiddingType valueOf(String name) => _$valueOf(name);

  @override
  String toString() => value;
}

class BiddingTypeSerializer implements JsonConverter<BiddingType?, String?> {
  const BiddingTypeSerializer();

  @override
  BiddingType fromJson(String? value) => BiddingType.valueOf('$value'.toUpperCase());

  @override
  String? toJson(BiddingType? instance) => '${instance?.name}';
}

extension BiddingTypeX on BiddingType {
  T when<T>({
    required T Function() online,
    required T Function() offline,
  }) {
    switch (this) {
      case BiddingType.online:
        return online.call();
      case BiddingType.offline:
      default:
        return offline.call();
    }
  }
}
