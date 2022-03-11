library shipping_details_expandable.dart;

import 'package:auctionvillage/features/dashboard/domain/index.dart';
import 'package:flutter/material.dart';

/// A stateless widget to render ShippingDetailsExpandable.
class ShippingDetailsExpandable extends StatelessWidget {
  final Product product;

  const ShippingDetailsExpandable(this.product, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Screen Template for ProductDetailsExpandable'),
    );
  }
}
