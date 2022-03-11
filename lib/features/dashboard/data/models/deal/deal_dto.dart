library deal_dto.dart;

import 'package:auctionvillage/core/data/index.dart';
import 'package:auctionvillage/features/dashboard/data/models/category/category_dto.dart';
import 'package:auctionvillage/features/dashboard/data/models/models.dart';
import 'package:auctionvillage/features/dashboard/domain/index.dart';
import 'package:auctionvillage/manager/serializer/serializers.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/collection.dart';

part 'deal_dto.freezed.dart';
part 'deal_dto.g.dart';

DealDTO deserializeDealDTO(Map<String, dynamic> json) => DealDTO.fromJson(json);
Map<String, dynamic> serializeDealDTO(DealDTO object) => object.toJson();

@immutable
@Freezed(maybeMap: false)
class DealDTO with _$DealDTO {
  const DealDTO._();

  const factory DealDTO({
    @JsonKey(name: '_meta') MetaDTO? meta,
    required DealDTOData data,
  }) = _DealDTO;

  /// Maps the incoming Json to a Data Transfer Object (DTO).
  factory DealDTO.fromJson(Map<String, dynamic> json) => _$DealDTOFromJson(json);

  /// Maps the Data Transfer Object to a Deal Object.
  Deal get domain => data.domain;
}

DealDTOData deserializeDealDTOData(Map<String, dynamic> json) => DealDTOData.fromJson(json);
Map<String, dynamic> serializeDealDTOData(DealDTOData object) => object.toJson();

@immutable
@Freezed(maybeMap: false)
class DealDTOData with _$DealDTOData {
  const DealDTOData._();

  const factory DealDTOData({
    @JsonKey(name: '_id') String? id,
    @DoubleSerializer() double? basePrice,
    @BooleanSerializer() bool? isPrivate,
    @JsonKey(name: 'status') String? status,
    @BooleanSerializer() bool? sponsored,
    @JsonKey(name: 'plan') String? dealPlan,
    @DoubleSerializer() double? admittanceFee,
    @IntegerSerializer() int? clicks,
    @IntegerSerializer() int? dealPriority,
    String? bidStatus,
    @BooleanSerializer() bool? isClosing,
    @BooleanSerializer() bool? active,
    @DoubleSerializer() double? lastPriceOffered,
    String? offerType,
    @TimestampConverter() DateTime? startDate,
    @TimestampConverter() DateTime? endDate,
    String? type,
    UserDTO? user,
    UserDTO? vendor,
    ProductDTOData? product,
    CategoryDTOData? category,
    @TimestampConverter() DateTime? createdAt,
    @TimestampConverter() DateTime? updatedAt,
  }) = _DealDTOData;

  factory DealDTOData.fromJson(Map<String, dynamic> json) => _$DealDTODataFromJson(json);

  /// Maps the Data Transfer Object to a Deal Object.
  Deal get domain => Deal.blank(
        id: id,
        basePrice: basePrice,
        isPrivate: isPrivate,
        status: const DealStatusSerializer().fromJson(status),
        isSponsored: sponsored,
        dealPlan: const DealPlanSerializer().fromJson(dealPlan),
        admittanceFee: admittanceFee,
        clicks: clicks,
        dealPriority: dealPriority,
        bidStatus: const BidStatusSerializer().fromJson(bidStatus),
        isClosing: isClosing,
        isActive: active,
        lastPriceOffered: lastPriceOffered,
        offerType: const OfferTypeSerializer().fromJson(offerType),
        startDate: startDate,
        endDate: endDate,
        type: const DealTypeSerializer().fromJson(type),
        user: user?.domain,
        vendor: vendor?.domain,
        product: product?.domain,
        createdAt: createdAt,
        updatedAt: updatedAt,
        category: category?.domain,
      );
}

DealListDTO deserializeDealListDTO(Map<String, dynamic> json) => DealListDTO.fromJson(json);
Map<String, dynamic> serializeDealListDTO(DealListDTO object) => object.toJson();

@immutable
@Freezed(maybeMap: false)
class DealListDTO with _$DealListDTO {
  const DealListDTO._();

  const factory DealListDTO({
    @JsonKey(name: '_meta') MetaDTO? meta,
    @Default([]) List<DealDTOData> data,
  }) = _DealListDTO;

  /// Maps the incoming Json to a Data Transfer Object (DTO).
  factory DealListDTO.fromJson(Map<String, dynamic> json) => _$DealListDTOFromJson(json);

  /// Maps the Data Transfer Object to a KtList<Deal> Object.
  KtList<Deal> get domain => KtList.from(data.map((e) => e.domain));
}
