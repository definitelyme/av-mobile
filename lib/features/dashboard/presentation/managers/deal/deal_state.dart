part of deal_cubit.dart;

@immutable
@Freezed(maybeMap: false)
class DealState extends BaseState with _$DealState {
  const factory DealState({
    @Default(false) bool isLoading,
    @Default(false) bool isBidding,
    @Default(false) bool validate,
    required Deal currentDeal,
    required DealCategory currentCategory,
    SellHistory? sellHistory,
    BidHistory? bidHistory,
    Rating? rating,
    DealPlan? selectedPlan,
    required Product currentProduct,
    required AmountField<double> bidAmount,
    @Default(KtList.empty()) KtList<DealCategory> categories,
    @Default(KtList.empty()) KtList<Deal> homeDeals,
    @Default(KtList.empty()) KtList<Deal> liveDeals,
    @Default(KtList.empty()) KtList<Deal> deals,
    @Default(KtList.empty()) KtList<MyWish> wishlist,
    @Default(KtList.empty()) KtList<DealPlan> dealPlans,
    @Default(None()) Option<AppHttpResponse?> status,
  }) = _DealState;

  factory DealState.initial() => DealState(
        currentDeal: Deal.blank(),
        currentCategory: DealCategory.blank(),
        currentProduct: Product.blank(),
        bidAmount: AmountField(0),
      );
}
