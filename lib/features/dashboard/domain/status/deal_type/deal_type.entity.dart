library deal_type.entity.dart;

import 'package:auctionvillage/utils/utils.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:json_annotation/json_annotation.dart';

part 'deal_type.entity.g.dart';

const DealType defaultDealType = DealType.buy_Now;

class DealType extends EnumClass {
  static const DealType auction = _$auction;
  @BuiltValueEnumConst(fallback: true)
  static const DealType buy_Now = _$buy_Now;

  const DealType._(String name) : super(name);

  static BuiltSet<DealType> get values => _$values;

  static DealType valueOf(String name) => _$valueOf(name);

  @override
  String toString() => '$name'.replaceAll('_', ' ').titleCase();
}

class DealTypeSerializer implements JsonConverter<DealType?, String?> {
  const DealTypeSerializer();

  @override
  DealType fromJson(String? value) {
    switch (value) {
      case 'AUCTION':
        return DealType.auction;
      case 'BUY_NOW':
      default:
        return DealType.buy_Now;
    }
  }

  static String? toJsonString(DealType? instance) => instance?.name.toUpperCase();

  @override
  String? toJson(DealType? instance) => toJsonString(instance);
}

extension DealTypeX on DealType {
  T when<T>({
    required T Function() auction,
    required T Function() buy_Now,
  }) {
    switch (this) {
      case DealType.auction:
        return auction.call();
      case DealType.buy_Now:
      default:
        return buy_Now.call();
    }
  }
}
