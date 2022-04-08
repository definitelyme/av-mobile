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
    required BasicTextField<String?> slug,
    required BasicTextField<String?> description,
    required BasicTextField<double?> charge,
    required BasicTextField<double?> percentageIncrease,
    required BasicTextField<int> productsAssigned,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) = _DealCategory;

  bool get isValid => name.valueOrNull != null && name.getOrNull != '' && id.isValid;

  factory DealCategory.blank({
    String? id,
    String? photo,
    String? name,
    String? slug,
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
        slug: BasicTextField(slug),
        description: BasicTextField(description),
        charge: BasicTextField(charge),
        percentageIncrease: BasicTextField(percentageIncrease),
        productsAssigned: BasicTextField(productsAssigned ?? 0),
        createdAt: createdAt,
        updatedAt: updatedAt,
      );

  DealCategory merge(DealCategory? other) => copyWith(
        id: other?.id.value != null ? other!.id : id,
        asset: other?.asset.isNotNull((it) => it as MediaField, orElse: (_) => asset) ?? asset,
        isActive: other?.isActive ?? isActive,
        name: other?.name.isNotNull((it) => it as BasicTextField<String?>, orElse: (_) => name) ?? name,
        slug: other?.slug.isNotNull((it) => it as BasicTextField<String?>, orElse: (_) => slug) ?? slug,
        description: other?.description.isNotNull((it) => it as BasicTextField<String?>, orElse: (_) => description) ?? description,
        charge: other?.charge.isNotNull((it) => it as BasicTextField<double?>, orElse: (_) => charge) ?? charge,
        percentageIncrease: other?.percentageIncrease.isNotNull((it) => it as BasicTextField<double?>, orElse: (_) => percentageIncrease) ??
            percentageIncrease,
        productsAssigned:
            other?.productsAssigned.isNotNull((it) => it as BasicTextField<int>, orElse: (_) => productsAssigned) ?? productsAssigned,
        createdAt: other?.createdAt ?? createdAt,
        updatedAt: other?.updatedAt ?? updatedAt,
      );
}
