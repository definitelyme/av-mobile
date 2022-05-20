library payment_status.dart;

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:json_annotation/json_annotation.dart';

part 'payment_status.g.dart';

class PaymentStatus extends EnumClass {
  @BuiltValueEnumConst(fallback: true)
  static const PaymentStatus pending = _$pending;
  static const PaymentStatus confirmed = _$confirmed;
  static const PaymentStatus failed = _$failed;

  const PaymentStatus._(String name) : super(name);

  static BuiltSet<PaymentStatus> get values => _$values;

  static PaymentStatus valueOf(String name) => _$valueOf(name);
}

extension PaymentStatusX on PaymentStatus {
  T maybeWhen<T>({
    T Function()? pending,
    T Function()? confirmed,
    T Function()? failed,
    required T Function() orElse,
  }) {
    if (this == PaymentStatus.pending)
      return pending != null ? pending.call() : orElse.call();
    else if (this == PaymentStatus.confirmed)
      return confirmed != null ? confirmed.call() : orElse.call();
    else if (this == PaymentStatus.failed)
      return failed != null ? failed.call() : orElse.call();
    else
      return orElse.call();
  }

  T when<T>({
    required T Function() pending,
    required T Function() confirmed,
    required T Function() failed,
  }) {
    switch (this) {
      case PaymentStatus.confirmed:
        return confirmed.call();
      case PaymentStatus.failed:
        return failed.call();
      case PaymentStatus.pending:
      default:
        return pending.call();
    }
  }
}

class PaymentStatusSerializer
    implements JsonConverter<PaymentStatus?, String?> {
  const PaymentStatusSerializer();

  @override
  PaymentStatus fromJson(String? value) => PaymentStatus.valueOf('$value');

  @override
  String? toJson(PaymentStatus? instance) => instance?.name;
}
