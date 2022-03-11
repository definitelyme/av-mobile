library brand_information.entity.dart;

import 'package:auctionvillage/core/domain/entities/entities.dart';
import 'package:auctionvillage/features/dashboard/domain/index.dart';
import 'package:flutter/painting.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'brand_information.entity.freezed.dart';

@freezed
@immutable
class BrandInformation with _$BrandInformation {
  const BrandInformation._();

  const factory BrandInformation({
    required ProductBrand brand,
    required ProductBrandModel brandModel,
    required BasicTextField<String?> condition,
    required BasicTextField<String?> description,
    ColorField? color,
    DateTime? yearOfManufacture,
  }) = _BrandInformation;

  factory BrandInformation.blank({
    ProductBrand? brand,
    ProductBrandModel? model,
    String? condition,
    String? description,
    Color? color,
    int? yearOfManufacture,
  }) =>
      BrandInformation(
        brand: brand ?? ProductBrand.blank(),
        brandModel: model ?? ProductBrandModel.blank(),
        condition: BasicTextField(condition),
        description: BasicTextField(description),
        color: ColorField(color),
        yearOfManufacture:
            yearOfManufacture != null ? DateTime(yearOfManufacture) : null,
      );
}
