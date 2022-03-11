library sell_status.dart;

import 'package:auctionvillage/features/dashboard/domain/status/activity_status.dart';
import 'package:auctionvillage/utils/utils.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:flutter/painting.dart';
import 'package:json_annotation/json_annotation.dart';

part 'sell_status.g.dart';

class SellStatus extends EnumClass implements ActivityStatus {
  @BuiltValueEnumConst(fallback: true)
  static const SellStatus live = _$live;
  static const SellStatus done = _$done;
  static const SellStatus failed = _$failed;

  const SellStatus._(String name) : super(name);

  @override
  String get value {
    switch (this) {
      case SellStatus.done:
        return 'Done Deal';
      case SellStatus.live:
        return 'Live';
      case SellStatus.failed:
      default:
        return 'Failed';
    }
  }

  @override
  Color get color {
    switch (this) {
      case SellStatus.done:
        return Palette.accentGreen;
      case SellStatus.live:
        return Palette.accentYellow2;
      case SellStatus.failed:
      default:
        return Palette.failedRed;
    }
  }

  @override
  Color get bgColor => color.withOpacity(0.07);

  static BuiltSet<SellStatus> get values => _$values;

  static SellStatus valueOf(String name) => _$valueOf(name);

  @override
  String toString() => value;
}

class SellStatusSerializer implements JsonConverter<SellStatus?, String?> {
  const SellStatusSerializer();

  @override
  SellStatus fromJson(String? value) => SellStatus.valueOf('$value'.toUpperCase());

  @override
  String? toJson(SellStatus? instance) => '${instance?.name}';
}

extension SellStatusX on SellStatus {
  T when<T>({
    required T Function() live,
    required T Function() failed,
    required T Function() done,
  }) {
    switch (this) {
      case SellStatus.done:
        return done.call();
      case SellStatus.live:
        return live.call();
      case SellStatus.failed:
      default:
        return failed.call();
    }
  }
}
