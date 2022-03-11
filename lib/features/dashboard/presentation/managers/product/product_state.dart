part of product_bloc.dart;

@immutable
@Freezed(maybeMap: false, maybeWhen: false)
class ProductState with _$ProductState {
  static const int kInitialPage = 0;

  const factory ProductState({
    @Default(false) bool isLoading,
    @Default(false) bool validate,
    required Product product,
    required PageController controller,
    @Default(ProductState.kInitialPage) int currentIndex,
    required MoneyMaskedTextController basePriceController,
    required MoneyMaskedTextController itemPriceController,
    @Default(None()) Option<AppHttpResponse?> status,
  }) = _ProductState;

  factory ProductState.initial() => ProductState(
        product: Product.blank(),
        controller: PageController(
            initialPage: ProductState.kInitialPage, keepPage: true),
        basePriceController: MoneyMaskedTextController(
          initialValue: 0,
          precision: 0,
          decimalSeparator: '',
          thousandSeparator: ',',
          leftSymbol: '${Utils.currency} ',
        ),
        itemPriceController: MoneyMaskedTextController(
          initialValue: 0,
          precision: 0,
          decimalSeparator: '',
          thousandSeparator: ',',
          leftSymbol: '${Utils.currency} ',
        ),
      );
}

class PricingPageTab {
  const PricingPageTab(this.asset, this.title);

  final String title;
  final String asset;

  static KtList<PricingPageTab> tabs = KtList.from(const [
    PricingPageTab(AppAssets.hammerSVG, 'Auctions'),
    PricingPageTab(AppAssets.shoppingBagSVG, 'Buy Now'),
  ]);
}
