library product_dto.dart;

import 'package:auctionvillage/core/data/index.dart';
import 'package:auctionvillage/features/dashboard/data/models/models.dart';
import 'package:auctionvillage/features/dashboard/domain/index.dart';
import 'package:auctionvillage/manager/serializer/serializers.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/collection.dart';

import '../brand_information/brand_information_dto.dart';
import '../category/category_dto.dart';
import '../shipping_information/shipping_information_dto.dart';
import '../terms_information/terms_information_dto.dart';

part 'product_dto.g.dart';
part 'product_dto.freezed.dart';

ProductDTO deserializeProductDTO(Map<String, dynamic> json) => ProductDTO.fromJson(json);
Map<String, dynamic> serializeProductDTO(ProductDTO object) => object.toJson();

@immutable
@Freezed(maybeMap: false)
class ProductDTO with _$ProductDTO {
  const ProductDTO._();

  const factory ProductDTO({
    @JsonKey(name: '_meta') MetaDTO? meta,
    required ProductDTOData data,
  }) = _ProductDTO;

  /// Maps the incoming Json to a Data Transfer Object (DTO).
  factory ProductDTO.fromJson(Map<String, dynamic> json) => _$ProductDTOFromJson(json);

  /// Maps the Data Transfer Object to a Product Object.
  Product get domain => data.domain;
}

@immutable
@Freezed(maybeMap: false)
class ProductDTOData with _$ProductDTOData {
  const ProductDTOData._();

  factory ProductDTOData({
    BrandInformationDTO? brandInformation,
    ShippingInformationDTO? shippingInformation,
    TermsInformationDTO? termsInformation,
    CategoryDTO? category,
    UserDTO? user,
    UserDTO? vendor,
    @Default([]) List<String> photos,
    @BooleanSerializer() bool? active,
    @JsonKey(name: '_id') String? id,
    String? status,
    DealDTOData? deal,
    String? lga,
    String? name,
    String? state,
    @TimestampConverter() DateTime? createdAt,
    @TimestampConverter() DateTime? updatedAt,
  }) = _ProductDTOData;

  factory ProductDTOData.fromJson(Map<String, dynamic> json) => _$ProductDTODataFromJson(json);

  /// Maps the Data Transfer Object to a Product Object.
  Product get domain => Product.blank(
        id: id,
        category: category?.domain,
        name: name,
        lga: lga,
        state: state,
        photos: photos,
        dealStatus: const DealStatusSerializer().fromJson(status),
        active: active,
        vendor: vendor?.domain,
        deal: deal?.domain,
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
@Freezed(maybeMap: false)
class ProductListDTO with _$ProductListDTO {
  const ProductListDTO._();

  const factory ProductListDTO({
    @JsonKey(name: '_meta') MetaDTO? meta,
    @Default([]) List<ProductDTOData> data,
  }) = _ProductListDTO;

  /// Maps the incoming Json to a Data Transfer Object (DTO).
  factory ProductListDTO.fromJson(Map<String, dynamic> json) => _$ProductListDTOFromJson(json);

  /// Maps the Data Transfer Object to a KtList<Product> Object.
  KtList<Product> get domain => KtList.from(data.map((e) => e.domain));
}
