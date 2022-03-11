part of pricing_page.dart;

/// A stateless widget to render _AuctionProductTab.
class _AuctionProductTab extends StatelessWidget {
  const _AuctionProductTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: App.sidePadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          0.01.verticalh,
          //
          const TextFormInputLabel(
              text: 'Item Price', fontWeight: FontWeight.w600),
          //
          ReactiveTextFormField<ProductBloc, ProductState>(
            // initial: (s) => '${s.currentOrder.riderTip.getOrNull ?? 0}',
            hintText: (s) => 'Enter Amount',
            disabled: (s) => s.isLoading,
            validate: (s) => s.validate,
            controller: (s) => s.itemPriceController,
            autoDisposeController: false,
            field: (s) => s.product.itemPrice,
            keyboardType: TextInputType.number,
            capitalization: TextCapitalization.none,
            inputFormatters: [FilteringTextInputFormatter.digitsOnly],
            // response: (s) => s.status,
            // onChanged: (cubit, it) => cubit.ridertipChanged(it),
          ),
          //
          0.008.verticalh,
          //
          const TextFormInputLabel(text: 'Quantity'),
          //
          ReactiveTextFormField<ProductBloc, ProductState>(
            // initial: (s) => '${s.currentOrder.riderTip.getOrNull ?? 0}',
            disabled: (s) => s.isLoading,
            validate: (s) => s.validate,
            field: (s) => s.product.quantity,
            keyboardType: TextInputType.number,
            capitalization: TextCapitalization.none,
            inputFormatters: [FilteringTextInputFormatter.digitsOnly],
            // response: (s) => s.status,
            // onChanged: (cubit, it) => cubit.ridertipChanged(it),
          ),
          //
          0.008.verticalh,
          //
          const TextFormInputLabel(text: 'Type'),
          //
          BlocSelector<ProductBloc, ProductState, BiddingType>(
            selector: (s) => s.product.biddingType,
            builder: (c, type) => AdaptiveDropdown<BiddingType>(
              hint: '-- Select --',
              items: BiddingType.values.toList(),
              text: (s) => '$s',
              selected: type,
              onChanged: (it) {},
            ),
          ),
        ],
      ),
    );
  }
}
