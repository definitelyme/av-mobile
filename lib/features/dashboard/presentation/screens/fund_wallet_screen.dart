library fund_wallet_screen.dart;

import 'package:auctionvillage/features/auth/presentation/managers/managers.dart';
import 'package:auctionvillage/features/dashboard/domain/index.dart';
import 'package:auctionvillage/features/dashboard/presentation/managers/index.dart';
import 'package:auctionvillage/features/dashboard/presentation/widgets/index.dart';
import 'package:auctionvillage/manager/locator/locator.dart';
import 'package:auctionvillage/utils/utils.dart';
import 'package:auctionvillage/widgets/widgets.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

/// A stateless widget to render FundWalletScreen.
class FundWalletScreen extends StatefulWidget with AutoRouteWrapper {
  const FundWalletScreen({Key? key}) : super(key: key);

  @override
  State<FundWalletScreen> createState() => _FundWalletScreenState();

  @override
  Widget wrappedRoute(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider.value(value: blocMaybeOf(context, orElse: () => getIt<WalletCubit>())),
      ],
      child: BlocListener<WalletCubit, WalletState>(
        listenWhen: (p, c) =>
            p.status.getOrElse(() => null) != c.status.getOrElse(() => null) ||
            (c.status.getOrElse(() => null) != null && (c.status.getOrElse(() => null)!.response.maybeMap(orElse: () => false))),
        listener: (c, s) => s.status.fold(
          () => null,
          (it) => it?.response.map(
            info: (i) => PopupDialog.info(message: i.message, show: i.message.isNotEmpty).render(c),
            error: (f) => PopupDialog.error(message: f.message, show: f.show && f.message.isNotEmpty).render(c),
            success: (suc) => PopupDialog.success(
              message: suc.message,
              show: suc.message.isNotEmpty,
              listener: (status) => status?.fold(
                dismissed: () => s.paymentStatus.maybeWhen(
                  confirmed: navigator.popUntilRoot,
                  orElse: () => null,
                ),
              ),
            ).render(c),
          ),
        ),
        child: this,
      ),
    );
  }
}

class _FundWalletScreenState extends State<FundWalletScreen> {
  @override
  void dispose() {
    navigator.navigatorKey.currentContext?.let((it) => it.read<WalletCubit>().disposeSocketIO());
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AppSliverScrollView.scaffold(
      title: 'Fund Wallet',
      useSafeArea: true,
      enablePullDown: false,
      scaffoldOverlayStyle: App.customSystemOverlay(ctx: context, android: context.androidOverlay, ios: context.iosOverlay),
      toolbarOverlayStyle: App.customSystemOverlay(ctx: context, android: context.androidOverlay, ios: context.iosOverlay),
      actions: [
        BlocSelector<WalletCubit, WalletState, bool>(
          selector: (s) => s.isLoading,
          builder: (c, isLoading) => AnimatedVisibility(
            visible: isLoading,
            child: Padding(
              padding: EdgeInsets.only(right: App.sidePadding),
              child: const Center(
                child: Padding(
                  padding: EdgeInsets.all(1.0),
                  child: CircularProgressBar.adaptive(strokeWidth: 1.5, width: 25, height: 25),
                ),
              ),
            ),
          ),
        ),
      ],
      slivers: [
        SliverPadding(
          padding: EdgeInsets.symmetric(horizontal: App.sidePadding),
          sliver: SliverList(
            delegate: SliverChildListDelegate.fixed([
              const TextFormInputLabel(text: 'Amount'),
              //
              ReactiveTextFormField<WalletCubit, WalletState>(
                controller: (s) => s.amountTextController,
                autoDisposeController: false,
                disabled: (s) => s.isLoading || s.isFundingWallet,
                keyboardType: TextInputType.number,
                focus: WalletState.focusAmount,
                next: WalletState.focusPin,
                capitalization: TextCapitalization.none,
                field: (s) => s.amount,
                validate: (s) => s.validate,
                response: (s) => s.status,
                onChanged: (cubit, _) => cubit.amountChanged(),
                prefixIcon: (s) => const CurrencyPrefixWidget(),
                prefixMode: (s) => OverlayVisibilityMode.always,
                inputFormatters: [
                  FilteringTextInputFormatter.digitsOnly,
                  FilteringTextInputFormatter.singleLineFormatter,
                ],
              ),
              0.02.verticalh,
              //
              const Align(
                alignment: Alignment.centerLeft,
                child: TextFormInputLabel(text: 'Payment Method'),
              ),
              //
              const _PaymentMethodSelector(),
              //
              0.02.verticalh,
              //
              Center(
                child: AdaptiveText.rich(
                  const TextSpan(children: [
                    TextSpan(text: 'NOTE:', style: TextStyle(fontWeight: FontWeight.w600)),
                    TextSpan(text: ' All payments will be charged in Nigerian Naira.'),
                  ]),
                  maxLines: 2,
                  fontSize: 17.sp,
                  maxFontSize: 18,
                  style: const TextStyle(fontStyle: FontStyle.italic),
                ),
              ),
              //
              0.02.verticalh,
              //
              SafeArea(
                top: false,
                left: false,
                right: false,
                child: BlocBuilder<WalletCubit, WalletState>(
                  builder: (c, s) => Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      AppButton(
                        text: 'Continue',
                        isLoading: s.isFundingWallet,
                        disabled: s.isLoading || s.isFundingWallet || (s.amountTextController.numberValue! < 100),
                        onPressed: () {
                          final user = c.read<AuthWatcherCubit>().state.user;
                          c.read<WalletCubit>().fundWallet(c, user);
                        },
                      ),
                      //
                      0.025.verticalh,
                      //
                      Center(
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Icon(
                              Icons.lock_outline_rounded,
                              size: 20,
                              color: App.resolveColor(Palette.iconLight, dark: Palette.iconDark, ctx: c),
                            ),
                            //
                            0.03.horizontalw,
                            //
                            AdaptiveText(
                              'Secured Payment',
                              fontWeight: FontWeight.w500,
                              fontSize: 15.0.sp,
                              textColor: Palette.subTextLight,
                              textColorDark: Palette.subTextDark,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ]),
          ),
        ),
      ],
    );
  }
}

class _PaymentMethodSelector extends StatelessWidget {
  const _PaymentMethodSelector({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<WalletCubit, WalletState>(
      builder: (c, s) => Row(
        mainAxisSize: MainAxisSize.min,
        children: PaymentMethod.methods
            .map(
              (e) => SizedBox(
                width: 0.31.w,
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Flexible(
                      child: Material(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(Utils.inputBorderRadius),
                          side: BorderSide(
                            color: App.resolveColor(
                              s.paymentMethod == e ? Palette.accentColor : Colors.transparent,
                              ctx: c,
                            )!,
                          ),
                        ),
                        color: App.resolveColor(Palette.cardColorLight, dark: Palette.cardColorDark, ctx: c),
                        child: AdaptiveInkWell(
                          onTap: () => c.read<WalletCubit>().paymentMethodChanged(e),
                          borderRadius: BorderRadius.circular(Utils.inputBorderRadius),
                          child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 0.05.sw, vertical: 0.03.sw),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Flexible(
                                  flex: 2,
                                  child: DecoratedBox(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5.0),
                                      color: e.when(flutterwave: () => const Color(0xffFFF0D9), paystack: () => null),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(9.0),
                                      child: e.when(
                                        flutterwave: () => const Icon(AVIcons.flutterwave, color: Palette.flutterwave),
                                        paystack: () => const Icon(AVIcons.paystack, color: Palette.paystack),
                                      ),
                                    ),
                                  ),
                                ),
                                //
                                VerticalSpace(height: 0.03.w),
                                //
                                Flexible(
                                  child: AdaptiveText(
                                    '${e.name}'.titleCase(),
                                    maxLines: 1,
                                    fontSize: 17.sp,
                                    minFontSize: 14,
                                    maxFontSize: 19,
                                    fontWeight: FontWeight.w500,
                                    textColor: s.paymentMethod == e ? Palette.accentColor : null,
                                    textColorDark: s.paymentMethod == e ? Palette.accentColor : null,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    //
                    // HorizontalSpace(width: 0.01.w),
                  ],
                ),
              ),
            )
            .toList(),
      ),
    );
  }
}
