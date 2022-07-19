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
          const TextFormInputLabel(text: 'Item Price', fontWeight: FontWeight.w600),
          //
          ReactiveTextFormField<ProductBloc, ProductState>(
            disabled: (s) => s.isLoading || s.isSavingState || s.isCreatingProduct,
            field: (s) => s.product.deal?.basePrice,
            validate: (s) => s.validate,
            response: (s) => s.status,
            controller: (s) => s.basePriceController,
            autoDisposeController: false,
            keyboardType: TextInputType.number,
            focus: ProductState.auctionBasePriceFocus,
            capitalization: TextCapitalization.none,
            onChanged: (bloc, _) => bloc.add(const ProductSyncEvent.basePriceChanged()),
            prefixIcon: (s) => const CurrencyPrefixWidget(),
            prefixMode: (s) => OverlayVisibilityMode.always,
            inputFormatters: [
              FilteringTextInputFormatter.digitsOnly,
              FilteringTextInputFormatter.singleLineFormatter,
            ],
          ),
          //
          0.008.verticalh,
          //
          const TextFormInputLabel(text: 'Quantity'),
          //
          BlocSelector<ProductBloc, ProductState, QuantityType?>(
            selector: (s) => s.product.deal?.quantity,
            builder: (c, condition) => AdaptiveDropdown<QuantityType?>(
              hint: '-- Select Quantity --',
              items: QuantityType.values.toList(),
              text: (value) => '$value',
              selected: condition,
              errorText: (value) => value == null ? 'Field is required!' : null,
              onChanged: (it) => c.read<ProductBloc>().add(ProductSyncEvent.quantityTypeChanged(it)),
            ),
          ),
          //
          0.008.verticalh,
          //
          const TextFormInputLabel(text: 'Type'),
          //
          BlocBuilder<ProductBloc, ProductState>(
            builder: (c, s) => AdaptiveDropdown<BiddingType?>(
              hint: '-- Select --',
              items: BiddingType.values.toList(),
              text: (value) => '${value?.sentence}',
              validate: s.validate,
              disabled: s.isLoading || s.isSavingState || s.isCreatingProduct,
              selected: s.product.deal?.biddingType,
              errorText: (value) => value == null ? 'Select Bidding Type' : null,
              onChanged: (it) => c.read<ProductBloc>().add(ProductSyncEvent.biddingTypeChanged(it)),
            ),
          ),
          //
          0.008.verticalh,
          //
          BlocSelector<ProductBloc, ProductState, BiddingType?>(
            selector: (s) => s.product.deal?.biddingType,
            builder: (_, type) =>
                type?.when(
                  online: () => Row(
                    children: [
                      Flexible(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const TextFormInputLabel(text: 'Start Date'),
                            //
                            ReactiveTextFormField<ProductBloc, ProductState>(
                              hintText: (s) => '-- Select Date & Time --',
                              controller: (s) => s.startDateTextController,
                              autoDisposeController: false,
                              disabled: (s) => s.isLoading || s.isSavingState || s.isCreatingProduct,
                              readOnly: (s) => false,
                              field: (s) => s.product.deal?.startDate,
                              // validate: (s) => s.validate,
                              response: (s) => s.status,
                              style: TextStyle(fontSize: 14.sp),
                              materialPadding: Utils.inputPadding.copyWith(right: 0),
                              suffixMode: (s) => OverlayVisibilityMode.always,
                              suffixIcon: (s) => Material(
                                color: App.resolveColor(Colors.transparent),
                                borderRadius: Utils.buttonRadius.br,
                                child: IconButton(
                                  onPressed: () =>
                                      _pickDate(context, selectedDate: s.product.deal?.startDate.getOrNull, onSelected: (value) {
                                    context.read<ProductBloc>().add(ProductSyncEvent.startDateChanged(value));
                                  }),
                                  icon: Icon(
                                    Icons.calendar_today,
                                    color: App.resolveColor(Palette.text60, dark: Palette.text100Dark),
                                  ),
                                ),
                              ),
                              onTap: (bloc, s) =>
                                  _pickDate(context, selectedDate: s.product.deal?.startDate.getOrNull, onSelected: (value) {
                                bloc.add(ProductSyncEvent.startDateChanged(value));
                              }),
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
                            const TextFormInputLabel(text: 'End Date'),
                            //
                            ReactiveTextFormField<ProductBloc, ProductState>(
                              hintText: (s) => '-- Select Date & Time --',
                              controller: (s) => s.endDateTextController,
                              autoDisposeController: false,
                              disabled: (s) => s.isLoading || s.isSavingState || s.isCreatingProduct,
                              readOnly: (s) => false,
                              field: (s) => s.product.deal?.endDate,
                              // validate: (s) => s.validate,
                              response: (s) => s.status,
                              style: TextStyle(fontSize: 14.sp),
                              materialPadding: Utils.inputPadding.copyWith(right: 0),
                              suffixMode: (s) => OverlayVisibilityMode.always,
                              suffixIcon: (s) => Material(
                                color: App.resolveColor(Colors.transparent),
                                borderRadius: Utils.buttonRadius.br,
                                child: IconButton(
                                  onPressed: () => _pickDate(context, selectedDate: s.product.deal?.endDate.getOrNull, onSelected: (value) {
                                    context.read<ProductBloc>().add(ProductSyncEvent.endDateChanged(value));
                                  }),
                                  icon: Icon(
                                    Icons.calendar_today,
                                    color: App.resolveColor(Palette.text60, dark: Palette.text100Dark),
                                  ),
                                ),
                              ),
                              onTap: (bloc, s) => _pickDate(context, selectedDate: s.product.deal?.endDate.getOrNull, onSelected: (value) {
                                bloc.add(ProductSyncEvent.endDateChanged(value));
                              }),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  offline: () => Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const TextFormInputLabel(text: 'Start Date'),
                      //
                      ReactiveTextFormField<ProductBloc, ProductState>(
                        hintText: (s) => '-- Select Date & Time --',
                        controller: (s) => s.startDateTextController,
                        autoDisposeController: false,
                        disabled: (s) => s.isLoading || s.isSavingState || s.isCreatingProduct,
                        readOnly: (s) => false,
                        field: (s) => s.product.deal?.startDate,
                        // validate: (s) => s.validate,
                        response: (s) => s.status,
                        style: TextStyle(fontSize: 14.sp),
                        materialPadding: Utils.inputPadding.copyWith(right: 0),
                        suffixMode: (s) => OverlayVisibilityMode.always,
                        suffixIcon: (s) => Material(
                          color: App.resolveColor(Colors.transparent),
                          borderRadius: Utils.buttonRadius.br,
                          child: IconButton(
                            onPressed: () => _pickDate(context, selectedDate: s.product.deal?.startDate.getOrNull, onSelected: (value) {
                              context.read<ProductBloc>().add(ProductSyncEvent.startDateChanged(value));
                            }),
                            icon: Icon(
                              Icons.calendar_today,
                              color: App.resolveColor(Palette.text60, dark: Palette.text100Dark),
                            ),
                          ),
                        ),
                        onTap: (bloc, s) => _pickDate(context, selectedDate: s.product.deal?.startDate.getOrNull, onSelected: (value) {
                          bloc.add(ProductSyncEvent.startDateChanged(value));
                        }),
                      ),
                      //
                      0.008.verticalh,
                      //
                      const TextFormInputLabel(text: 'Auction Address'),
                      //
                      ReactiveTextFormField<ProductBloc, ProductState>(
                        minLines: 3,
                        hintText: (s) => 'No 1, Jalan Sri Semantan, 50200 Kuala ...',
                        disabled: (s) => s.isLoading,
                        validate: (s) => s.validate,
                        field: (s) => s.product.deal?.address,
                        response: (s) => s.status,
                        controller: (s) => s.addressTextController,
                        autoDisposeController: false,
                        keyboardType: TextInputType.multiline,
                        action: TextInputAction.newline,
                        capitalization: TextCapitalization.none,
                        focus: ProductState.addressFocus,
                        onChanged: (cubit, it) => cubit.add(const ProductSyncEvent.addressChanged()),
                      ),
                    ],
                  ),
                ) ??
                Utils.nothing,
          ),
        ],
      ),
    );
  }
}
