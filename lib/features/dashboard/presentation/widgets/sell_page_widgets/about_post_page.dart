library about_post_page.dart;

import 'package:auctionvillage/core/domain/entities/entities.dart';
import 'package:auctionvillage/core/presentation/index.dart';
import 'package:auctionvillage/features/dashboard/presentation/managers/index.dart';
import 'package:auctionvillage/utils/utils.dart';
import 'package:auctionvillage/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

/// A stateful widget to render AboutPostPage.
class AboutPostPage extends StatefulWidget {
  const AboutPostPage({Key? key}) : super(key: key);

  @override
  _AboutPostPageState createState() => _AboutPostPageState();
}

class _AboutPostPageState extends State<AboutPostPage>
    with AutomaticKeepAliveClientMixin<AboutPostPage> {
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
          const TextFormInputLabel(
            text: 'Item Category',
            fontWeight: FontWeight.w600,
          ),
          //
          BlocSelector<ProductBloc, ProductState, BasicTextField<String?>>(
            selector: (s) => s.product.itemCategory,
            builder: (c, category) => AdaptiveDropdown<String?>(
              hint: '-- Select Category --',
              items: ['First category', 'Second Category', 'Third Category'],
              text: (s) => '$s',
              selected: category.getOrNull,
              onChanged: (it) {},
            ),
          ),
          //
          0.008.verticalh,
          //
          const TextFormInputLabel(
            text: 'Sub Category',
          ),
          //
          BlocSelector<ProductBloc, ProductState, BasicTextField<String?>>(
            selector: (s) => s.product.itemSubCategory,
            builder: (c, category) => AdaptiveDropdown<String?>(
              hint: '-- Select Sub Category --',
              items: [
                'First Sub Category',
                'Second Sub Category',
                'Third Sub Category'
              ],
              text: (s) => '$s',
              selected: category.getOrNull,
              onChanged: (it) {},
            ),
          ),
          //
          0.008.verticalh,
          //
          const TextFormInputLabel(
            text: 'State',
          ),
          //
          BlocSelector<ProductBloc, ProductState, BasicTextField<String?>>(
            selector: (s) => s.product.state,
            builder: (c, state) => AdaptiveDropdown<String?>(
              hint: '-- Select State --',
              items: ['First state', 'Second state', 'Third state'],
              text: (s) => '$s',
              selected: state.getOrNull,
              onChanged: (it) {},
            ),
          ),
          //
          0.008.verticalh,
          //
          const TextFormInputLabel(
            text: 'Town',
          ),
          //
          BlocSelector<ProductBloc, ProductState, BasicTextField<String?>>(
            selector: (s) => s.product.town,
            builder: (c, town) => AdaptiveDropdown<String?>(
              hint: '-- Select Town --',
              items: ['First town', 'Second town', 'Third town'],
              text: (s) => '$s',
              selected: town.getOrNull,
              onChanged: (it) {},
            ),
          ),
        ],
      ),
    );
  }
}
