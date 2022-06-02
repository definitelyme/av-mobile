library pricing_plan_screen.dart;

import 'package:auctionvillage/core/domain/entities/entities.dart';
import 'package:auctionvillage/features/auth/presentation/managers/managers.dart';
import 'package:auctionvillage/features/dashboard/domain/index.dart';
import 'package:auctionvillage/features/dashboard/presentation/managers/index.dart';
import 'package:auctionvillage/manager/locator/locator.dart';
import 'package:auctionvillage/utils/utils.dart';
import 'package:auctionvillage/widgets/widgets.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kt_dart/collection.dart';

/// A stateless widget to render PricingPlanScreen.
class PricingPlanScreen extends StatefulWidget with AutoRouteWrapper {
  final Product product;

  const PricingPlanScreen(this.product, {Key? key}) : super(key: key);

  @override
  State<PricingPlanScreen> createState() => _PricingPlanScreenState();

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<ProductBloc>()..add(ProductSyncEvent.init(product: product)),
      child: BlocListener<ProductBloc, ProductState>(
        listenWhen: (p, c) =>
            p.status.getOrElse(() => null) != c.status.getOrElse(() => null) ||
            (c.status.getOrElse(() => null) != null && (c.status.getOrElse(() => null)!.response.maybeMap(orElse: () => false))),
        listener: (c, s) => s.status.fold(
          () => null,
          (it) => it?.response.map(
            info: (i) => PopupDialog.info(message: i.message, show: i.message.isNotEmpty).render(c),
            error: (f) => PopupDialog.error(message: f.message, show: f.show && f.message.isNotEmpty).render(c),
            success: (s) => PopupDialog.success(message: s.message, show: s.message.isNotEmpty).render(c),
          ),
        ),
        child: this,
      ),
    );
  }
}

class _PricingPlanScreenState extends State<PricingPlanScreen> {
  late ProductBloc _bloc;

  @override
  void initState() {
    super.initState();
    _bloc = context.read<ProductBloc>()..add(const ProductGetEvent.getDealPlans());
  }

  User? get _autheticatedUser => context.read<AuthWatcherCubit>().state.user;

  @override
  Widget build(BuildContext context) {
    return AppSliverScrollView.scaffold(
      title: 'Choose Pricing Plan',
      useSafeArea: true,
      isPaginated: false,
      implyMiddle: false,
      toolbarOverlayStyle: App.customSystemOverlay(ctx: context, android: Brightness.dark),
      actions: [
        BlocBuilder<ProductBloc, ProductState>(
          builder: (c, s) => Center(
            child: AnimatedVisibility(
              visible: s.dealPlans.isNotEmpty() && s.isLoading,
              child: Padding(
                padding: const EdgeInsets.all(1.5).copyWith(right: App.sidePadding),
                child: CircularProgressBar.adaptive(
                  strokeWidth: 1.5,
                  height: 20,
                  width: 20,
                  color: App.resolveColor(null, dark: Colors.white70),
                ),
              ),
            ),
          ),
        ),
      ],
      slivers: [
        SliverPadding(
          padding: EdgeInsets.symmetric(horizontal: App.sidePadding),
          sliver: BlocBuilder<ProductBloc, ProductState>(
            builder: (c, s) {
              if (s.dealPlans.isEmpty())
                return SliverToBoxAdapter(
                  child: SizedBox(
                    height: 0.08.h,
                    child: Center(
                      child: CircularProgressBar.adaptive(
                        strokeWidth: 2,
                        height: 25,
                        width: 25,
                        color: App.resolveColor(null, dark: Colors.white70),
                      ),
                    ),
                  ),
                );

              return SliverList(
                delegate: SliverChildBuilderDelegate(
                  (_, i) {
                    final plan = s.dealPlans.get(i);
                    final isSelected = plan.id == s.selectedPlan.id;

                    return Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Material(
                          color: isSelected
                              ? Palette.accentColor
                              : App.resolveColor(
                                  Palette.cardColorLight,
                                  dark: Palette.cardColorDark,
                                ),
                          borderRadius: 6.br,
                          child: AdaptiveInkWell(
                            onTap: () => _bloc.add(ProductSyncEvent.dealPlanChanged(plan)),
                            onLongPress: () => _bloc.add(ProductSyncEvent.dealPlanChanged(plan)),
                            borderRadius: 6.br,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                0.01.verticalh,
                                //
                                if (plan.isRecommended)
                                  DecoratedBox(
                                    decoration: const BoxDecoration(
                                      color: Palette.accentGreen2,
                                      borderRadius: BorderRadius.only(
                                        topRight: Radius.circular(100),
                                        bottomRight: Radius.circular(100),
                                      ),
                                    ),
                                    child: Padding(
                                      padding: EdgeInsets.symmetric(horizontal: 0.025.w, vertical: 0.01.w),
                                      child: AdaptiveText(
                                        'Recommended',
                                        maxLines: 1,
                                        fontSize: 17.sp,
                                        maxFontSize: 17,
                                        textColor: Colors.black,
                                        textColorDark: Colors.black,
                                        textAlign: TextAlign.left,
                                        // letterSpacing: Utils.letterSpacing,
                                      ),
                                    ),
                                  ),
                                //
                                Padding(
                                  padding: EdgeInsets.symmetric(horizontal: App.sidePadding).copyWith(top: 0.01.h),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      AdaptiveText(
                                        '${plan.name}'.toUpperCase(),
                                        maxLines: 1,
                                        fontSize: 18.sp,
                                        maxFontSize: 18,
                                        textColor: isSelected ? Colors.white : Palette.textTitle,
                                        textColorDark: isSelected ? Colors.white : Palette.text100Dark,
                                        fontWeight: FontWeight.bold,
                                        textAlign: TextAlign.left,
                                        letterSpacing: Utils.letterSpacing,
                                      ),
                                      //
                                      Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          AdaptiveText(
                                            '${plan.amount.getOrNull}'.asCurrency(currency: Utils.currency),
                                            maxLines: 1,
                                            fontSize: 25.sp,
                                            maxFontSize: 25,
                                            textColor: isSelected ? Colors.white : Palette.textTitle,
                                            textColorDark: isSelected ? Colors.white : Palette.text100Dark,
                                            fontWeight: FontWeight.bold,
                                            textAlign: TextAlign.left,
                                          ),
                                          //
                                          AdaptiveText(
                                            'Per 7 days',
                                            fontSize: 16.sp,
                                            maxFontSize: 16,
                                            textColor: isSelected ? Colors.white : Palette.textTitle,
                                            textColorDark: isSelected ? Colors.white : Palette.text100Dark,
                                            textAlign: TextAlign.left,
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                //
                                0.03.verticalh,
                                //
                                Padding(
                                  padding: EdgeInsets.symmetric(horizontal: App.sidePadding).copyWith(bottom: App.sidePadding),
                                  child: Column(
                                    children: plan.features
                                        .mapIndexed(
                                          (i, e) => Padding(
                                            padding: i != 0 && i != plan.features.size - 1
                                                ? EdgeInsets.symmetric(vertical: 0.013.h)
                                                : EdgeInsets.zero,
                                            child: Row(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                const Icon(Icons.check_circle, color: Palette.accentGreen),
                                                //
                                                0.04.horizontalw,
                                                //
                                                Flexible(
                                                  child: AdaptiveText(
                                                    '$e',
                                                    fontSize: 17.sp,
                                                    maxFontSize: 17,
                                                    textColor: isSelected ? Colors.white : Palette.text100,
                                                    textColorDark: isSelected ? Colors.white : Palette.text100Dark,
                                                    textAlign: TextAlign.left,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        )
                                        .asList(),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        //
                        0.02.verticalh,
                      ],
                    );
                  },
                  childCount: s.dealPlans.size,
                ),
              );
            },
          ),
        ),
        //
        SliverPadding(
          padding: EdgeInsets.symmetric(horizontal: App.sidePadding),
          sliver: BlocBuilder<ProductBloc, ProductState>(
            builder: (c, s) => SliverList(
              delegate: SliverChildListDelegate.fixed([
                0.03.verticalh,
                //
                AppButton(
                  text: 'Submit'.toUpperCase(),
                  disabled: s.isLoading || s.isSavingState || s.isCreatingProduct,
                  isLoading: s.isCreatingProduct,
                  onPressed: () {
                    if (!c.read<AuthWatcherCubit>().state.isAuthenticated) {
                      Utils.popupIfNoAuth(c, msg: 'Login to complete this action!');
                      return;
                    } else if (_bloc.state.product.category == null) {
                      PopupDialog.error(message: 'Please select a category to proceed.').render(c);
                    }

                    _bloc.add(ProductStructEvent.store(
                      _autheticatedUser,
                      callback: (v) {
                        if (v) {
                          _bloc.add(const ProductSyncEvent.clearForm());
                          navigator.popUntilRoot();
                          _bloc.add(const ProductSyncEvent.clearForm());
                        }
                      },
                    ));
                  },
                ),
              ]),
            ),
          ),
        ),
      ],
    );
  }
}
