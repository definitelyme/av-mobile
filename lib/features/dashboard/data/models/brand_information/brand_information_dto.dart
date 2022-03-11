library brand_information_dto.dart;

import 'package:auctionvillage/features/dashboard/domain/index.dart';
import 'package:auctionvillage/utils/utils.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../brand/brand_dto.dart';
import '../brand_model/brand_model_dto.dart';

part 'brand_information_dto.g.dart';
part 'brand_information_dto.freezed.dart';

@freezed
class BrandInformationDTO with _$BrandInformationDTO {
  const BrandInformationDTO._();

  factory BrandInformationDTO({
    BrandDTO? brand,
    BrandModelDTO? brandModel,
    int? yearOfManufacturer,
    String? color,
    String? condition,
    String? description,
  }) = _BrandInformationDTO;

  factory BrandInformationDTO.fromJson(Map<String, dynamic> json) =>
      _$BrandInformationDTOFromJson(json);

  /// Maps the Data Transfer Object to a BrandInformation Object.
  BrandInformation get domain => BrandInformation.blank(
        brand: brand?.domain,
        model: brandModel?.domain,
        color: color != null ? Palette.fromHex(color!) : null,
        condition: condition,
        description: description,
        yearOfManufacture: yearOfManufacturer,
      );
}
