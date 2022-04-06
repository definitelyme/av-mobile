library deal_status.entity.dart;

import 'package:auctionvillage/utils/utils.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:json_annotation/json_annotation.dart';

part 'deal_status.entity.g.dart';

const DealStatus defaultDealStatus = DealStatus.pending;

class DealStatus extends EnumClass {
  static const DealStatus approved = _$approved;
  static const DealStatus declined = _$declined;
  @BuiltValueEnumConst(fallback: true)
  static const DealStatus pending = _$pending;

  const DealStatus._(String name) : super(name);

  static BuiltSet<DealStatus> get values => _$values;

  static DealStatus valueOf(String name) => _$valueOf(name);

  @override
  String toString() => '$name'.replaceAll('_', ' ').titleCase();
}

class DealStatusSerializer implements JsonConverter<DealStatus?, String?> {
  const DealStatusSerializer();

  @override
  DealStatus fromJson(String? value) => DealStatus.valueOf('$value'.toLowerCase());

  static String? toJsonString(DealStatus? instance) => instance?.name.toUpperCase();

  @override
  String? toJson(DealStatus? instance) => toJsonString(instance);
}

extension DealStatusX on DealStatus {
  T when<T>({
    required T Function() approved,
    required T Function() declined,
    required T Function() pending,
  }) {
    switch (this) {
      case DealStatus.declined:
        return declined.call();
      case DealStatus.approved:
        return approved.call();
      case DealStatus.pending:
      default:
        return pending.call();
    }
  }
}
