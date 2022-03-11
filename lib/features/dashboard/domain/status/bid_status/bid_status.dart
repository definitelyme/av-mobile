library bid_status.dart;

import 'package:auctionvillage/features/dashboard/domain/status/activity_status.dart';
import 'package:auctionvillage/utils/utils.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:flutter/painting.dart';
import 'package:json_annotation/json_annotation.dart';

part 'bid_status.g.dart';

class BidStatus extends EnumClass implements ActivityStatus {
  static const BidStatus live = _$live;
  static const BidStatus sold = _$sold;
  @BuiltValueEnumConst(fallback: true)
  static const BidStatus closed = _$closed;

  const BidStatus._(String name) : super(name);

  @override
  String get value {
    switch (this) {
      case BidStatus.sold:
        return 'Won';
      case BidStatus.live:
        return 'Live';
      case BidStatus.closed:
      default:
        return 'Closed';
    }
  }

  @override
  Color get color {
    switch (this) {
      case BidStatus.sold:
        return Palette.accentGreen;
      case BidStatus.live:
        return Palette.failedRed;
      case BidStatus.closed:
      default:
        return Palette.failedRed;
    }
  }

  @override
  Color get bgColor => color.withOpacity(0.07);

  static BuiltSet<BidStatus> get values => _$values;

  static BidStatus valueOf(String name) => _$valueOf(name);

  @override
  String toString() => value;
}

class BidStatusSerializer implements JsonConverter<BidStatus?, String?> {
  const BidStatusSerializer();

  @override
  BidStatus fromJson(String? value) => BidStatus.valueOf('$value'.toUpperCase());

  @override
  String? toJson(BidStatus? instance) => '${instance?.name}';
}

extension BidStatusX on BidStatus {
  T when<T>({
    required T Function() live,
    required T Function() sold,
    required T Function() closed,
  }) {
    switch (this) {
      case BidStatus.sold:
        return sold.call();
      case BidStatus.live:
        return live.call();
      case BidStatus.closed:
      default:
        return closed.call();
    }
  }
}
