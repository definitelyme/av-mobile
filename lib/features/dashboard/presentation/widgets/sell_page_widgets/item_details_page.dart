library item_details_page.dart;

import 'package:auctionvillage/core/presentation/index.dart';
import 'package:auctionvillage/features/dashboard/domain/index.dart';
import 'package:auctionvillage/features/dashboard/presentation/managers/index.dart';
import 'package:auctionvillage/utils/utils.dart';
import 'package:auctionvillage/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

/// A stateful widget to render ItemDetailsPage.
class ItemDetailsPage extends StatefulWidget {
  const ItemDetailsPage({Key? key}) : super(key: key);

  @override
  _ItemDetailsPageState createState() => _ItemDetailsPageState();
}

class _ItemDetailsPageState extends State<ItemDetailsPage> with AutomaticKeepAliveClientMixin<ItemDetailsPage> {
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
          const TextFormInputLabel(text: 'Brand', fontWeight: FontWeight.w600),
          //
          ReactiveTextFormField<ProductBloc, ProductState>(
            disabled: (s) => s.isLoading || s.isSavingState || s.isCreatingProduct,
            keyboardType: TextInputType.text,
            focus: ProductState.brandFocus,
            next: ProductState.brandModelFocus,
            capitalization: TextCapitalization.sentences,
            controller: (s) => s.brandTextController,
            autoDisposeController: false,
            field: (s) => s.product.brandInformation?.brand,
            // validate: (s) => s.validate,
            response: (s) => s.status,
            onChanged: (bloc, it) => bloc.add(const ProductSyncEvent.brandChanged()),
          ),
          //
          0.008.verticalh,
          //
          const TextFormInputLabel(text: 'Brand Model'),
          //
          ReactiveTextFormField<ProductBloc, ProductState>(
            disabled: (s) => s.isLoading || s.isSavingState || s.isCreatingProduct,
            keyboardType: TextInputType.text,
            focus: ProductState.brandModelFocus,
            next: ProductState.trasmissionFocus,
            capitalization: TextCapitalization.sentences,
            controller: (s) => s.brandModelTextController,
            autoDisposeController: false,
            field: (s) => s.product.brandInformation?.brandModel,
            // validate: (s) => s.validate,
            response: (s) => s.status,
            onChanged: (bloc, it) => bloc.add(const ProductSyncEvent.brandModelChanged()),
          ),
          //
          0.008.verticalh,
          //
          const TextFormInputLabel(text: 'Year of Manufacture'),
          //
          BlocBuilder<ProductBloc, ProductState>(
            builder: (c, s) => AdaptiveDropdown<String?>(
              hint: '-- Select Year of Manufacture --',
              items: ProductState.years.reversed.toList(),
              text: (it) => '$it',
              // validate: s.validate,
              disabled: s.isLoading || s.isSavingState || s.isCreatingProduct,
              selected: s.product.brandInformation?.yearOfManufacture.value.fold((l) => null, (r) => r),
              errorText: (value) => value == null || value.isEmpty ? 'Please select Year of Manufacture' : null,
              onChanged: (it) => c.read<ProductBloc>().add(ProductSyncEvent.yearOfPurchaseChanged(it)),
            ),
          ),
          //
          // 0.008.verticalh,
          // //
          // const TextFormInputLabel(text: 'Color'),
          // //
          // BlocSelector<ProductBloc, ProductState, BasicTextField<String?>>(
          //   selector: (s) => s.product.color,
          //   builder: (c, color) => AdaptiveDropdown<String?>(
          //     hint: '-- Select Color --',
          //     items: ['First Color', 'Second Color', 'Third Color'],
          //     text: (s) => '$s',
          //     selected: null,
          //     onChanged: (it) {},
          //   ),
          // ),
          // //
          // 0.008.verticalh,
          //
          const TextFormInputLabel(text: 'Transmission'),
          //
          ReactiveTextFormField<ProductBloc, ProductState>(
            disabled: (s) => s.isLoading || s.isSavingState || s.isCreatingProduct,
            keyboardType: TextInputType.text,
            focus: ProductState.trasmissionFocus,
            next: ProductState.descriptionFocus,
            capitalization: TextCapitalization.sentences,
            controller: (s) => s.transmissionTextController,
            autoDisposeController: false,
            field: (s) => s.product.brandInformation?.transmission,
            // validate: (s) => s.validate,
            response: (s) => s.status,
            onChanged: (bloc, it) => bloc.add(const ProductSyncEvent.transmissionChanged()),
          ),
          //
          0.008.verticalh,
          //
          const TextFormInputLabel(text: 'Condition'),
          //
          BlocSelector<ProductBloc, ProductState, ItemCondition?>(
            selector: (s) => s.product.brandInformation?.condition,
            builder: (c, condition) => AdaptiveDropdown<ItemCondition?>(
              hint: '-- Select Condition --',
              items: ItemCondition.values.toList(),
              text: (s) => '${s?.formatted}',
              selected: condition,
              onChanged: (it) => c.read<ProductBloc>().add(ProductSyncEvent.conditionChanged(it)),
            ),
          ),
          //
          0.008.verticalh,
          //
          const TextFormInputLabel(text: 'Item Description'),
          //
          ReactiveTextFormField<ProductBloc, ProductState>(
            minLines: 5,
            hintText: (s) => 'Brief Description of this Item',
            disabled: (s) => s.isLoading || s.isSavingState || s.isCreatingProduct,
            validate: (s) => s.validate,
            keyboardType: TextInputType.multiline,
            action: TextInputAction.newline,
            capitalization: TextCapitalization.sentences,
            focus: ProductState.descriptionFocus,
            controller: (s) => s.descriptionTextController,
            autoDisposeController: false,
            field: (s) => s.product.description,
            response: (s) => s.status,
            errorField: (s) => s.errors?.description,
            onChanged: (bloc, it) => bloc.add(const ProductSyncEvent.itemDescriptionChanged()),
          ),
        ],
      ),
    );
  }
}
