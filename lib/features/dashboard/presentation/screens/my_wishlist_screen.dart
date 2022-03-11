library my_wishlist_screen.dart;

import 'package:auctionvillage/features/dashboard/domain/index.dart';
import 'package:auctionvillage/features/dashboard/presentation/widgets/index.dart';
import 'package:auctionvillage/utils/utils.dart';
import 'package:auctionvillage/widgets/widgets.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

/// A stateless widget to render MyWishlistScreen.
class MyWishlistScreen extends StatefulWidget with AutoRouteWrapper {
  const MyWishlistScreen({Key? key}) : super(key: key);

  @override
  State<MyWishlistScreen> createState() => _MyWishlistScreenState();

  @override
  Widget wrappedRoute(BuildContext context) {
    return this;
  }
}

class _MyWishlistScreenState extends State<MyWishlistScreen> {
  final _products = Product.dummy;

  @override
  Widget build(BuildContext context) {
    return AppSliverScrollView.scaffold(
      title: 'My Wishlist',
      slivers: [
        SliverPadding(
          padding: EdgeInsets.symmetric(
              horizontal: App.sidePadding, vertical: App.sidePadding),
          sliver: SliverList(
            delegate: SliverChildBuilderDelegate(
              (_, i) => Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  ProductCard(_products.elementAt(i)),
                  //
                  if (i < _products.length - 1) 0.01.verticalh,
                ],
              ),
              childCount: _products.length,
            ),
          ),
        ),
      ],
    );
  }
}
