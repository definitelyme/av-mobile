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

class _ShippingDetailsPageState extends State<ShippingDetailsPage>
    with AutomaticKeepAliveClientMixin<ShippingDetailsPage> {
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
                      disabled: (s) => s.isLoading,
                      validate: (s) => s.validate,
                      field: (s) => s.product.weight,
                      keyboardType: TextInputType.number,
                      capitalization: TextCapitalization.none,
                      inputFormatters: [FilteringTextInputFormatter.digitsOnly],
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
                    const TextFormInputLabel(text: 'Length (cm)'),
                    //
                    ReactiveTextFormField<ProductBloc, ProductState>(
                      hintText: (s) => '00.0',
                      disabled: (s) => s.isLoading,
                      validate: (s) => s.validate,
                      field: (s) => s.product.length,
                      keyboardType: TextInputType.number,
                      capitalization: TextCapitalization.none,
                      inputFormatters: [FilteringTextInputFormatter.digitsOnly],
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
                      disabled: (s) => s.isLoading,
                      validate: (s) => s.validate,
                      field: (s) => s.product.width,
                      keyboardType: TextInputType.number,
                      capitalization: TextCapitalization.none,
                      inputFormatters: [FilteringTextInputFormatter.digitsOnly],
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
                    const TextFormInputLabel(text: 'Height (cm)'),
                    //
                    ReactiveTextFormField<ProductBloc, ProductState>(
                      hintText: (s) => '00.0',
                      disabled: (s) => s.isLoading,
                      validate: (s) => s.validate,
                      field: (s) => s.product.height,
                      keyboardType: TextInputType.number,
                      capitalization: TextCapitalization.none,
                      inputFormatters: [FilteringTextInputFormatter.digitsOnly],
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
          const TextFormInputLabel(text: 'Pickup Available'),
          //
          BlocSelector<ProductBloc, ProductState, bool>(
            selector: (s) => s.product.isPickup,
            builder: (c, type) => AdaptiveDropdown<bool>(
              hint: '-- Select --',
              items: [true, false],
              text: (s) => '${s! ? 'YES' : 'NO'}'.toUpperCase(),
              selected: type,
              onChanged: (it) {},
            ),
          ),
          //
          0.008.verticalh,
          //
          const TextFormInputLabel(text: 'Shipping Description'),
          //
          ReactiveTextFormField<ProductBloc, ProductState>(
            minLines: 5,
            hintText: (s) => 'Enter Description',
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
          )
        ],
      ),
    );
  }
}
