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
    required NumField<double?> width,
    required NumField<double?> weight,
    required NumField<double?> height,
    required NumField<double?> length,
    required BasicTextField description,
    required BasicTextField deliveryPeriod,
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
        width: NumField(width),
        weight: NumField(weight),
        height: NumField(height),
        length: NumField(length),
        description: BasicTextField(description),
        deliveryPeriod: BasicTextField(deliveryPeriod),
        isPickup: isPickup ?? false,
      );

  ShippingInformation merge(ShippingInformation? other) => copyWith(
        width: other?.width.isNotNull((it) => it as NumField<double?>, orElse: (_) => width) ?? width,
        weight: other?.weight.isNotNull((it) => it as NumField<double?>, orElse: (_) => weight) ?? weight,
        height: other?.height.isNotNull((it) => it as NumField<double?>, orElse: (_) => height) ?? height,
        length: other?.length.isNotNull((it) => it as NumField<double?>, orElse: (_) => length) ?? length,
        description: other?.description.isNotNull((it) => it as BasicTextField, orElse: (_) => description) ?? description,
        deliveryPeriod: other?.deliveryPeriod.isNotNull((it) => it as BasicTextField, orElse: (_) => deliveryPeriod) ?? deliveryPeriod,
        isPickup: other?.isPickup ?? isPickup,
      );

  Option<FieldObjectException<dynamic>> get failure => deliveryPeriod.mapped.fold((f) => some(f), (_) => none());
}
