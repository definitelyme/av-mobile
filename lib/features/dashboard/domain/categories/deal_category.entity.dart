library deal_category.entity.dart;

import 'package:auctionvillage/core/domain/entities/entities.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'deal_category.entity.freezed.dart';

@freezed
@immutable
class DealCategory extends BaseEntity with _$DealCategory {
  const DealCategory._();

  const factory DealCategory({
    required UniqueId<String?> id,
    required MediaField asset,
    @Default(false) bool isActive,
    required BasicTextField<String?> name,
    required BasicTextField<String?> description,
    required BasicTextField<double?> charge,
    required BasicTextField<double?> percentageIncrease,
    required BasicTextField<int> productsAssigned,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) = _DealCategory;

  factory DealCategory.blank({
    String? id,
    String? photo,
    String? name,
    String? description,
    bool? active,
    double? charge,
    double? percentageIncrease,
    int? productsAssigned,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) =>
      DealCategory(
        id: UniqueId.fromExternal(id),
        isActive: active ?? false,
        asset: MediaField(photo),
        name: BasicTextField(name),
        description: BasicTextField(description),
        charge: BasicTextField(charge),
        percentageIncrease: BasicTextField(percentageIncrease),
        productsAssigned: BasicTextField(productsAssigned ?? 0),
        createdAt: createdAt,
        updatedAt: updatedAt,
      );

  // static List<DealCategory> get list => [
  //       DealCategory(
  //         id: UniqueId.v4(),
  //         name: BasicTextField('Property'),
  //         asset: MediaField(AppAssets.categoryProperty, validate: false),
  //       ),
  //       DealCategory(
  //         id: UniqueId.v4(),
  //         name: BasicTextField('Artwork & Artefact'),
  //         asset: MediaField(AppAssets.categoryArtefact, validate: false),
  //       ),
  //       DealCategory(
  //         id: UniqueId.v4(),
  //         name: BasicTextField('General'),
  //         asset: MediaField(AppAssets.categoryGeneral, validate: false),
  //       ),
  //       DealCategory(
  //         id: UniqueId.v4(),
  //         name: BasicTextField('Automobile'),
  //         asset: MediaField(AppAssets.categoryAutoMobile, validate: false),
  //       ),
  //       DealCategory(
  //         id: UniqueId.v4(),
  //         name: BasicTextField('Luxury'),
  //         asset: MediaField(AppAssets.categoryLuxury, validate: false),
  //       ),
  //     ];
}
