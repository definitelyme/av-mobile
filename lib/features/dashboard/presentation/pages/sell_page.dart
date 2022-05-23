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
  late ProductBloc _bloc;

  @override
  void initState() {
    _bloc = getIt<ProductBloc>();
    _bloc.add(const ProductPageControllerEvent.attachListener());
    _bloc.add(const ProductGetEvent.categories());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => getIt<TabNavigationCubit>()),
        BlocProvider(create: (_) => _bloc),
      ],
      child: BlocListener<ProductBloc, ProductState>(
        listenWhen: (p, c) =>
            p.status.getOrElse(() => null) != c.status.getOrElse(() => null) ||
            (c.status.getOrElse(() => null) != null && (c.status.getOrElse(() => null)!.response.maybeMap(orElse: () => false))),
        listener: (c, state) => state.status.fold(
          () => null,
          (it) => it?.response.map(
            info: (i) => PopupDialog.info(message: i.message, show: i.message.isNotEmpty).render(c),
            error: (f) => PopupDialog.error(message: f.message, show: f.show && f.message.isNotEmpty).render(c),
            success: (s) => PopupDialog.success(
              message: s.message,
              show: s.message.isNotEmpty,
              listener: (status) => status?.fold(
                dismissed: () {
                  if (state.productCreated) _bloc.add(const ProductSyncEvent.clearForm());
                },
              ),
            ).render(c),
          ),
        ),
        child: AdaptiveScaffold(
          backgroundColor: Palette.accentColor,
          adaptiveToolbar: AdaptiveToolbar(
            title: 'Sell an item',
            titleStyle: App.titleStyle,
            elevation: 0,
            showCupertinoCustomLeading: false,
            showMaterialCustomLeading: false,
            implyLeading: false,
            centerTitle: true,
            backgroundColor: App.platform.cupertino(Palette.accentColor),
            cupertinoImplyLeading: false,
            overlayStyle: App.customSystemOverlay(ctx: context, android: Brightness.light, ios: Brightness.light),
            actions: [
              // ...Utils.platform_(
              //   cupertino: [Center(child: AdaptiveText('Sell an item', maxLines: 1, style: App.titleStyle))],
              //   material: [Utils.nothing],
              // )!,
              //
              BlocBuilder<ProductBloc, ProductState>(
                builder: (c, s) => Center(
                  child: Padding(
                    padding: const EdgeInsets.only(right: 8.0),
                    child: LimitedBox(
                      maxHeight: 0.05.sw,
                      child: AnimatedVisibility(
                        visible: !s.product.isSellBlank,
                        child: Material(
                          type: MaterialType.transparency,
                          borderRadius: BorderRadius.circular(Utils.buttonRadius),
                          child: AdaptiveInkWell(
                            onTap: () => _bloc.add(const ProductSyncEvent.clearForm()),
                            borderRadius: BorderRadius.circular(Utils.buttonRadius),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: AdaptiveText(
                                'Clear all',
                                textColor: Colors.white,
                                fontSize: 16.0.sp,
                                letterSpacing: Utils.letterSpacing,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          body: AdaptiveScaffoldBody(
            color: App.resolveColor(Palette.cardColorLight, dark: Palette.secondaryColor),
            materialWrapper: true,
            builder: (c) => PageView.builder(
              pageSnapping: true,
              // allowImplicitScrolling: true,
              itemCount: _ProductPager.items.length,
              controller: _bloc.state.controller,
              scrollDirection: Axis.horizontal,
              onPageChanged: (index) => _bloc.add(ProductPageControllerEvent.indexChanged(index)),
              itemBuilder: (_, i) => _PageBuilder(_ProductPager.items[i], currentIndex: i),
            ),
          ),
        ),
      ),
    );
  }
}

class _PageBuilder extends StatefulWidget {
  final int currentIndex;
  final _ProductPager item;

  const _PageBuilder(this.item, {Key? key, required this.currentIndex}) : super(key: key);

  @override
  State<_PageBuilder> createState() => _PageBuilderState();
}

class _PageBuilderState extends State<_PageBuilder> {
  late ProductBloc _bloc;

  @override
  void initState() {
    _bloc = context.read<ProductBloc>();
    super.initState();
  }

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
              Row(
                // crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  SafeArea(
                    left: false,
                    right: false,
                    bottom: false,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        0.01.verticalh,
                        //
                        AdaptiveText(
                          'Step ${widget.item.index} of ${_ProductPager.items.length}',
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
                          '${widget.item.title}',
                          maxLines: 1,
                          minFontSize: 16,
                          maxFontSize: 24,
                          fontSize: 20.sp,
                          fontWeight: FontWeight.w600,
                          letterSpacing: Utils.letterSpacing,
                        ),
                      ],
                    ),
                  ),
                  //
                  const Spacer(),
                  //
                  SafeArea(
                    left: false,
                    right: false,
                    bottom: false,
                    child: AnimatedVisibility(
                      visible: widget.currentIndex == 2,
                      child: Row(
                        children: [
                          Material(
                            color: Palette.accentColor,
                            borderRadius: 100.br,
                            child: AdaptiveInkWell(
                              onTap: () => _bloc.add(const ProductPageControllerEvent.prev()),
                              borderRadius: 100.br,
                              child: const Center(
                                child: Padding(
                                  padding: EdgeInsets.fromLTRB(5, 6, 9, 6),
                                  child: Icon(Icons.arrow_back_ios_new_rounded, size: 20, color: Colors.white),
                                ),
                              ),
                            ),
                          ),
                          //
                          0.04.horizontalw,
                          //
                          Material(
                            color: Palette.accentColor,
                            borderRadius: 100.br,
                            child: AdaptiveInkWell(
                              onTap: () => _bloc.add(ProductPageControllerEvent.next(_ProductPager.items, widget.currentIndex)),
                              borderRadius: 100.br,
                              child: const Center(
                                child: Padding(
                                  padding: EdgeInsets.fromLTRB(9, 6, 5, 6),
                                  child: RotatedBox(
                                    quarterTurns: 2,
                                    child: Icon(Icons.arrow_back_ios_new_rounded, size: 20, color: Colors.white),
                                  ),
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
              //
              0.01.verticalh,
              //
              ClipRRect(
                borderRadius: 100.br,
                child: LinearProgressIndicator(
                  value: widget.item.progress,
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
        child: SafeArea(
          top: false,
          left: false,
          right: false,
          child: Column(
            // mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              widget.item.page,
              //
              if (widget.currentIndex != 2)
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: App.sidePadding),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      0.04.verticalh,
                      //
                      AnimatedVisibility(
                        visible: !_bloc.isLast(_ProductPager.items, widget.currentIndex),
                        replacement: AppButton(
                          text: 'Finish'.toUpperCase(),
                          onPressed: () {
                            _bloc.add(const ProductSyncEvent.validate(true));
                            final canFinish = _bloc.state.product.failure.isNone() && !_bloc.state.product.photos.isEmpty();
                            if (canFinish) navigator.navigate(PricingPlanRoute(product: _bloc.state.product));
                          },
                        ),
                        child: AppButton(
                          text: 'Next'.toUpperCase(),
                          onPressed: () => _bloc.add(ProductPageControllerEvent.next(_ProductPager.items, widget.currentIndex)),
                        ),
                      ),
                      //
                      0.02.verticalh,
                      //
                      if (!_bloc.isFirst(widget.currentIndex)) ...[
                        AppButton(
                          text: 'Previous'.toUpperCase(),
                          backgroundColor: Colors.transparent,
                          textColor: App.resolveColor(Palette.accentColor, dark: Colors.white),
                          splashColor: App.resolveColor(Colors.black12, dark: Colors.grey.shade800),
                          onPressed: () => _bloc.add(const ProductPageControllerEvent.prev()),
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
