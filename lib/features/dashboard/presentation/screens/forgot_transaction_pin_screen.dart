library forgot_transaction_pin_screen.dart;

import 'package:auctionvillage/core/domain/entities/entities.dart';
import 'package:auctionvillage/features/auth/presentation/managers/managers.dart';
import 'package:auctionvillage/features/dashboard/presentation/managers/index.dart';
import 'package:auctionvillage/manager/locator/locator.dart';
import 'package:auctionvillage/utils/utils.dart';
import 'package:auctionvillage/widgets/widgets.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

/// A stateless widget to render ForgotTransactionPinScreen.
class ForgotTransactionPinScreen extends StatelessWidget with AutoRouteWrapper {
  const ForgotTransactionPinScreen({Key? key}) : super(key: key);

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider.value(
      value: blocMaybeOf(context, orElse: () => getIt<WalletCubit>()),
      child: BlocListener<WalletCubit, WalletState>(
        listenWhen: (p, c) =>
            p.status.getOrElse(() => null) != c.status.getOrElse(() => null) ||
            (c.status.getOrElse(() => null) != null && (c.status.getOrElse(() => null)!.response.maybeMap(orElse: () => false))),
        listener: (c, state) => state.status.fold(
          () => null,
          (it) => it?.response.map(
            info: (i) {
              navigator.pushAndPopUntil(
                TransactionPinSetupRoute(),
                predicate: (r) => r.settings.name == WithdrawalRoute.name,
              );
              return;
            },
            error: (f) => PopupDialog.error(message: f.message, show: f.show && f.message.isNotEmpty).render(c),
            success: (s) => PopupDialog.success(
              message: s.message,
              show: s.message.isNotEmpty,
              listener: (status) => status?.fold(
                dismissed: () {
                  if (s.pop && state.requestedPINReset) {
                    navigator.pushAndPopUntil(
                      TransactionPinSetupRoute(requestedOTP: state.requestedPINReset),
                      predicate: (r) => r.settings.name == WithdrawalRoute.name,
                    );
                  }
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
    return AppSliverScrollView.scaffold(
      title: 'Reset Withdrawal PIN',
      useSafeArea: true,
      enablePullDown: false,
      subtitleTopPadding: 0,
      keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.manual,
      subtitleWidget: AdaptiveText.rich(
        const TextSpan(children: [
          TextSpan(text: 'Enter your security answer to reset your transaction PIN.'),
        ]),
        maxLines: 1,
        maxFontSize: 18,
        fontSize: 18.sp,
        fontWeight: FontWeight.w500,
        textColor: Palette.accentColor,
      ),
      slivers: [
        SliverPadding(
          padding: EdgeInsets.symmetric(horizontal: App.sidePadding),
          sliver: SliverList(
            delegate: SliverChildListDelegate.fixed([
              0.01.verticalh,
              //
              const TextFormInputLabel(text: 'Your Security Question'),
              //
              BlocBuilder<AuthWatcherCubit, AuthWatcherState>(
                builder: (c, s) => AdaptiveText(
                  s.user?.securityQuestion?.question ?? 'Some random security question',
                  maxFontSize: 18,
                  fontSize: 18.sp,
                  fontWeight: FontWeight.w600,
                ),
              ),
              //
              0.01.verticalh,
              //
              const TextFormInputLabel(text: 'Your Answer'),
              //
              ReactiveTextFormField<WalletCubit, WalletState>(
                disabled: (s) => s.isLoading || s.isConfiguringPin,
                hintText: (s) => 'Enter answer to security question',
                focus: WalletState.focusSecurityAnswer,
                keyboardType: TextInputType.text,
                capitalization: TextCapitalization.none,
                response: (s) => s.status,
                validate: (s) => s.validate,
                field: (s) => s.securityAnswer,
                onChanged: (cubit, it) => cubit.answerChanged(it),
              ),
              //
              0.01.verticalh,
              //
              BlocSelector<WalletCubit, WalletState, bool>(
                selector: (s) => s.isLoading,
                builder: (c, isLoading) {
                  return Row(
                    children: [
                      AdaptiveInkWell(
                        onTap: c.read<WalletCubit>().forgotSecurityAnswer,
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(0, 4, 4, 4),
                          child: AdaptiveText(
                            'Reset Pin?',
                            fontSize: 17.sp,
                            fontWeight: FontWeight.w600,
                            textColor: Palette.accentColor,
                          ),
                        ),
                      ),
                      //
                      0.05.horizontalw,
                      //
                      AnimatedVisibility(
                        visible: isLoading,
                        child: const Padding(
                          padding: EdgeInsets.all(1.0),
                          child: CircularProgressBar.adaptive(width: 20, height: 20, strokeWidth: 2),
                        ),
                      ),
                    ],
                  );
                },
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
                    text: 'Continue',
                    isLoading: s.isConfiguringPin,
                    disabled: !s.securityAnswer.isValid,
                    onPressed: c.read<WalletCubit>().confirmSecurityAnswer,
                  ),
                ),
              ),
              //
              0.02.verticalh,
            ]),
          ),
        ),
      ],
    );
  }
}
