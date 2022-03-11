part of pricing_page.dart;

/// A stateless widget to render _BuyNowProductTab.
class _BuyNowProductTab extends StatelessWidget {
  const _BuyNowProductTab({Key? key}) : super(key: key);

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
              text: 'Base Price', fontWeight: FontWeight.w600),
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
          //
          0.008.verticalh,
          //
          Row(
            children: [
              Flexible(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const TextFormInputLabel(text: 'Start Date'),
                    //
                    ReactiveTextFormField<ProductBloc, ProductState>(
                      hintText: (s) => 'Pick a Date',
                      disabled: (s) => true,
                      validate: (s) => s.validate,
                      field: (s) => s.product.startDate,
                      keyboardType: TextInputType.text,
                      capitalization: TextCapitalization.none,
                      suffixMode: (s) => OverlayVisibilityMode.always,
                      suffixIcon: (s) => Material(
                        type: MaterialType.transparency,
                        borderRadius: 8.br,
                        child: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.calendar_today,
                            color: App.resolveColor(
                              Palette.text60,
                              dark: Palette.text100Dark,
                            ),
                          ),
                        ),
                      ),
                      // response: (s) => s.status,
                      // onChanged: (cubit, it) => cubit.ridertipChanged(it),
                    ),
                  ],
                ),
              ),
              //
              0.04.horizontalw,
              //
              Flexible(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const TextFormInputLabel(text: 'Start Time'),
                    //
                    ReactiveTextFormField<ProductBloc, ProductState>(
                      hintText: (s) => 'Pick a Time',
                      disabled: (s) => true,
                      validate: (s) => s.validate,
                      field: (s) => s.product.startDate,
                      keyboardType: TextInputType.text,
                      capitalization: TextCapitalization.none,
                      suffixMode: (s) => OverlayVisibilityMode.always,
                      suffixIcon: (s) => Material(
                        type: MaterialType.transparency,
                        borderRadius: 8.br,
                        child: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.lock_clock,
                            color: App.resolveColor(
                              Palette.text60,
                              dark: Palette.text100Dark,
                            ),
                          ),
                        ),
                      ),
                      // response: (s) => s.status,
                      // onChanged: (cubit, it) => cubit.ridertipChanged(it),
                    ),
                  ],
                ),
              ),
            ],
          ),
          //
          0.008.verticalh,
          //
          const TextFormInputLabel(text: 'Auction Address'),
          //
          BlocSelector<ProductBloc, ProductState, BiddingType>(
            selector: (s) => s.product.biddingType,
            builder: (c, type) {
              return type.when(
                online: () => Row(
                  children: [
                    Flexible(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const TextFormInputLabel(text: 'End Date'),
                          //
                          ReactiveTextFormField<ProductBloc, ProductState>(
                            hintText: (s) => 'Pick a Date',
                            disabled: (s) => true,
                            validate: (s) => s.validate,
                            field: (s) => s.product.startDate,
                            keyboardType: TextInputType.text,
                            capitalization: TextCapitalization.none,
                            suffixMode: (s) => OverlayVisibilityMode.always,
                            suffixIcon: (s) => Material(
                              type: MaterialType.transparency,
                              borderRadius: 8.br,
                              child: IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.calendar_today,
                                  color: App.resolveColor(
                                    Palette.text60,
                                    dark: Palette.text100Dark,
                                  ),
                                ),
                              ),
                            ),
                            // response: (s) => s.status,
                            // onChanged: (cubit, it) => cubit.ridertipChanged(it),
                          ),
                        ],
                      ),
                    ),
                    //
                    0.04.horizontalw,
                    //
                    Flexible(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const TextFormInputLabel(text: 'End Time'),
                          //
                          ReactiveTextFormField<ProductBloc, ProductState>(
                            hintText: (s) => 'Pick a Time',
                            disabled: (s) => true,
                            validate: (s) => s.validate,
                            field: (s) => s.product.startDate,
                            keyboardType: TextInputType.text,
                            capitalization: TextCapitalization.none,
                            suffixMode: (s) => OverlayVisibilityMode.always,
                            suffixIcon: (s) => Material(
                              type: MaterialType.transparency,
                              borderRadius: 8.br,
                              child: IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.lock_clock,
                                  color: App.resolveColor(
                                    Palette.text60,
                                    dark: Palette.text100Dark,
                                  ),
                                ),
                              ),
                            ),
                            // response: (s) => s.status,
                            // onChanged: (cubit, it) => cubit.ridertipChanged(it),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                offline: () => Flexible(
                  child: ReactiveTextFormField<ProductBloc, ProductState>(
                    minLines: 3,
                    hintText: (s) =>
                        'No 1, Jalan Sri Semantan, 50200 Kuala ...',
                    disabled: (s) => s.isLoading,
                    validate: (s) => s.validate,
                    keyboardType: TextInputType.multiline,
                    action: TextInputAction.newline,
                    capitalization: TextCapitalization.none,
                    // focus: GlobalPreferenceState.supportMsgFocus,
                    field: (s) => s.product.itemDescription,
                    // response: (s) => s.status,
                    // errorField: (s) => s.errors?.supportMessage,
                    // onChanged: (cubit, it) => cubit.supportMessageChanged(it),
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
