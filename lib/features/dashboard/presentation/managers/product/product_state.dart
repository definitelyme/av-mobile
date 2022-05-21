part of product_bloc.dart;

@immutable
@Freezed(map: FreezedMapOptions.none, when: FreezedWhenOptions.none)
class ProductState extends BaseBlocState with _$ProductState {
  static FocusNode itemNameFocus = FocusNode();
  static FocusNode stateFocus = FocusNode();
  static FocusNode townFocus = FocusNode();
  static FocusNode descriptionFocus = FocusNode();
  static FocusNode brandFocus = FocusNode();
  static FocusNode brandModelFocus = FocusNode();
  static FocusNode trasmissionFocus = FocusNode();
  static FocusNode shippingDescFocus = FocusNode();
  static FocusNode auctionBasePriceFocus = FocusNode();
  static FocusNode buyBasePriceFocus = FocusNode();
  static FocusNode weightFocus = FocusNode();
  static FocusNode widthFocus = FocusNode();
  static FocusNode heightFocus = FocusNode();
  static FocusNode lengthFocus = FocusNode();
  static FocusNode yrOfPurchaseFocus = FocusNode();
  static FocusNode yrOfManufactureFocus = FocusNode();
  static FocusNode termsInfoFocus = FocusNode();
  static FocusNode addressFocus = FocusNode();
  static const int kInitialPage = 0;
  static List<String> periods = [
    '1-3 days',
    ...List.generate(3, (i) => '${i + 1} Week'.pluralize(i + 1)),
    ...List.generate(50, (i) => '${i + 1} Month'.pluralize(i + 1)),
  ];

  static List<String> years = List.generate(
    DateTime.now().year - 1900,
    (i) => '${i + 1900}',
  );

  const factory ProductState({
    @Default(false) bool isLoading,
    @Default(false) bool validate,
    @Default(false) bool isFetchingCategories,
    @Default(false) bool isSavingState,
    @Default(false) bool isCreatingProduct,
    @Default(false) bool productCreated,
    //
    required MoneyMaskedTextController basePriceController,
    required TextEditingController itemNameTextController,
    required TextEditingController stateTextController,
    required TextEditingController townTextController,
    required TextEditingController descriptionTextController,
    required TextEditingController brandTextController,
    required TextEditingController brandModelTextController,
    required TextEditingController transmissionTextController,
    required TextEditingController shippingDescTextController,
    required TextEditingController addressTextController,
    required TextEditingController weightTextController,
    required TextEditingController widthTextController,
    required TextEditingController heightTextController,
    required TextEditingController lengthTextController,
    required TextEditingController termsInfoTextController,
    required TextEditingController startDateTextController,
    required TextEditingController endDateTextController,
    //
    required DealPlan selectedPlan,
    required Product product,
    required PageController controller,
    @Default(ProductState.kInitialPage) int currentIndex,
    @Default(KtList.empty()) KtList<DealCategory> categories,
    @Default(KtList.empty()) KtList<DealPlan> dealPlans,
    @Default(None()) Option<AppHttpResponse?> status,
  }) = _ProductState;

  factory ProductState.initial([Product? cache, KtList<DealCategory>? categories]) => ProductState(
        product: cache ?? Product.sell(),
        selectedPlan: DealPlan.blank(),
        categories: categories ?? const KtList.empty(),
        controller: PageController(initialPage: ProductState.kInitialPage, keepPage: true),
        itemNameTextController: TextEditingController(),
        stateTextController: TextEditingController(),
        townTextController: TextEditingController(),
        descriptionTextController: TextEditingController(),
        brandTextController: TextEditingController(),
        brandModelTextController: TextEditingController(),
        transmissionTextController: TextEditingController(),
        shippingDescTextController: TextEditingController(),
        addressTextController: TextEditingController(),
        weightTextController: TextEditingController(),
        widthTextController: TextEditingController(),
        heightTextController: TextEditingController(),
        lengthTextController: TextEditingController(),
        termsInfoTextController: TextEditingController(),
        startDateTextController: TextEditingController(),
        endDateTextController: TextEditingController(),
        basePriceController: MoneyMaskedTextController(
          initialValue: 0,
          precision: 0,
          decimalSeparator: '',
          thousandSeparator: ',',
          // leftSymbol: '${Utils.currency} ',
        ),
      );
}

class PricingPageTab {
  const PricingPageTab(this.asset, this.title);

  final DealType title;
  final String asset;

  static KtList<PricingPageTab> tabs = KtList.from(const [
    PricingPageTab(AppAssets.hammerSVG, DealType.auction),
    PricingPageTab(AppAssets.shoppingBagSVG, DealType.buy_Now),
  ]);
}
