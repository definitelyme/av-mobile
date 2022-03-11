library sell_page.dart;

import 'package:auctionvillage/core/presentation/index.dart';
import 'package:auctionvillage/features/dashboard/presentation/managers/index.dart';
import 'package:auctionvillage/features/dashboard/presentation/widgets/index.dart';
import 'package:auctionvillage/manager/locator/locator.dart';
import 'package:auctionvillage/utils/utils.dart';
import 'package:auctionvillage/widgets/widgets.dart';
import 'package:extended_nested_scroll_view/extended_nested_scroll_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

/// A stateful widget to render SellPage.
class SellPage extends StatefulWidget {
  const SellPage({Key? key}) : super(key: key);

  @override
  _SellPageState createState() => _SellPageState();
}

class _SellPageState extends State<SellPage> {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => getIt<ProductBloc>()..add(const ProductPageControllerEvent.attachListener())),
        BlocProvider(create: (_) => getIt<TabNavigationCubit>()),
      ],
      child: AdaptiveScaffold(
        backgroundColor: Palette.accentColor,
        adaptiveToolbar: AdaptiveToolbar(
          title: 'Sell an item',
          titleStyle: App.titleStyle,
          elevation: 0,
          showCustomLeading: false,
          implyLeading: false,
          centerTitle: true,
          cupertinoImplyLeading: false,
          actions: [
            ...Utils.platform_(
              cupertino: [Center(child: AdaptiveText('Sell an item', maxLines: 1, style: App.titleStyle))],
              material: [Utils.nothing],
            )!,
          ],
        ),
        body: AdaptiveScaffoldBody(
          color: App.resolveColor(Palette.cardColorLight, dark: Palette.secondaryColor),
          materialWrapper: true,
          builder: (c) => PageView.builder(
            pageSnapping: true,
            // allowImplicitScrolling: true,
            itemCount: _ProductPager.items.length,
            controller: c.read<ProductBloc>().state.controller,
            scrollDirection: Axis.horizontal,
            itemBuilder: (_, i) => _PageBuilder(_ProductPager.items[i], currentIndex: i),
          ),
        ),
      ),
    );
  }
}

class _PageBuilder extends StatelessWidget {
  final int currentIndex;
  final _ProductPager item;

  const _PageBuilder(this.item, {Key? key, required this.currentIndex}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ExtendedNestedScrollView(
      controller: ScrollController(),
      floatHeaderSlivers: false,
      onlyOneScrollInBody: true,
      pinnedHeaderSliverHeightBuilder: () => MediaQuery.of(context).padding.top,
      headerSliverBuilder: (_, innerBoxIsScrolled) => [
        SliverPadding(
          padding: EdgeInsets.symmetric(horizontal: App.sidePadding),
          sliver: SliverList(
            delegate: SliverChildListDelegate.fixed([
              0.01.verticalh,
              //
              AdaptiveText(
                'Step ${item.index} of ${_ProductPager.items.length}',
                maxLines: 1,
                minFontSize: 14,
                maxFontSize: 17,
                fontSize: 15.sp,
                fontWeight: FontWeight.normal,
                letterSpacing: Utils.labelLetterSpacing,
              ),
              //
              0.008.verticalh,
              //
              AdaptiveText(
                '${item.title}',
                maxLines: 1,
                minFontSize: 16,
                maxFontSize: 24,
                fontSize: 20.sp,
                fontWeight: FontWeight.w600,
                letterSpacing: Utils.letterSpacing,
              ),
              //
              0.01.verticalh,
              //
              ClipRRect(
                borderRadius: 100.br,
                child: LinearProgressIndicator(
                  value: item.progress,
                  backgroundColor: const Color(0xffD8D8D8),
                  color: const Color(0xffD8D8D8),
                  valueColor: const AlwaysStoppedAnimation(Color(0xff00AB06)),
                  minHeight: 6,
                ),
              ),
              //
              0.02.verticalh,
            ]),
          ),
        ),
      ],
      body: SingleChildScrollView(
        primary: false,
        child: Column(
          // mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            item.page,
            //
            Padding(
              padding: EdgeInsets.symmetric(horizontal: App.sidePadding),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  0.04.verticalh,
                  //
                  AnimatedVisibility(
                    visible: !context.read<ProductBloc>().isLast(_ProductPager.items, currentIndex),
                    replacement: AppButton(
                      text: 'Finish'.toUpperCase(),
                      onPressed: () {},
                    ),
                    child: AppButton(
                      text: 'Next'.toUpperCase(),
                      onPressed: () {
                        context.read<ProductBloc>().add(ProductPageControllerEvent.next(_ProductPager.items, currentIndex));
                      },
                    ),
                  ),
                  //
                  0.02.verticalh,
                  //
                  if (!context.read<ProductBloc>().isFirst(currentIndex)) ...[
                    AppButton(
                      text: 'Previous'.toUpperCase(),
                      backgroundColor: Colors.transparent,
                      textColor: Palette.accentColor,
                      splashColor: App.resolveColor(Colors.black12, dark: Colors.grey.shade800),
                      onPressed: () => context.read<ProductBloc>().add(const ProductPageControllerEvent.prev()),
                    ),
                    //
                    0.02.verticalh,
                  ],
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _ProductPager {
  final int index;
  final Widget page;
  final String title;

  const _ProductPager({
    required this.index,
    required this.title,
    required this.page,
  });

  static List<_ProductPager> get items => const [
        _ProductPager(index: 1, title: 'About Post', page: AboutPostPage()),
        _ProductPager(index: 2, title: 'Item Details', page: ItemDetailsPage()),
        _ProductPager(index: 3, title: 'Pricing', page: PricingPage()),
        _ProductPager(index: 4, title: 'Shipping Details', page: ShippingDetailsPage()),
        _ProductPager(index: 5, title: 'Terms & Conditions', page: TermsPage()),
      ];

  double get progress => index / items.length;
}
