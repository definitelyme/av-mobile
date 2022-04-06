library fund_wallet_screen.dart;

import 'dart:async';

import 'package:auctionvillage/core/domain/entities/entities.dart';
import 'package:auctionvillage/core/presentation/widgets/dropdown_field_widget.dart';
import 'package:auctionvillage/features/auth/presentation/managers/managers.dart';
import 'package:auctionvillage/features/dashboard/domain/index.dart';
import 'package:auctionvillage/features/dashboard/presentation/managers/index.dart';
import 'package:auctionvillage/manager/locator/locator.dart';
import 'package:auctionvillage/utils/utils.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:auctionvillage/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kt_dart/collection.dart';

/// A stateless widget to render FundWalletScreen.
class FundWalletScreen extends StatefulWidget with AutoRouteWrapper {
  const FundWalletScreen({Key? key}) : super(key: key);

  @override
  State<FundWalletScreen> createState() => _FundWalletScreenState();

  @override
  Widget wrappedRoute(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => getIt<WalletCubit>()..watchCards()),
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
            success: (s) => PopupDialog.success(message: s.message, show: s.message.isNotEmpty).render(c),
          ),
        ),
        child: this,
      ),
    );
  }
}

class _FundWalletScreenState extends State<FundWalletScreen> {
  @override
  void initState() {
    ensureHasExistingCard();
    super.initState();
  }

  void ensureHasExistingCard() async {
    final hasAddedCard = await context.read<WalletCubit>().hasAddedCard();
    // log.w('Has added card ==> $hasAddedCard');
    if (hasAddedCard == null || !hasAddedCard) {
      unawaited(WidgetsBinding.instance!.endOfFrame.then((_) {
        navigator.popAndPush(AddCardRoute(intendedRoute: FundWalletRoute.name));
      }));
    }
  }

  @override
  Widget build(BuildContext context) {
    return AppSliverScrollView.scaffold(
      title: 'Fund Wallet',
      useSafeArea: true,
      enablePullDown: false,
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
                prefixIcon: (s) => Padding(
                  padding: const EdgeInsets.fromLTRB(1, 1, 4, 1),
                  child: SizedBox(
                    width: 35,
                    child: Material(
                      color: App.resolveColor(Colors.white, dark: Palette.cardColorDark),
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(Utils.inputBorderRadius),
                        bottomLeft: Radius.circular(Utils.inputBorderRadius),
                      ),
                      child: DecoratedBox(
                        decoration: BoxDecoration(
                          border: Border(right: BorderSide(color: Theme.of(context).dividerColor, width: 1.2)),
                        ),
                        child: Center(
                          child: AdaptiveText(
                            Utils.currency,
                            isDefault: true,
                            maxLines: 1,
                            wrapWords: false,
                            softWrap: false,
                            fontSize: 20.sp,
                            maxFontSize: 16,
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                prefixMode: (s) => OverlayVisibilityMode.always,
                inputFormatters: [
                  FilteringTextInputFormatter.digitsOnly,
                  FilteringTextInputFormatter.singleLineFormatter,
                ],
              ),
              //
              BlocBuilder<WalletCubit, WalletState>(
                builder: (c, s) => AnimatedVisibility(
                  visible: s.debitCards.isNotEmpty() && s.card != null,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      0.02.verticalh,
                      //
                      const TextFormInputLabel(text: 'Select Payment Card'),
                      //
                      AdaptiveDropdown<DebitCard?>(
                        items: s.debitCards.asList(),
                        selected: s.card,
                        height: 60,
                        child: (card) => Row(
                          children: [
                            ImageBox.asset(
                              photo: card?.image,
                              height: 40,
                              width: 40,
                              fit: BoxFit.contain,
                              useDefaultRadius: false,
                              borderRadius: 0.br,
                            ),
                            //
                            0.03.horizontalw,
                            //
                            Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                AdaptiveText.rich(
                                  TextSpan(children: [
                                    TextSpan(text: '${card?.brand.formatted}'),
                                    const TextSpan(text: ' / '),
                                    TextSpan(text: '${card?.masked.getOrNull}'),
                                  ]),
                                  maxLines: 1,
                                  fontSize: 16.sp,
                                  maxFontSize: 16,
                                  softWrap: false,
                                  wrapWords: false,
                                  textAlign: TextAlign.left,
                                  fontWeight: FontWeight.w600,
                                  isDefault: true,
                                ),
                                //
                                AdaptiveText.rich(
                                  TextSpan(children: [
                                    const TextSpan(text: 'Expires'),
                                    const TextSpan(text: ' - '),
                                    TextSpan(text: '${card?.cardExpiryDate.getOrNull}'),
                                  ]),
                                  maxLines: 1,
                                  fontSize: 16.sp,
                                  maxFontSize: 16,
                                  softWrap: false,
                                  wrapWords: false,
                                  textAlign: TextAlign.left,
                                  isDefault: true,
                                ),
                              ],
                            ),
                          ],
                        ),
                        onChanged: (card) {},
                      ),
                    ],
                  ),
                ),
              ),
              //
              0.02.verticalh,
              //
              GestureDetector(
                onTap: () {
                  print('Hello world');
                },
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(0, 4, 4, 4),
                  child: AdaptiveText(
                    'Add a New Card',
                    fontSize: 17.sp,
                    fontWeight: FontWeight.w600,
                    textColor: Palette.accentColor,
                  ),
                ),
              ),
              //
              0.01.verticalh,
              //
              const TextFormInputLabel(text: 'Card Pin'),
              //
              ReactiveTextFormField<WalletCubit, WalletState>(
                disabled: (s) => s.isLoading || s.isFundingWallet,
                focus: WalletState.focusPin,
                keyboardType: TextInputType.number,
                capitalization: TextCapitalization.none,
                field: (s) => s.cardPin,
                validate: (s) => s.validate,
                response: (s) => s.status,
                onChanged: (cubit, it) => cubit.pinChanged(it),
                inputFormatters: [
                  FilteringTextInputFormatter.digitsOnly,
                  FilteringTextInputFormatter.singleLineFormatter,
                  LengthLimitingTextInputFormatter(OTPCode.CODE_LENGTH),
                ],
              ),
              //
              0.04.verticalh,
              //
              SafeArea(
                top: false,
                left: false,
                right: false,
                child: BlocBuilder<WalletCubit, WalletState>(
                  builder: (c, s) => AppButton(
                    text: 'Fund Wallet',
                    isLoading: s.isFundingWallet,
                    disabled: s.isLoading || s.isFundingWallet || (s.amountTextController.numberValue! < 100) || !s.cardPin.isValid,
                    onPressed: () => c.read<WalletCubit>().fundWallet((successful) {
                      if (successful) {
                        navigator.popUntilRoot();
                        c.read<AuthWatcherCubit>().getWallet();
                      }
                    }),
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
