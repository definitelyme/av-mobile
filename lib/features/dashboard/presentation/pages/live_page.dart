library live_page.dart;

import 'package:auctionvillage/features/dashboard/domain/index.dart';
import 'package:auctionvillage/features/dashboard/presentation/widgets/index.dart';
import 'package:auctionvillage/utils/utils.dart';
import 'package:auctionvillage/widgets/widgets.dart';
import 'package:flutter/material.dart';

/// A stateful widget to render LivePage.
class LivePage extends StatefulWidget {
  const LivePage({Key? key}) : super(key: key);

  @override
  _LivePageState createState() => _LivePageState();
}

class _LivePageState extends State<LivePage> {
  final _products = Product.dummy;

  @override
  Widget build(BuildContext context) {
    return AdaptiveScaffold(
      backgroundColor: Palette.accentColor,
      adaptiveToolbar: AdaptiveToolbar(
        title: 'Live Action',
        titleStyle: App.titleStyle,
        elevation: 0,
        showCustomLeading: false,
        implyLeading: false,
        centerTitle: true,
        cupertinoImplyLeading: false,
        actions: [
          ...Utils.platform_(
            cupertino: [Center(child: AdaptiveText('Live Action', maxLines: 1, style: App.titleStyle))],
            material: [Utils.nothing],
          )!,
        ],
      ),
      body: SafeArea(
        left: false,
        right: false,
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: App.sidePadding),
              child: const SearchWidget(),
            ),
            //
            0.02.verticalh,
            //
            Expanded(
              child: Material(
                color: App.resolveColor(Palette.cardColorLight, dark: Palette.cardColorDark),
                child: CustomScrollView(
                  slivers: [
                    SliverSafeArea(
                      top: false,
                      left: false,
                      right: false,
                      sliver: SliverPadding(
                        padding: EdgeInsets.symmetric(horizontal: App.sidePadding, vertical: App.sidePadding),
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
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
