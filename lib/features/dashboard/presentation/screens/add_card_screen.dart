library add_card_screen.dart;

import 'package:auctionvillage/features/auth/presentation/managers/watcher/auth_watcher_cubit.dart';
import 'package:auctionvillage/features/dashboard/presentation/managers/index.dart';
import 'package:auctionvillage/manager/locator/locator.dart';
import 'package:auctionvillage/utils/utils.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:auctionvillage/widgets/widgets.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_multi_formatter/flutter_multi_formatter.dart';

/// A stateless widget to render AddCardScreen.
class AddCardScreen extends StatelessWidget with AutoRouteWrapper {
  final String? intendedRoute;

  const AddCardScreen({Key? key, this.intendedRoute}) : super(key: key);

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<WalletCubit>()..initAddCard(context.read<AuthWatcherCubit>().state.user),
      child: BlocListener<WalletCubit, WalletState>(
        listenWhen: (p, c) =>
            p.status.getOrElse(() => null) != c.status.getOrElse(() => null) ||
            (c.status.getOrElse(() => null) != null && (c.status.getOrElse(() => null)!.response.maybeMap(orElse: () => false))),
        listener: (c, s) => s.status.fold(
          () => null,
          (it) => it?.response.map(
            info: (i) => PopupDialog.info(message: i.message, show: i.message.isNotEmpty).render(c),
            error: (f) => PopupDialog.error(message: f.message, show: f.show && f.message.isNotEmpty).render(c),
            success: (s) => PopupDialog.success(
              message: s.message,
              show: s.message.isNotEmpty,
              listener: (status) => status?.fold(
                dismissed: () {
                  navigator.pushAndPopUntil(const FundWalletRoute(), predicate: (r) => r.isFirst);
                },
              ),
            ).render(c),
          ),
        ),
        child: this,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Unfocuser(
      child: AppSliverScrollView.scaffold(
        title: 'Add Payment Card',
        useSafeArea: true,
        enablePullDown: false,
        slivers: [
          SliverPadding(
            padding: EdgeInsets.symmetric(horizontal: App.sidePadding),
            sliver: SliverList(
              delegate: SliverChildListDelegate.fixed([
                0.01.verticalh,
                //
                // const TextFormInputLabel(text: 'Card Name'),
                // //
                // ReactiveTextFormField<WalletCubit, WalletState>(
                //   hintText: (s) => 'Full Name on your card',
                //   initial: (s) => s.card?.cardName.getOrNull,
                //   disabled: (s) => s.isLoading || s.isAddingCard,
                //   keyboardType: TextInputType.name,
                //   focus: WalletState.cardName,
                //   next: WalletState.cardNumber,
                //   capitalization: TextCapitalization.words,
                //   field: (s) => s.card?.cardName,
                //   validate: (s) => s.validate,
                //   response: (s) => s.status,
                //   onChanged: (cubit, it) => cubit.cardNameChanged(it),
                // ),
                //
                // 0.01.verticalh,
                //
                const TextFormInputLabel(text: 'Card Number'),
                //
                ReactiveTextFormField<WalletCubit, WalletState>(
                  hintText: (s) => 'XXXX XXXX XXXX XXXX XXX',
                  disabled: (s) => s.isLoading || s.isAddingCard,
                  keyboardType: TextInputType.number,
                  focus: WalletState.cardNumber,
                  next: WalletState.cardExpiry,
                  capitalization: TextCapitalization.none,
                  field: (s) => s.card?.cardNumber,
                  validate: (s) => s.validate,
                  response: (s) => s.status,
                  onChanged: (cubit, it) => cubit.cardNumberChanged(it),
                  suffixIcon: (s) => ImageBox.asset(
                    photo: s.card?.image,
                    height: 40,
                    width: 40,
                    fit: BoxFit.contain,
                    useDefaultRadius: false,
                    borderRadius: 0.br,
                  ),
                  suffixMode: (s) => s.card?.image != null ? OverlayVisibilityMode.always : OverlayVisibilityMode.never,
                  inputFormatters: [
                    CreditCardNumberInputFormatter(),
                    FilteringTextInputFormatter.singleLineFormatter,
                  ],
                ),
                //
                0.01.verticalh,
                //
                Row(
                  children: [
                    Flexible(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const TextFormInputLabel(text: 'Expiry Date'),
                          //
                          ReactiveTextFormField<WalletCubit, WalletState>(
                            hintText: (s) => 'MM / YY',
                            disabled: (s) => s.isLoading || s.isAddingCard,
                            keyboardType: TextInputType.number,
                            focus: WalletState.cardExpiry,
                            next: WalletState.cardCVV,
                            capitalization: TextCapitalization.none,
                            field: (s) => s.card?.cardExpiryDate,
                            validate: (s) => s.validate,
                            response: (s) => s.status,
                            onChanged: (cubit, it) => cubit.cardExpiryChanged(it),
                            inputFormatters: [
                              CreditCardExpirationDateFormatter(),
                              FilteringTextInputFormatter.singleLineFormatter,
                            ],
                          ),
                        ],
                      ),
                    ),
                    //
                    0.03.horizontalw,
                    //
                    Flexible(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const TextFormInputLabel(text: 'CVV'),
                          //
                          ReactiveTextFormField<WalletCubit, WalletState>(
                            hintText: (s) => '****',
                            disabled: (s) => s.isLoading || s.isAddingCard,
                            keyboardType: TextInputType.number,
                            focus: WalletState.cardCVV,
                            capitalization: TextCapitalization.none,
                            field: (s) => s.card?.cardCVV,
                            validate: (s) => s.validate,
                            response: (s) => s.status,
                            onChanged: (cubit, it) => cubit.cardCVVChanged(it),
                            inputFormatters: [
                              CreditCardCvcInputFormatter(),
                              FilteringTextInputFormatter.singleLineFormatter,
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ]),
            ),
          ),
          //
          SliverPadding(
            padding: EdgeInsets.symmetric(horizontal: App.sidePadding),
            sliver: SliverList(
              delegate: SliverChildListDelegate.fixed([
                0.04.verticalh,
                //
                SafeArea(
                  top: false,
                  left: false,
                  right: false,
                  child: BlocBuilder<WalletCubit, WalletState>(
                    builder: (c, s) => AppButton(
                      text: 'Save',
                      isLoading: s.isAddingCard,
                      // disabled: s.isLoading || s.isAddingCard || (s.card != null && s.card!.failure.isNone()),
                      disabled: s.isLoading || s.isAddingCard,
                      onPressed: c.read<WalletCubit>().validateAndSaveCard,
                    ),
                  ),
                ),
                //
                VerticalSpace(height: App.sidePadding),
              ]),
            ),
          ),
        ],
      ),
    );
  }
}
