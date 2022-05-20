library payment_method.dart;

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:json_annotation/json_annotation.dart';

part 'payment_method.g.dart';

class PaymentMethod extends EnumClass {
  static const PaymentMethod FLUTTERWAVE = _$FLUTTERWAVE;
  static const PaymentMethod PAYSTACK = _$PAYSTACK;
  @BuiltValueEnumConst(fallback: true)
  static const PaymentMethod NONE = _$NONE;

  const PaymentMethod._(String name) : super(name);

  static BuiltSet<PaymentMethod> get values => _$values;

  static BuiltSet<PaymentMethod> get methods => BuiltSet.from([PaymentMethod.FLUTTERWAVE]);

  static PaymentMethod valueOf(String name) => _$valueOf(name);

  String get formatted {
    return when(
      flutterwave: () => 'Pay with Flutterwave',
      paystack: () => 'Pay with Paystack',
    );
  }
}

extension PaymentMethodX on PaymentMethod {
  T maybeWhen<T>({
    T Function()? flutterwave,
    T Function()? paystack,
    required T Function() orElse,
  }) {
    if (this == PaymentMethod.FLUTTERWAVE)
      return flutterwave?.call() ?? orElse.call();
    else if (this == PaymentMethod.PAYSTACK)
      return paystack?.call() ?? orElse.call();
    else
      return orElse.call();
  }

  T when<T>({
    required T Function() flutterwave,
    required T Function() paystack,
  }) {
    switch (this) {
      case PaymentMethod.FLUTTERWAVE:
        return flutterwave.call();
      case PaymentMethod.PAYSTACK:
      default:
        return paystack.call();
    }
  }
}

class PaymentMethodSerializer implements JsonConverter<PaymentMethod?, String?> {
  const PaymentMethodSerializer();

  @override
  PaymentMethod? fromJson(String? value) => PaymentMethod.valueOf('$value');

  @override
  String? toJson(PaymentMethod? instance) => instance?.name;
}
