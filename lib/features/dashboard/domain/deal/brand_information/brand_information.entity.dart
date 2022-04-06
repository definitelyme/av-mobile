library brand_information.entity.dart;

import 'package:auctionvillage/core/domain/entities/entities.dart';
import 'package:auctionvillage/core/domain/response/index.dart';
import 'package:auctionvillage/features/dashboard/domain/index.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/painting.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'brand_information.entity.freezed.dart';

@freezed
@immutable
class BrandInformation with _$BrandInformation {
  const BrandInformation._();

  const factory BrandInformation({
    required BasicTextField<String?> brand,
    required BasicTextField<String?> brandModel,
    required BasicTextField<String?> transmission,
    @Default(ItemCondition.brand_new) ItemCondition condition,
    required BasicTextField<String?> description,
    ColorField? color,
    required BasicTextField<String?> yearOfManufacture,
  }) = _BrandInformation;

  factory BrandInformation.blank({
    String? brand,
    String? brandModel,
    String? transmission,
    ItemCondition? condition,
    String? description,
    Color? color,
    String? yearOfManufacture,
  }) =>
      BrandInformation(
        brand: BasicTextField(brand),
        brandModel: BasicTextField(brandModel),
        transmission: BasicTextField(transmission),
        condition: condition ?? ItemCondition.brand_new,
        description: BasicTextField(description),
        color: ColorField(color),
        yearOfManufacture: BasicTextField(yearOfManufacture),
      );

  BrandInformation merge(BrandInformation? other) => copyWith(
        brand: other?.brand.isNotNull((it) => it as BasicTextField<String?>, orElse: (_) => brand) ?? brand,
        brandModel: other?.brandModel.isNotNull((it) => it as BasicTextField<String?>, orElse: (_) => brandModel) ?? brandModel,
        transmission: other?.transmission.isNotNull((it) => it as BasicTextField<String?>, orElse: (_) => transmission) ?? transmission,
        condition: other?.condition ?? condition,
        description: other?.description.isNotNull((it) => it as BasicTextField<String?>, orElse: (_) => description) ?? description,
        color: other?.color,
        yearOfManufacture: other?.yearOfManufacture.isNotNull((it) => it as BasicTextField<String?>, orElse: (_) => yearOfManufacture) ??
            yearOfManufacture,
      );

  Option<FieldObjectException<dynamic>> get failure => description.mapped.fold((f) => some(f), (_) => none());
}
