library transaction_statua.entity.dart;

import 'package:auctionvillage/features/dashboard/domain/status/activity_status.dart';
import 'package:auctionvillage/utils/utils.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:flutter/painting.dart';
import 'package:json_annotation/json_annotation.dart';

part 'transaction_statua.entity.g.dart';

class TransactionStatus extends EnumClass implements ActivityStatus {
  @BuiltValueEnumConst(fallback: true)
  static const TransactionStatus pending = _$pending;
  static const TransactionStatus successful = _$successful;
  static const TransactionStatus failed = _$failed;

  const TransactionStatus._(String name) : super(name);

  @override
  String get value {
    switch (this) {
      case TransactionStatus.successful:
        return 'Successful';
      case TransactionStatus.failed:
        return 'Failed';
      case TransactionStatus.pending:
      default:
        return 'Pending';
    }
  }

  @override
  Color get color {
    switch (this) {
      case TransactionStatus.successful:
        return Palette.accentGreen;
      case TransactionStatus.failed:
        return Palette.failedRed;
      case TransactionStatus.pending:
      default:
        return Palette.accentYellow2;
    }
  }

  @override
  Color get bgColor => color.withOpacity(0.07);

  static BuiltSet<TransactionStatus> get values => _$values;

  static TransactionStatus valueOf(String name) => _$valueOf(name);

  @override
  String toString() => value;
}

class TransactionStatusSerializer
    implements JsonConverter<TransactionStatus?, String?> {
  const TransactionStatusSerializer();

  @override
  TransactionStatus fromJson(String? value) =>
      TransactionStatus.valueOf(value ?? '');

  @override
  String? toJson(TransactionStatus? instance) => '${instance?.name}';
}

extension TransactionStatusX on TransactionStatus {
  T when<T>({
    required T Function() pending,
    required T Function() failed,
    required T Function() successful,
  }) {
    switch (this) {
      case TransactionStatus.successful:
        return successful.call();
      case TransactionStatus.failed:
        return failed.call();
      case TransactionStatus.pending:
      default:
        return pending.call();
    }
  }
}
