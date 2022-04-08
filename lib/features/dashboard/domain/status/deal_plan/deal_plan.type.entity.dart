library deal_plan.type.entity.dart;

import 'package:auctionvillage/utils/utils.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:json_annotation/json_annotation.dart';

part 'deal_plan.type.entity.g.dart';

const DealPlanType defaultDealPlanType = DealPlanType.free;

class DealPlanType extends EnumClass {
  static const DealPlanType business = _$business;
  static const DealPlanType professional = _$professional;
  static const DealPlanType enterprise = _$enterprise;
  @BuiltValueEnumConst(fallback: true)
  static const DealPlanType free = _$free;

  const DealPlanType._(String name) : super(name);

  static BuiltSet<DealPlanType> get values => _$values;

  static DealPlanType valueOf(String name) => _$valueOf(name);

  static DealPlanType fromJson(String value) {
    switch (value) {
      case 'BUSINESS':
        return DealPlanType.business;
      case 'PROFESSIONAL':
        return DealPlanType.professional;
      case 'ENTERPRISE':
        return DealPlanType.enterprise;
      case 'FREE':
      default:
        return DealPlanType.free;
    }
  }

  String get sentence => '$name'.replaceAll('_', ' ').sentenceCase();

  @override
  String toString() => '$name'.replaceAll('_', ' ').titleCase();
}

class DealPlanTypeSerializer implements JsonConverter<DealPlanType?, String?> {
  const DealPlanTypeSerializer();

  @override
  DealPlanType fromJson(String? value) => DealPlanType.fromJson('$value');

  static String? toJsonString(DealPlanType? instance) => instance?.name.toUpperCase();

  @override
  String? toJson(DealPlanType? instance) => toJsonString(instance);
}

extension DealPlanTypeX on DealPlanType {
  T when<T>({
    required T Function() business,
    required T Function() professional,
    required T Function() enterprise,
    required T Function() free,
  }) {
    switch (this) {
      case DealPlanType.business:
        return business.call();
      case DealPlanType.professional:
        return professional.call();
      case DealPlanType.enterprise:
        return enterprise.call();
      case DealPlanType.free:
      default:
        return free.call();
    }
  }
}
