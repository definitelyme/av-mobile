library withdrawal_screen.dart;

import 'dart:async';

import 'package:auctionvillage/core/domain/entities/entities.dart';
import 'package:auctionvillage/core/presentation/index.dart';
import 'package:auctionvillage/features/auth/presentation/managers/managers.dart';
import 'package:auctionvillage/features/dashboard/domain/index.dart';
import 'package:auctionvillage/features/dashboard/presentation/managers/index.dart';
import 'package:auctionvillage/features/dashboard/presentation/widgets/index.dart';
import 'package:auctionvillage/manager/locator/locator.dart';
import 'package:auctionvillage/utils/utils.dart';
import 'package:auctionvillage/widgets/widgets.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

/// A stateless widget to render WithdrawalScreen.
class WithdrawalScreen extends StatefulWidget with AutoRouteWrapper {
  const WithdrawalScreen({Key? key}) : super(key: key);

  @override
  State<WithdrawalScreen> createState() => _WithdrawalScreenState();

  @override
  Widget wrappedRoute(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (_) => getIt<WalletCubit>()
            ..watchCards()
            ..fetchBanks(),
        ),
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

class _WithdrawalScreenState extends State<WithdrawalScreen> {
  @override
  void initState() {
    ensureHasSetupPin();
    super.initState();
  }

  void ensureHasSetupPin() async {
    final hasSetupPin = await context.read<WalletCubit>().hasSetupPin();
    if (hasSetupPin == null || !hasSetupPin) {
      unawaited(WidgetsBinding.instance.endOfFrame.then((_) {
        navigator.popAndPush(TransactionPinSetupRoute());
      }));
    }
  }

  @override
  Widget build(BuildContext context) {
    return AppSliverScrollView.scaffold(
      title: 'Withdraw to Account',
      useSafeArea: true,
      enablePullDown: false,
      subtitleTopPadding: 0,
      keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.manual,
      subtitleWidget: AdaptiveText.rich(
        const TextSpan(children: [
          TextSpan(text: 'Fill the form below to continue'),
        ]),
        maxLines: 1,
        maxFontSize: 18,
        fontSize: 18.sp,
        fontWeight: FontWeight.w500,
        textColor: Palette.accentColor,
      ),
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
              0.01.verticalh,
              //
              const TextFormInputLabel(text: 'Amount'),
              //
              ReactiveTextFormField<WalletCubit, WalletState>(
                controller: (s) => s.amountTextController,
                autoDisposeController: false,
                disabled: (s) => s.isLoading || s.isWithdrawing,
                keyboardType: TextInputType.number,
                focus: WalletState.focusAmount,
                next: WalletState.focusAccountNumber,
                capitalization: TextCapitalization.none,
                field: (s) => s.amount,
                validate: (s) => s.validate,
                response: (s) => s.status,
                onChanged: (cubit, _) => cubit.amountChanged(),
                prefixIcon: (s) => const CurrencyPrefixWidget(Utils.currency),
                prefixMode: (s) => OverlayVisibilityMode.always,
                inputFormatters: [
                  FilteringTextInputFormatter.digitsOnly,
                  FilteringTextInputFormatter.singleLineFormatter,
                ],
              ),
              //
              0.01.verticalh,
              //
              const TextFormInputLabel(text: 'Bank'),
              //
              BlocBuilder<WalletCubit, WalletState>(
                builder: (c, s) => AdaptiveDropdown<Bank?>(
                  hint: '-- Select Bank --',
                  disabled: s.isConfiguringPin,
                  disabledHint: 'Fetching available Banks...Please wait',
                  items: s.banks.asList(),
                  selected: s.bankAccount?.bank,
                  text: (bank) => bank?.bankName.getOrNull,
                  onChanged: c.read<WalletCubit>().bankChanged,
                ),
              ),
              //
              0.01.verticalh,
              //
              const TextFormInputLabel(text: 'Account Number'),
              //
              ReactiveTextFormField<WalletCubit, WalletState>(
                disabled: (s) => s.isLoading || s.isWithdrawing || s.isResolvingAccount,
                focus: WalletState.focusAccountNumber,
                next: WalletState.focusPin,
                keyboardType: TextInputType.number,
                capitalization: TextCapitalization.none,
                field: (s) => s.bankAccount?.accountNumber,
                validate: (s) => s.validate,
                response: (s) => s.status,
                onChanged: (cubit, it) => cubit.accountNumberChanged(it),
                inputFormatters: [
                  FilteringTextInputFormatter.digitsOnly,
                  FilteringTextInputFormatter.singleLineFormatter,
                  LengthLimitingTextInputFormatter(WalletCubit.ACCOUNT_NUMBER_LENGTH),
                ],
              ),
              //
              0.01.verticalh,
              //
              const TextFormInputLabel(text: 'Account Name'),
              //
              ReactiveTextFormField<WalletCubit, WalletState>(
                capitalization: TextCapitalization.none,
                field: (s) => s.bankAccount?.accountName,
                controller: (s) => s.accountNameController,
                disabled: (s) => true,
                readOnly: (s) => true,
                autoDisposeController: false,
                validate: (s) => false,
              ),
              //
              0.01.verticalh,
              //
              const TextFormInputLabel(text: 'Withdraw Pin', fontWeight: FontWeight.w600),
              //
              ReactiveTextFormField<WalletCubit, WalletState>(
                disabled: (s) => s.isLoading || s.isWithdrawing,
                focus: WalletState.focusPin,
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
              0.02.verticalh,
              //
              BlocBuilder<WalletCubit, WalletState>(
                builder: (c, s) {
                  return Disabled(
                    disabled: s.isLoading || s.isWithdrawing || s.isResolvingAccount,
                    child: GestureDetector(
                      onTap: () => navigator.push(const ForgotTransactionPinRoute()),
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(0, 4, 4, 4),
                        child: AdaptiveText(
                          'Forgot PIN?',
                          fontSize: 17.sp,
                          fontWeight: FontWeight.w600,
                          textColor: Palette.accentColor,
                        ),
                      ),
                    ),
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
                    text: 'Process Withdrawal',
                    isLoading: s.isWithdrawing,
                    disabled: !c.read<WalletCubit>().canWithdraw,
                    onPressed: () => c.read<WalletCubit>().withdraw((successful) {
                      if (successful) {
                        navigator.popUntilRoot();
                        c.read<AuthWatcherCubit>().getWallet();
                      }
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
