library deal.entity.dart;

import 'package:auctionvillage/core/domain/entities/entities.dart';
import 'package:auctionvillage/features/dashboard/domain/index.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'deal.entity.freezed.dart';

@freezed
@immutable
class Deal extends BaseEntity with _$Deal {
  const Deal._();

  const factory Deal({
    required UniqueId<String?> id,
    required AmountField<double> basePrice,
    required AmountField<double> lastPriceOffered,
    @Default(false) bool isPrivate,
    @Default(false) bool isSponsored,
    required AmountField<double?> admittanceFee,
    required BasicTextField<int> dealPriority,
    required BasicTextField<int> clicks,
    @Default(BidStatus.closed) BidStatus bidStatus,
    @Default(false) bool isClosing,
    @Default(false) bool isActive,
    @Default(DealStatus.pending) DealStatus status,
    @Default(DealType.buyNow) DealType type,
    @Default(OfferType.nonNegotiable) OfferType offerType,
    @Default(DealPlan.free) DealPlan dealPlan,
    User? user,
    User? vendor,
    Product? product,
    DealCategory? category,
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
    double? admittanceFee,
    int? dealPriority,
    int? clicks,
    BidStatus? bidStatus,
    bool? isClosing,
    bool? isActive,
    DealStatus? status,
    DealType? type,
    OfferType? offerType,
    DealPlan? dealPlan,
    User? user,
    User? vendor,
    Product? product,
    DealCategory? category,
    DateTime? startDate,
    DateTime? endDate,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) =>
      Deal(
        id: UniqueId.fromExternal(id),
        basePrice: AmountField(basePrice ?? 0),
        lastPriceOffered: AmountField(lastPriceOffered ?? 0),
        isPrivate: isPrivate ?? false,
        isSponsored: isSponsored ?? false,
        admittanceFee: AmountField(admittanceFee),
        dealPriority: BasicTextField(dealPriority ?? 0),
        clicks: BasicTextField(clicks ?? 0),
        bidStatus: bidStatus ?? BidStatus.closed,
        isClosing: isClosing ?? false,
        isActive: isActive ?? false,
        status: status ?? DealStatus.pending,
        type: type ?? DealType.buyNow,
        offerType: offerType ?? OfferType.nonNegotiable,
        dealPlan: dealPlan ?? DealPlan.free,
        user: user,
        vendor: vendor,
        category: category,
        product: product,
        startDate: DateTimeField(startDate),
        endDate: DateTimeField(endDate),
        createdAt: createdAt,
        updatedAt: updatedAt,
      );
}
