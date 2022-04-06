library shipping_information.entity.dart;

import 'package:auctionvillage/core/domain/entities/entities.dart';
import 'package:auctionvillage/core/domain/response/index.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'shipping_information.entity.freezed.dart';

@freezed
@immutable
class ShippingInformation with _$ShippingInformation {
  const ShippingInformation._();

  const factory ShippingInformation({
    required BasicTextField<double?> width,
    required BasicTextField<double?> weight,
    required BasicTextField<double?> height,
    required BasicTextField<double?> length,
    required BasicTextField<String?> description,
    required BasicTextField<String?> deliveryPeriod,
    @Default(false) bool isPickup,
  }) = _ShippingInformation;

  bool get hasDeliverPeriod => deliveryPeriod.getOrNull != null && deliveryPeriod.getOrNull!.isNotEmpty;

  factory ShippingInformation.blank({
    double? width,
    double? weight,
    double? height,
    double? length,
    String? description,
    String? deliveryPeriod,
    bool? isPickup,
  }) =>
      ShippingInformation(
        width: BasicTextField(width),
        weight: BasicTextField(weight),
        height: BasicTextField(height),
        length: BasicTextField(length),
        description: BasicTextField(description),
        deliveryPeriod: BasicTextField(deliveryPeriod),
        isPickup: isPickup ?? false,
      );

  ShippingInformation merge(ShippingInformation? other) => copyWith(
        width: other?.width.isNotNull((it) => it as BasicTextField<double?>, orElse: (_) => width) ?? width,
        weight: other?.weight.isNotNull((it) => it as BasicTextField<double?>, orElse: (_) => weight) ?? weight,
        height: other?.height.isNotNull((it) => it as BasicTextField<double?>, orElse: (_) => height) ?? height,
        length: other?.length.isNotNull((it) => it as BasicTextField<double?>, orElse: (_) => length) ?? length,
        description: other?.description.isNotNull((it) => it as BasicTextField<String?>, orElse: (_) => description) ?? description,
        deliveryPeriod:
            other?.deliveryPeriod.isNotNull((it) => it as BasicTextField<String?>, orElse: (_) => deliveryPeriod) ?? deliveryPeriod,
        isPickup: other?.isPickup ?? isPickup,
      );

  Option<FieldObjectException<dynamic>> get failure => deliveryPeriod.mapped.fold((f) => some(f), (_) => none());
}
