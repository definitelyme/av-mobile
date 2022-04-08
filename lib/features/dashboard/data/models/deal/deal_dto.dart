library deal_dto.dart;

import 'package:auctionvillage/core/data/index.dart';
import 'package:auctionvillage/core/domain/entities/entities.dart';
import 'package:auctionvillage/features/dashboard/data/models/models.dart';
import 'package:auctionvillage/features/dashboard/domain/index.dart';
import 'package:auctionvillage/manager/serializer/serializers.dart';
import 'package:auctionvillage/utils/utils.dart';
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
  Deal domain([KtList<Country>? countries]) => data.domain(countries);
}

DealDTOData deserializeDealDTOData(Map<String, dynamic> json) => DealDTOData.fromJson(json);
Map<String, dynamic> serializeDealDTOData(DealDTOData object) => object.toJson();

@immutable
@Freezed(maybeMap: false)
class DealDTOData with _$DealDTOData {
  const DealDTOData._();

  const factory DealDTOData({
    @JsonKey(name: '_id') String? id,
    @StringSerializer() String? basePrice,
    @StringSerializer() String? amount,
    @StringSerializer() String? country,
    @BooleanSerializer() bool? isPrivate,
    @JsonKey(name: 'isFavorite') @BooleanSerializer() bool? isFavorite,
    @JsonKey(name: 'status', toJson: DealStatusSerializer.toJsonString) @DealStatusSerializer() DealStatus? dealStatus,
    @BooleanSerializer() bool? sponsored,
    @JsonKey(name: 'plan', toJson: DealPlanTypeSerializer.toJsonString) @DealPlanTypeSerializer() DealPlanType? dealPlan,
    @DoubleSerializer() double? admittanceFee,
    @JsonKey(name: 'address') String? address,
    @IntegerSerializer() int? clicks,
    @IntegerSerializer() int? dealPriority,
    @JsonKey(toJson: BidStatusSerializer.toJsonString) @BidStatusSerializer() BidStatus? bidStatus,
    @BooleanSerializer() bool? isClosing,
    @BooleanSerializer() bool? active,
    @DoubleSerializer() double? lastPriceOffered,
    @JsonKey(toJson: OfferTypeSerializer.toJsonString) @OfferTypeSerializer() OfferType? offerType,
    @TimestampConverter() DateTime? startDate,
    @TimestampConverter() DateTime? endDate,
    @JsonKey(toJson: DealTypeSerializer.toJsonString) @DealTypeSerializer() DealType? type,
    @JsonKey(toJson: QuantityTypeSerializer.toJsonString) @QuantityTypeSerializer() QuantityType? quantity,
    @JsonKey(toJson: BiddingTypeSerializer.toJsonString) @BiddingTypeSerializer() BiddingType? biddingType,
    UserDTO? user,
    UserDTO? vendor,
    // UserDTO? lastBidder,
    ProductDTOData? product,
    // CategoryDTOData? category,
    @TimestampConverter() DateTime? createdAt,
    @TimestampConverter() DateTime? updatedAt,
  }) = _DealDTOData;

  /// Maps Deal to a Data Transfer Object.
  factory DealDTOData.fromDomain(Deal? instance) => DealDTOData(
        // id: instance?.id.value,
        basePrice: '${instance?.basePrice.valueOrNull?.roundToIntOrDouble ?? ''}',
        amount: '${instance?.basePrice.valueOrNull?.roundToIntOrDouble ?? ''}',
        // isPrivate: instance?.isPrivate,
        // isFavorite: instance?.hasWish,
        // dealStatus: instance?.status,
        // sponsored: instance?.isSponsored,
        dealPlan: instance?.dealPlan,
        // admittanceFee: instance?.admittanceFee.valueOrNull?,
        address: instance?.address.valueOrNull,
        // clicks: instance?.clicks.valueOrNull?,
        // dealPriority: instance?.dealPriority.valueOrNull?,
        // bidStatus: instance?.bidStatus,
        // isClosing: instance?.isClosing,
        // active: instance?.isActive,
        // lastPriceOffered: instance?.lastPriceOffered.valueOrNull?,
        type: instance?.type,
        quantity: instance?.quantity,
        biddingType: instance?.biddingType,
        startDate: instance?.startDate.valueOrNull,
        endDate: instance?.endDate.valueOrNull,
        // product: ProductDTOData.fromDomain(instance?.product),
        offerType: instance?.offerType,
      );

  factory DealDTOData.fromJson(Map<String, dynamic> json) => _$DealDTODataFromJson(json);

  /// Maps the Data Transfer Object to a Deal Object.
  Deal domain([KtList<Country>? countries]) => Deal.blank(
        id: id,
        basePrice: const DoubleSerializer().fromJson(basePrice),
        isPrivate: isPrivate,
        isSponsored: sponsored,
        hasWish: isFavorite,
        status: dealStatus,
        dealPlan: dealPlan,
        admittanceFee: admittanceFee,
        clicks: clicks,
        address: address,
        dealPriority: dealPriority,
        bidStatus: bidStatus,
        isClosing: isClosing,
        isActive: active,
        lastPriceOffered: lastPriceOffered,
        offerType: offerType,
        quantity: quantity,
        biddingType: biddingType,
        startDate: startDate,
        endDate: endDate,
        type: type,
        user: user?.domain,
        vendor: vendor?.domain,
        country: countries?.firstOrNull((e) => e.name.valueOrNull?.toLowerCase() == country?.toLowerCase()),
        // lastBidder: lastBidder?.domain,
        product: product?.domain(countries),
        // category: category?.domain,
        createdAt: createdAt,
        updatedAt: updatedAt,
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
  KtList<Deal> domain([KtList<Country>? countries]) => KtList.from(data.map((e) => e.domain(countries)));
}
