library brand_information_dto.dart;

import 'package:auctionvillage/features/dashboard/domain/index.dart';
import 'package:auctionvillage/utils/utils.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

// import '../brand/brand_dto.dart';
// import '../brand_model/brand_model_dto.dart';

part 'brand_information_dto.g.dart';
part 'brand_information_dto.freezed.dart';

@freezed
class BrandInformationDTO with _$BrandInformationDTO {
  const BrandInformationDTO._();

  factory BrandInformationDTO({
    String? brand,
    String? brandModel,
    String? transmission,
    int? yearOfManufacturer,
    String? color,
    @JsonKey(toJson: ItemConditionSerializer.toJsonString) @ItemConditionSerializer() ItemCondition? condition,
    String? description,
  }) = _BrandInformationDTO;

  /// Maps BrandInformation to a Data Transfer Object.
  factory BrandInformationDTO.fromDomain(BrandInformation? instance) => BrandInformationDTO(
        brand: instance?.brand.getOrNull,
        brandModel: instance?.brandModel.getOrNull,
        transmission: instance?.transmission.getOrNull,
        yearOfManufacturer: int.tryParse(instance?.yearOfManufacture.getOrNull ?? ''),
        color: instance?.color?.getOrNull != null ? Palette.stringHex(instance!.color!.getOrNull!) : null,
        condition: instance?.condition,
        description: instance?.description.getOrNull,
      );

  factory BrandInformationDTO.fromJson(Map<String, dynamic> json) => _$BrandInformationDTOFromJson(json);

  /// Maps the Data Transfer Object to a BrandInformation Object.
  BrandInformation get domain => BrandInformation.blank(
        brand: brand,
        brandModel: brandModel,
        transmission: transmission,
        color: color != null ? Palette.fromHex(color!) : null,
        condition: condition,
        description: description,
        yearOfManufacture: yearOfManufacturer == null ? null : '$yearOfManufacturer',
      );
}
