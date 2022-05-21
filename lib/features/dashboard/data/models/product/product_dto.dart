library product_dto.dart;

import 'package:auctionvillage/core/data/index.dart';
import 'package:auctionvillage/core/domain/entities/entities.dart';
import 'package:auctionvillage/features/dashboard/data/models/models.dart';
import 'package:auctionvillage/features/dashboard/domain/index.dart';
import 'package:auctionvillage/manager/serializer/serializers.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/collection.dart';

import '../brand_information/brand_information_dto.dart';
import '../shipping_information/shipping_information_dto.dart';
import '../terms_information/terms_information_dto.dart';

part 'product_dto.g.dart';
part 'product_dto.freezed.dart';

ProductDTO deserializeProductDTO(Map<String, dynamic> json) => ProductDTO.fromJson(json);
Map<String, dynamic> serializeProductDTO(ProductDTO object) => object.toJson();

@immutable
@Freezed(map: FreezedMapOptions.none, when: FreezedWhenOptions.none)
class ProductDTO with _$ProductDTO {
  const ProductDTO._();

  const factory ProductDTO({
    @JsonKey(name: '_meta') MetaDTO? meta,
    required ProductDTOData data,
  }) = _ProductDTO;

  /// Maps the incoming Json to a Data Transfer Object (DTO).
  factory ProductDTO.fromJson(Map<String, dynamic> json) => _$ProductDTOFromJson(json);

  /// Maps the Data Transfer Object to a Product Object.
  Product domain([KtList<Country>? countries]) => data.domain(countries);
}

ProductDTOData deserializeProductDTOData(Map<String, dynamic> json) => ProductDTOData.fromJson(json);
Map<String, dynamic> serializeProductDTOData(ProductDTOData object) {
  print(object);
  final json = object
      .toJson()
      .toImmutableMap()
      .filterValues((v) => v == null || (v is String && v.trim().isEmpty) ? false : true)
      // .filterValues((v) => v == null ? false : true)
      // .mapValues((p0) => null)
      .toMutableMap()
      .dart
      // .asMap()
      .map((key, value) {
    if (key == 'category' && object.category?.id != null)
      return MapEntry(key, object.category?.id);
    else
      return MapEntry(key, value is String ? value.trim() : value);
    // return MapEntry(key, value);
  });

  print('Json ==> $json');

  return json;
}

@immutable
@Freezed(map: FreezedMapOptions.none, when: FreezedWhenOptions.none)
class ProductDTOData with _$ProductDTOData {
  const ProductDTOData._();

  factory ProductDTOData({
    BrandInformationDTO? brandInformation,
    ShippingInformationDTO? shippingInformation,
    TermsInformationDTO? termsInformation,
    CategoryDTOData? category,
    UserDTO? user,
    UserDTO? vendor,
    @BooleanSerializer() bool? isFavorite,
    @Default([]) List<String> photos,
    @BooleanSerializer() bool? active,
    @JsonKey(name: '_id') String? id,
    String? description,
    @JsonKey(toJson: DealStatusSerializer.toJsonString) @DealStatusSerializer() DealStatus? status,
    DealDTOData? deal,
    String? lga,
    String? name,
    String? state,
    String? country,
    @TimestampConverter() DateTime? createdAt,
    @TimestampConverter() DateTime? updatedAt,
  }) = _ProductDTOData;

  /// Maps Product to a Data Transfer Object.
  factory ProductDTOData.fromDomain(Product? instance) => ProductDTOData(
        name: instance?.name.valueOrNull,
        state: instance?.state.valueOrNull,
        lga: instance?.lga.valueOrNull,
        description: instance?.description.valueOrNull,
        country: instance?.country?.name.valueOrNull?.toUpperCase(),
        // active: instance?.isActive,
        // isFavorite: instance?.isFavorite,
        // status: instance?.dealStatus,
        brandInformation: BrandInformationDTO.fromDomain(instance?.brandInformation),
        shippingInformation: ShippingInformationDTO.fromDomain(instance?.shippingInformation),
        termsInformation: TermsInformationDTO.fromDomain(instance?.termsInformation),
        category: CategoryDTOData.fromDomain(instance?.category),
        deal: DealDTOData.fromDomain(instance?.deal),
        photos: instance?.photos
                .filter((i) => i.image.valueOrNull != null && i.image.valueOrNull!.isNotEmpty)
                .map((p0) => p0.image.valueOrNull!)
                .asList() ??
            [],
        // createdAt: instance?.createdAt,
        // updatedAt: instance?.updatedAt,
      );

  factory ProductDTOData.fromJson(Map<String, dynamic> json) => _$ProductDTODataFromJson(json);

  /// Maps the Data Transfer Object to a Product Object.
  Product domain([KtList<Country>? countries]) => Product.blank(
        id: id,
        category: category?.domain,
        name: name,
        lga: lga,
        state: state,
        description: description,
        photos: photos,
        isFavorite: isFavorite,
        dealStatus: status,
        active: active,
        vendor: vendor?.domain,
        deal: deal?.domain(countries),
        shipping: shippingInformation?.domain,
        brand: brandInformation?.domain,
        terms: termsInformation?.domain,
        createdAt: createdAt,
        updatedAt: updatedAt,
      );
}

ProductListDTO deserializeProductListDTO(Map<String, dynamic> json) => ProductListDTO.fromJson(json);
Map<String, dynamic> serializeProductListDTO(ProductListDTO object) => object.toJson();

@immutable
@Freezed(map: FreezedMapOptions.none, when: FreezedWhenOptions.none)
class ProductListDTO with _$ProductListDTO {
  const ProductListDTO._();

  const factory ProductListDTO({
    @JsonKey(name: '_meta') MetaDTO? meta,
    @Default([]) List<ProductDTOData> data,
  }) = _ProductListDTO;

  /// Maps the incoming Json to a Data Transfer Object (DTO).
  factory ProductListDTO.fromJson(Map<String, dynamic> json) => _$ProductListDTOFromJson(json);

  /// Maps the Data Transfer Object to a KtList<Product> Object.
  KtList<Product> domain([KtList<Country>? countries]) => KtList.from(data.map((e) => e.domain(countries)));
}
