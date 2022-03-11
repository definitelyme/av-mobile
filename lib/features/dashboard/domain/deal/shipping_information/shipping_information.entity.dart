library shipping_information.entity.dart;

import 'package:auctionvillage/core/domain/entities/entities.dart';
import 'package:auctionvillage/features/dashboard/domain/index.dart';
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
    @Default(DeliveryPeriod.immediate) DeliveryPeriod deliveryPeriod,
    @Default(false) bool isPickup,
  }) = _ShippingInformation;

  factory ShippingInformation.blank({
    double? width,
    double? weight,
    double? height,
    double? length,
    String? description,
    DeliveryPeriod? deliveryPeriod,
    bool? isPickup,
  }) =>
      ShippingInformation(
        width: BasicTextField(width),
        weight: BasicTextField(weight),
        height: BasicTextField(height),
        length: BasicTextField(length),
        description: BasicTextField(description),
        deliveryPeriod: deliveryPeriod ?? DeliveryPeriod.immediate,
        isPickup: isPickup ?? false,
      );
}
