library deal_plan.entity.dart;

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:json_annotation/json_annotation.dart';

part 'deal_plan.entity.g.dart';

class DealPlan extends EnumClass {
  static const DealPlan basic = _$basic;
  static const DealPlan professional = _$professional;
  static const DealPlan enterprise = _$enterprise;
  @BuiltValueEnumConst(fallback: true)
  static const DealPlan free = _$free;

  const DealPlan._(String name) : super(name);

  static BuiltSet<DealPlan> get values => _$values;

  static DealPlan valueOf(String name) => _$valueOf(name);

  @override
  String toString() => '$name';
}

class DealPlanSerializer implements JsonConverter<DealPlan?, String?> {
  const DealPlanSerializer();

  @override
  DealPlan fromJson(String? value) => DealPlan.valueOf('$value'.toUpperCase());

  @override
  String? toJson(DealPlan? instance) => '${instance?.name}';
}

extension DealPlanX on DealPlan {
  T when<T>({
    required T Function() basic,
    required T Function() professional,
    required T Function() enterprise,
    required T Function() free,
  }) {
    switch (this) {
      case DealPlan.basic:
        return basic.call();
      case DealPlan.professional:
        return professional.call();
      case DealPlan.enterprise:
        return enterprise.call();
      case DealPlan.free:
      default:
        return free.call();
    }
  }
}
