library transaction_pin_setup_screen.dart;

import 'package:auctionvillage/core/domain/entities/entities.dart';
import 'package:auctionvillage/core/presentation/index.dart';
import 'package:auctionvillage/features/dashboard/presentation/managers/index.dart';
import 'package:auctionvillage/manager/locator/locator.dart';
import 'package:auctionvillage/utils/utils.dart';
import 'package:auctionvillage/widgets/widgets.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

/// A stateless widget to render TransactionPinSetupScreen.
class TransactionPinSetupScreen extends StatelessWidget with AutoRouteWrapper {
  final String? intendedRoute;

  const TransactionPinSetupScreen({Key? key, this.intendedRoute}) : super(key: key);

  @override
  Widget wrappedRoute(BuildContext context) {
    return MultiBlocProvider(
      providers: [BlocProvider(create: (_) => getIt<WalletCubit>())],
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

  @override
  Widget build(BuildContext context) {
    return AppSliverScrollView.scaffold(
      title: 'Withdraw PIN Setup',
      useSafeArea: true,
      enablePullDown: false,
      subtitleTopPadding: 0,
      keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.manual,
      subtitleWidget: AdaptiveText.rich(
        const TextSpan(children: [
          TextSpan(text: 'Setup your transactino PIN below to withdraw'),
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
              const TextFormInputLabel(text: 'Pin'),
              //
              ReactiveTextFormField<WalletCubit, WalletState>(
                disabled: (s) => s.isLoading || s.isConfiguringPin,
                hintText: (s) => 'Enter PIN (${OTPCode.CODE_LENGTH} digits)',
                focus: WalletState.focusPin,
                next: WalletState.focusPinConfirmation,
                keyboardType: TextInputType.number,
                capitalization: TextCapitalization.none,
                response: (s) => s.status,
                validate: (s) => s.validate,
                field: (s) => s.withdrawalPin,
                onChanged: (cubit, it) => cubit.pinChanged(it),
                inputFormatters: [
                  FilteringTextInputFormatter.digitsOnly,
                  FilteringTextInputFormatter.singleLineFormatter,
                  LengthLimitingTextInputFormatter(OTPCode.CODE_LENGTH),
                ],
              ),
              //
              0.01.verticalh,
              //
              const TextFormInputLabel(text: 'Confirm PIN'),
              //
              ReactiveTextFormField<WalletCubit, WalletState>(
                disabled: (s) => s.isLoading || s.isConfiguringPin,
                hintText: (s) => 'Enter PIN (${OTPCode.CODE_LENGTH} digits)',
                focus: WalletState.focusPinConfirmation,
                next: WalletState.focusSecurityAnswer,
                keyboardType: TextInputType.number,
                capitalization: TextCapitalization.none,
                response: (s) => s.status,
                validate: (s) => s.validate,
                field: (s) => s.confirmWithdrawalPin,
                onChanged: (cubit, it) => cubit.pinConfirmationChanged(it),
                inputFormatters: [
                  FilteringTextInputFormatter.digitsOnly,
                  FilteringTextInputFormatter.singleLineFormatter,
                  LengthLimitingTextInputFormatter(OTPCode.CODE_LENGTH),
                ],
              ),
              //
              0.01.verticalh,
              //
              const TextFormInputLabel(text: 'Security Question'),
              //
              BlocBuilder<WalletCubit, WalletState>(
                builder: (c, s) => AdaptiveDropdown<SecurityQuestion?>(
                  hint: '-- Select Question --',
                  items: SecurityQuestion.values,
                  disabled: s.isConfiguringPin,
                  selected: s.securityQuestion,
                  text: (val) => val!.question,
                  onChanged: c.read<WalletCubit>().questionChanged,
                ),
              ),
              //
              0.01.verticalh,
              //
              const TextFormInputLabel(text: 'Answer'),
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
              0.04.verticalh,
              //
              SafeArea(
                top: false,
                left: false,
                right: false,
                child: BlocBuilder<WalletCubit, WalletState>(
                  builder: (c, s) => AppButton(
                    text: 'Finish',
                    isLoading: s.isConfiguringPin,
                    disabled: !c.read<WalletCubit>().canFinishPinSetup,
                    onPressed: () => c.read<WalletCubit>().setupPin((successful) {
                      if (successful) navigator.pushAndPopUntil(const WithdrawalRoute(), predicate: (r) => r.isFirst);
                    }),
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
