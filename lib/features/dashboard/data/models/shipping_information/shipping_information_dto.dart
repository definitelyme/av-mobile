library shipping_information_dto.dart;

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
    @JsonKey(toJson: BooleanSerializer.toJsonString) @BooleanSerializer() bool? pickUpAvailable,
    String? description,
  }) = _ShippingInformationDTO;

  /// Maps ShippingInformation to a Data Transfer Object.
  factory ShippingInformationDTO.fromDomain(ShippingInformation? instance) => ShippingInformationDTO(
        width: instance?.width.getOrNull,
        weight: instance?.weight.getOrNull,
        height: instance?.height.getOrNull,
        length: instance?.length.getOrNull,
        pickUpAvailable: instance?.isPickup,
        deliveryPeriod: instance?.deliveryPeriod.getOrNull,
        description: instance?.description.getOrNull,
      );

  factory ShippingInformationDTO.fromJson(Map<String, dynamic> json) => _$ShippingInformationDTOFromJson(json);

  /// Maps the Data Transfer Object to a ShippingInformation Object.
  ShippingInformation get domain => ShippingInformation.blank(
        width: width,
        weight: weight,
        height: height,
        length: length,
        description: description,
        deliveryPeriod: deliveryPeriod,
        isPickup: pickUpAvailable,
      );
}
