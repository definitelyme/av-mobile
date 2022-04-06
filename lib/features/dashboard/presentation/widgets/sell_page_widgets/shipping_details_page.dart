library shipping_details_page.dart;

import 'package:auctionvillage/core/presentation/index.dart';
import 'package:auctionvillage/features/dashboard/presentation/managers/index.dart';
import 'package:auctionvillage/utils/utils.dart';
import 'package:auctionvillage/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

/// A stateful widget to render ShippingDetailsPage.
class ShippingDetailsPage extends StatefulWidget {
  const ShippingDetailsPage({Key? key}) : super(key: key);

  @override
  _ShippingDetailsPageState createState() => _ShippingDetailsPageState();
}

class _ShippingDetailsPageState extends State<ShippingDetailsPage> with AutomaticKeepAliveClientMixin<ShippingDetailsPage> {
  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    super.build(context);

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: App.sidePadding),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Flexible(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const TextFormInputLabel(text: 'Weight (kg)'),
                    //
                    ReactiveTextFormField<ProductBloc, ProductState>(
                      hintText: (s) => '00.0',
                      disabled: (s) => s.isLoading || s.isSavingState || s.isCreatingProduct,
                      // validate: (s) => s.validate,
                      response: (s) => s.status,
                      field: (s) => s.product.shippingInformation?.weight,
                      controller: (s) => s.weightTextController,
                      autoDisposeController: false,
                      focus: ProductState.weightFocus,
                      next: ProductState.lengthFocus,
                      keyboardType: const TextInputType.numberWithOptions(decimal: true),
                      capitalization: TextCapitalization.none,
                      inputFormatters: [FilteringTextInputFormatter.allow(RegExp(r'^\d+((\.\d{1,5})|(\.))?$'))],
                      onChanged: (bloc, it) => bloc.add(const ProductSyncEvent.weightChanged()),
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
                    const TextFormInputLabel(text: 'Length (cm)'),
                    //
                    ReactiveTextFormField<ProductBloc, ProductState>(
                      hintText: (s) => '00.0',
                      disabled: (s) => s.isLoading || s.isSavingState || s.isCreatingProduct,
                      // validate: (s) => s.validate,
                      response: (s) => s.status,
                      field: (s) => s.product.shippingInformation?.length,
                      controller: (s) => s.lengthTextController,
                      autoDisposeController: false,
                      focus: ProductState.lengthFocus,
                      next: ProductState.widthFocus,
                      keyboardType: const TextInputType.numberWithOptions(decimal: true),
                      capitalization: TextCapitalization.none,
                      inputFormatters: [FilteringTextInputFormatter.allow(RegExp(r'^\d+((\.\d{1,5})|(\.))?$'))],
                      onChanged: (bloc, it) => bloc.add(const ProductSyncEvent.lengthChanged()),
                    ),
                  ],
                ),
              ),
            ],
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
                    const TextFormInputLabel(text: 'Width (cm)'),
                    //
                    ReactiveTextFormField<ProductBloc, ProductState>(
                      hintText: (s) => '00.0',
                      disabled: (s) => s.isLoading || s.isSavingState || s.isCreatingProduct,
                      // validate: (s) => s.validate,
                      response: (s) => s.status,
                      field: (s) => s.product.shippingInformation?.width,
                      controller: (s) => s.widthTextController,
                      autoDisposeController: false,
                      focus: ProductState.widthFocus,
                      next: ProductState.heightFocus,
                      keyboardType: const TextInputType.numberWithOptions(decimal: true),
                      capitalization: TextCapitalization.none,
                      inputFormatters: [FilteringTextInputFormatter.allow(RegExp(r'^\d+((\.\d{1,5})|(\.))?$'))],
                      onChanged: (bloc, it) => bloc.add(const ProductSyncEvent.widthChanged()),
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
                    const TextFormInputLabel(text: 'Height (cm)'),
                    //
                    ReactiveTextFormField<ProductBloc, ProductState>(
                      hintText: (s) => '00.0',
                      disabled: (s) => s.isLoading || s.isSavingState || s.isCreatingProduct,
                      // validate: (s) => s.validate,
                      response: (s) => s.status,
                      field: (s) => s.product.shippingInformation?.height,
                      controller: (s) => s.heightTextController,
                      autoDisposeController: false,
                      focus: ProductState.heightFocus,
                      next: ProductState.shippingDescFocus,
                      keyboardType: const TextInputType.numberWithOptions(decimal: true),
                      capitalization: TextCapitalization.none,
                      inputFormatters: [FilteringTextInputFormatter.allow(RegExp(r'^\d+((\.\d{1,5})|(\.))?$'))],
                      onChanged: (bloc, it) => bloc.add(const ProductSyncEvent.heightChanged()),
                    ),
                  ],
                ),
              ),
            ],
          ),
          //
          0.008.verticalh,
          //
          const TextFormInputLabel(text: 'Delivery Period'),
          //
          BlocSelector<ProductBloc, ProductState, String?>(
            selector: (s) => s.product.shippingInformation?.deliveryPeriod.value.fold((_) => null, (r) => r),
            builder: (c, value) => AdaptiveDropdown<String?>(
              hint: '-- Select --',
              items: ProductState.periods,
              text: (it) => it,
              selected: value,
              errorText: (value) => value == null || value.isEmpty ? 'Select a Delivery Period' : null,
              onChanged: (it) => c.read<ProductBloc>().add(ProductSyncEvent.deliveryPeriodChanged(it)),
            ),
          ),
          //
          0.008.verticalh,
          //
          const TextFormInputLabel(text: 'Pickup Available'),
          //
          BlocSelector<ProductBloc, ProductState, bool?>(
            selector: (s) => s.product.shippingInformation?.isPickup,
            builder: (c, value) => AdaptiveDropdown<bool?>(
              hint: '-- Select --',
              items: [true, false],
              text: (s) => '${s! ? 'Yes' : 'No'}',
              selected: value,
              onChanged: (it) => c.read<ProductBloc>().add(ProductSyncEvent.deliveryModeChanged(it)),
            ),
          ),
          //
          0.008.verticalh,
          //
          const TextFormInputLabel(text: 'Shipping Description'),
          //
          ReactiveTextFormField<ProductBloc, ProductState>(
            minLines: 4,
            hintText: (s) => 'Brief shipping description..',
            disabled: (s) => s.isLoading || s.isSavingState || s.isCreatingProduct,
            validate: (s) => s.validate,
            response: (s) => s.status,
            field: (s) => s.product.shippingInformation?.description,
            controller: (s) => s.shippingDescTextController,
            autoDisposeController: false,
            keyboardType: TextInputType.multiline,
            action: TextInputAction.newline,
            capitalization: TextCapitalization.none,
            focus: ProductState.shippingDescFocus,
            onChanged: (bloc, it) => bloc.add(const ProductSyncEvent.shippingDescChanged()),
          )
        ],
      ),
    );
  }
}
