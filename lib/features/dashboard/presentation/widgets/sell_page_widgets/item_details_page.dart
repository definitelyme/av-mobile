library item_details_page.dart;

import 'package:auctionvillage/core/domain/entities/entities.dart';
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

class _ItemDetailsPageState extends State<ItemDetailsPage>
    with AutomaticKeepAliveClientMixin<ItemDetailsPage> {
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
          BlocSelector<ProductBloc, ProductState, BasicTextField<String?>>(
            selector: (s) => s.product.brand,
            builder: (c, brand) => AdaptiveDropdown<String?>(
              hint: '-- Select Brand --',
              items: ['First Brand', 'Second Brand', 'Third Brand'],
              text: (s) => '$s',
              selected: brand.getOrNull,
              onChanged: (it) {},
            ),
          ),
          //
          0.008.verticalh,
          //
          const TextFormInputLabel(text: 'Model'),
          //
          BlocSelector<ProductBloc, ProductState, BasicTextField<String?>>(
            selector: (s) => s.product.model,
            builder: (c, model) => AdaptiveDropdown<String?>(
              hint: '-- Select Model --',
              items: ['First Model', 'Second Model', 'Third Model'],
              text: (s) => '$s',
              selected: null,
              onChanged: (it) {},
            ),
          ),
          //
          0.008.verticalh,
          //
          const TextFormInputLabel(text: 'Year of Manufacture'),
          //
          BlocSelector<ProductBloc, ProductState, DateTimeField>(
            selector: (s) => s.product.yearOfManufacture,
            builder: (c, year) => AdaptiveDropdown<String?>(
              hint: '-- Select Year --',
              items: [
                'First Year of Manufacture',
                'Second Year of Manufacture',
                'Third Year of Manufacture'
              ],
              text: (s) => '$s',
              selected: null,
              onChanged: (it) {},
            ),
          ),
          //
          0.008.verticalh,
          //
          const TextFormInputLabel(text: 'Color'),
          //
          BlocSelector<ProductBloc, ProductState, BasicTextField<String?>>(
            selector: (s) => s.product.color,
            builder: (c, color) => AdaptiveDropdown<String?>(
              hint: '-- Select Color --',
              items: ['First Color', 'Second Color', 'Third Color'],
              text: (s) => '$s',
              selected: null,
              onChanged: (it) {},
            ),
          ),
          //
          0.008.verticalh,
          //
          const TextFormInputLabel(text: 'Condition'),
          //
          BlocSelector<ProductBloc, ProductState, ItemCondition>(
            selector: (s) => s.product.condition,
            builder: (c, condition) => AdaptiveDropdown<ItemCondition>(
              hint: '-- Select Condition --',
              items: ItemCondition.values.toList(),
              text: (s) => '${s?.name}',
              selected: condition,
              onChanged: (it) {},
            ),
          ),
          //
          0.008.verticalh,
          //
          const TextFormInputLabel(text: 'Item Description'),
          //
          ReactiveTextFormField<ProductBloc, ProductState>(
            minLines: 5,
            hintText: (s) => 'Brief Description',
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
        ],
      ),
    );
  }
}
