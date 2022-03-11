library shipping_information_dto.dart;

import 'package:auctionvillage/core/domain/entities/entities.dart';
import 'package:auctionvillage/features/dashboard/domain/index.dart';
import 'package:auctionvillage/manager/serializer/serializers.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'shipping_information_dto.g.dart';
part 'shipping_information_dto.freezed.dart';

@freezed
class ShippingInformationDTO with _$ShippingInformationDTO {
  const ShippingInformationDTO._();

  factory ShippingInformationDTO({
    @DoubleSerializer() double? width,
    @DoubleSerializer() double? weight,
    @DoubleSerializer() double? height,
    @DoubleSerializer() double? length,
    String? deliveryPeriod,
    @BooleanSerializer() bool? pickUpAvailable,
    String? description,
  }) = _ShippingInformationDTO;

  factory ShippingInformationDTO.fromJson(Map<String, dynamic> json) => _$ShippingInformationDTOFromJson(json);

  /// Maps the Data Transfer Object to a ShippingInformation Object.
  ShippingInformation get domain => ShippingInformation.blank(
        width: width,
        weight: weight,
        height: height,
        length: length,
        description: description,
        // deliveryPeriod: DeliveryPeriod.valueOf(deliveryPeriod),
        deliveryPeriod: DeliveryPeriod.later,
        isPickup: pickUpAvailable!,
      );
}
