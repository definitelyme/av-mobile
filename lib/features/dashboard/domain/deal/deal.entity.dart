library deal.entity.dart;

import 'package:auctionvillage/core/domain/entities/entities.dart';
import 'package:auctionvillage/core/domain/response/index.dart';
import 'package:auctionvillage/core/domain/validator/validator.dart';
import 'package:auctionvillage/features/dashboard/domain/index.dart';
import 'package:dartz/dartz.dart' hide id;
import 'package:freezed_annotation/freezed_annotation.dart';

part 'deal.entity.freezed.dart';

@freezed
@immutable
class Deal extends BaseEntity with _$Deal {
  static const double MIN_PRICE = 0.0;

  const Deal._();

  const factory Deal({
    required UniqueId<String?> id,
    required AmountField<double> basePrice,
    required AmountField<double> lastPriceOffered,
    @Default(false) bool isPrivate,
    @Default(false) bool isSponsored,
    @Default(false) bool hasWish,
    required AmountField<double?> admittanceFee,
    required BasicTextField<int?> dealPriority,
    required BasicTextField<String?> address,
    required BasicTextField<int?> clicks,
    @Default(defaultBidStatus) BidStatus bidStatus,
    @Default(false) bool isClosing,
    @Default(false) bool isActive,
    @Default(defaultDealStatus) DealStatus status,
    @Default(defaultDealType) DealType type,
    @Default(defaultOfferType) OfferType offerType,
    @Default(defaultDealPlanType) DealPlanType dealPlan,
    @Default(defaultQuantityType) QuantityType quantity,
    @Default(defaultBiddingType) BiddingType biddingType,
    User? user,
    User? vendor,
    User? lastBidder,
    Product? product,
    // DealCategory? category,
    required DateTimeField startDate,
    required DateTimeField endDate,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) = _Deal;

  factory Deal.blank({
    String? id,
    double? basePrice,
    double? lastPriceOffered,
    bool? isPrivate,
    bool? isSponsored,
    bool? hasWish,
    double? admittanceFee,
    int? dealPriority,
    int? clicks,
    BidStatus? bidStatus,
    bool? isClosing,
    bool? isActive,
    String? address,
    DealStatus? status,
    DealType? type,
    OfferType? offerType,
    DealPlanType? dealPlan,
    QuantityType? quantity,
    BiddingType? biddingType,
    User? user,
    User? vendor,
    // User? lastBidder,
    Product? product,
    // DealCategory? category,
    DateTime? startDate,
    DateTime? endDate,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) =>
      Deal(
        id: UniqueId.fromExternal(id),
        basePrice: AmountField(basePrice ?? 0, other: (it) => Validator.mustBeGreaterThan(it, other: MIN_PRICE)),
        lastPriceOffered: AmountField(lastPriceOffered ?? basePrice ?? 0),
        isPrivate: isPrivate ?? false,
        isSponsored: isSponsored ?? false,
        hasWish: hasWish ?? false,
        admittanceFee: AmountField(admittanceFee),
        dealPriority: BasicTextField(dealPriority ?? 0),
        clicks: BasicTextField(clicks ?? 0),
        address: BasicTextField(address),
        isClosing: isClosing ?? false,
        isActive: isActive ?? false,
        bidStatus: bidStatus ?? defaultBidStatus,
        status: status ?? defaultDealStatus,
        type: type ?? defaultDealType,
        offerType: offerType ?? defaultOfferType,
        dealPlan: dealPlan ?? defaultDealPlanType,
        quantity: quantity ?? defaultQuantityType,
        user: user,
        vendor: vendor,
        // lastBidder: lastBidder,
        // category: category,
        product: product,
        startDate: DateTimeField(startDate),
        endDate: DateTimeField(endDate),
        createdAt: createdAt,
        updatedAt: updatedAt,
      );

  Deal toggleFavorite([bool? value]) => copyWith(hasWish: value ?? !hasWish);

  Deal merge(Deal? other) => copyWith(
        id: other?.id.value != null ? other!.id : id,
        basePrice: other?.basePrice.isNotNull((it) => it as AmountField<double>, orElse: (_) => basePrice) ?? basePrice,
        lastPriceOffered:
            other?.lastPriceOffered.isNotNull((it) => it as AmountField<double>, orElse: (_) => lastPriceOffered) ?? lastPriceOffered,
        isPrivate: other?.isPrivate ?? isPrivate,
        isSponsored: other?.isSponsored ?? isSponsored,
        hasWish: other?.hasWish ?? hasWish,
        admittanceFee: other?.admittanceFee.isNotNull((it) => it as AmountField<double?>, orElse: (_) => admittanceFee) ?? admittanceFee,
        dealPriority: other?.dealPriority.isNotNull((it) => it as BasicTextField<int>, orElse: (_) => dealPriority) ?? dealPriority,
        clicks: other?.clicks.isNotNull((it) => it as BasicTextField<int>, orElse: (_) => clicks) ?? clicks,
        address: other?.address.isNotNull((it) => it as BasicTextField<String?>, orElse: (_) => address) ?? address,
        bidStatus: other?.bidStatus ?? bidStatus,
        isClosing: other?.isClosing ?? isClosing,
        isActive: other?.isActive ?? isActive,
        status: other?.status ?? status,
        type: other?.type ?? type,
        offerType: other?.offerType ?? offerType,
        dealPlan: other?.dealPlan ?? dealPlan,
        user: other?.user ?? user,
        vendor: other?.vendor ?? vendor,
        // category:  category?.merge(other?.category),
        product: product?.merge(other?.product),
        startDate: other?.startDate.isNotNull((it) => it as DateTimeField, orElse: (_) => startDate) ?? startDate,
        endDate: other?.endDate.isNotNull((it) => it as DateTimeField, orElse: (_) => endDate) ?? endDate,
        createdAt: other?.createdAt ?? createdAt,
        updatedAt: other?.updatedAt ?? updatedAt,
      );

  // Option<FieldObjectException<dynamic>> get failure => basePrice.mapped.andThen(startDate.mapped).fold((f) => some(f), (_) => none());
  Option<FieldObjectException<dynamic>> get failure => basePrice.mapped.fold((f) => some(f), (_) => none());
}
