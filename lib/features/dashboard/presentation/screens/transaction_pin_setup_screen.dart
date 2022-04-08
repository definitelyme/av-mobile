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
class TransactionPinSetupScreen extends StatefulWidget with AutoRouteWrapper {
  final Duration duration;
  final bool requestedOTP;

  const TransactionPinSetupScreen({
    Key? key,
    this.requestedOTP = false,
    this.duration = const Duration(minutes: 2),
  }) : super(key: key);

  @override
  State<TransactionPinSetupScreen> createState() => _TransactionPinSetupScreenState();

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
            success: (s) => PopupDialog.success(
              message: s.message,
              show: s.message.isNotEmpty,
              listener: (status) => status?.fold(
                dismissed: () {
                  navigator.pushAndPopUntil(const WithdrawalRoute(), predicate: (r) => r.isFirst);
                },
              ),
            ).render(c),
          ),
        ),
        child: this,
      ),
    );
  }
}

class _TransactionPinSetupScreenState extends State<TransactionPinSetupScreen> {
  bool countDown = false;

  @override
  void initState() {
    countDown = widget.duration.inSeconds > 0;
    super.initState();
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
          TextSpan(text: 'Setup your transaction PIN below to withdraw'),
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
              if (widget.requestedOTP) ...[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const TextFormInputLabel(text: 'OTP'),
                    //
                    CountdownWidget(
                      autostart: countDown,
                      duration: widget.duration,
                      showHourRemainder: false,
                      ticker: (tick) => AdaptiveText(
                        '$tick',
                        maxLines: 1,
                        fontSize: 16.sp,
                        maxFontSize: 16,
                        fontWeight: FontWeight.w500,
                        textAlign: TextAlign.end,
                      ),
                      child: (startCountDown) => BlocSelector<WalletCubit, WalletState, bool>(
                        selector: (s) => s.isLoading,
                        builder: (c, isLoading) => Disabled(
                          disabled: isLoading,
                          child: GestureDetector(
                            onTap: () async {
                              await context.read<WalletCubit>().forgotSecurityAnswer(false);
                              startCountDown();
                            },
                            child: Padding(
                              padding: const EdgeInsets.fromLTRB(8, 8, 0, 5),
                              child: AdaptiveText.rich(
                                TextSpan(children: [
                                  TextSpan(
                                    text: 'Resend',
                                    style: TextStyle(
                                      color: Utils.foldTheme(
                                        context: context,
                                        light: () => Palette.accentColor,
                                        dark: () => Palette.accentColor.shade100,
                                      ),
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ]),
                                fontSize: 17.sp,
                                fontWeight: FontWeight.w400,
                                letterSpacing: Utils.labelLetterSpacing,
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                //
                ReactiveTextFormField<WalletCubit, WalletState>(
                  hintText: (s) => 'Your Reset Token',
                  disabled: (s) => s.isLoading,
                  validate: (s) => s.validate,
                  field: (s) => s.otpCode,
                  response: (s) => s.status,
                  errorField: (f) => f.errors?.token,
                  focus: WalletState.focusToken,
                  next: WalletState.focusPin,
                  keyboardType: TextInputType.number,
                  inputFormatters: [
                    FilteringTextInputFormatter.digitsOnly,
                    FilteringTextInputFormatter.singleLineFormatter,
                  ],
                  onChanged: (cubit, it) => cubit.otpCodeChanged(it),
                ),
                //
                0.01.verticalh,
              ],
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
                    text: widget.requestedOTP ? 'Reset PIN' : 'Finish',
                    isLoading: s.isConfiguringPin,
                    disabled: !c.read<WalletCubit>().canFinishPinSetup(widget.requestedOTP),
                    onPressed: () => c.read<WalletCubit>().setupPin(requiresOTP: widget.requestedOTP),
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
