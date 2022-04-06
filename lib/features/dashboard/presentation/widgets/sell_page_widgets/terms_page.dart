library terms_page.dart;

import 'package:auctionvillage/core/presentation/index.dart';
import 'package:auctionvillage/features/dashboard/presentation/managers/index.dart';
import 'package:auctionvillage/utils/utils.dart';
import 'package:auctionvillage/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

/// A stateful widget to render TermsPage.
class TermsPage extends StatefulWidget {
  const TermsPage({Key? key}) : super(key: key);

  @override
  _TermsPageState createState() => _TermsPageState();
}

class _TermsPageState extends State<TermsPage> with AutomaticKeepAliveClientMixin<TermsPage> {
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
          const TextFormInputLabel(text: 'Year Of Purchase', fontWeight: FontWeight.w600),
          //
          BlocBuilder<ProductBloc, ProductState>(
            builder: (c, s) => AdaptiveDropdown<String?>(
              hint: '-- Select Year of Purchase --',
              items: ProductState.years.reversed.toList(),
              text: (it) => it,
              validate: s.validate,
              disabled: s.isLoading || s.isSavingState || s.isCreatingProduct,
              selected: s.product.termsInformation?.yearOfPurchase.value.fold((l) => null, (r) => r),
              errorText: (value) => value == null || value.isEmpty ? 'Please select Year of Purchase' : null,
              onChanged: (it) => c.read<ProductBloc>().add(ProductSyncEvent.yearOfPurchaseChanged(it)),
            ),
          ),
          //
          0.008.verticalh,
          //
          const TextFormInputLabel(text: 'Repair History'),
          //
          BlocBuilder<ProductBloc, ProductState>(
            builder: (c, s) => AdaptiveDropdown<bool?>(
              hint: '-- Select --',
              items: [true, false],
              text: (s) => '${s! ? 'Yes' : 'No'}',
              validate: s.validate,
              disabled: s.isLoading || s.isSavingState || s.isCreatingProduct,
              selected: s.product.termsInformation?.hasRepairHistory,
              onChanged: (it) => c.read<ProductBloc>().add(ProductSyncEvent.repairHistoryChanged(it)),
            ),
          ),
          //
          0.008.verticalh,
          //
          const TextFormInputLabel(text: 'Warranty'),
          //
          BlocBuilder<ProductBloc, ProductState>(
            builder: (c, s) => AdaptiveDropdown<String?>(
              hint: '-- Select --',
              items: ProductState.periods,
              text: (it) => it,
              validate: s.validate,
              disabled: s.isLoading || s.isSavingState || s.isCreatingProduct,
              selected: s.product.termsInformation?.warranty.value.fold((l) => null, (r) => r),
              errorText: (value) => value == null || value.isEmpty ? 'Please select Warranty Period' : null,
              onChanged: (it) => c.read<ProductBloc>().add(ProductSyncEvent.warrantyPeriodChanged(it)),
            ),
          ),
          //
          0.008.verticalh,
          //
          const TextFormInputLabel(text: 'Refund Policy'),
          //
          BlocSelector<ProductBloc, ProductState, bool?>(
            selector: (s) => s.product.termsInformation?.hasRefundPolicy,
            builder: (c, value) => AdaptiveDropdown<bool?>(
              hint: '-- Select --',
              items: [true, false],
              text: (s) => '${s! ? 'Yes' : 'No'}',
              selected: value,
              onChanged: (it) => c.read<ProductBloc>().add(ProductSyncEvent.refundPolicyChanged(it)),
            ),
          ),
          //
          0.008.verticalh,
          //
          const TextFormInputLabel(text: 'Item Description'),
          //
          ReactiveTextFormField<ProductBloc, ProductState>(
            minLines: 5,
            hintText: (s) => 'Other Information',
            disabled: (s) => s.isLoading || s.isSavingState || s.isCreatingProduct,
            validate: (s) => s.validate,
            keyboardType: TextInputType.multiline,
            action: TextInputAction.newline,
            capitalization: TextCapitalization.sentences,
            focus: ProductState.termsInfoFocus,
            controller: (s) => s.termsInfoTextController,
            autoDisposeController: false,
            field: (s) => s.product.termsInformation?.otherInformation,
            response: (s) => s.status,
            onChanged: (bloc, it) => bloc.add(ProductSyncEvent.termsInfoChanged(it)),
          ),
        ],
      ),
    );
  }
}
