library login_screen.dart;

import 'package:auctionvillage/features/auth/presentation/index.dart';
import 'package:auctionvillage/features/auth/presentation/managers/managers.dart';
import 'package:auctionvillage/manager/locator/locator.dart';
import 'package:auctionvillage/utils/utils.dart';
import 'package:auctionvillage/widgets/widgets.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

/// A stateless widget to render LoginScreen.
class LoginScreen extends StatelessWidget with AutoRouteWrapper {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<AuthCubit>(),
      child: BlocListener<AuthCubit, AuthState>(
        listenWhen: (p, c) =>
            p.status.getOrElse(() => null) != c.status.getOrElse(() => null) ||
            (c.status.getOrElse(() => null) != null && (c.status.getOrElse(() => null)!.response.maybeMap(orElse: () => false))),
        listener: (c, s) => s.status.fold(
          () => null,
          (it) => it?.response.mapOrNull(
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
    return AdaptiveScaffold(
      backgroundColor: Palette.accentColor,
      overlayStyle: App.customSystemOverlay(
        ctx: context,
        ios: Brightness.dark,
        android: Brightness.light,
      ),
      body: WidgetFocus(
        child: SingleChildScrollView(
          physics: Utils.physics,
          child: SizedBox(
            height: 1.h,
            child: SafeArea(
              left: false,
              right: false,
              bottom: false,
              child: Stack(
                clipBehavior: Clip.none,
                fit: StackFit.expand,
                children: [
                  Positioned(
                    top: 0.14.h,
                    right: 0,
                    child: AppAssets.hammerBig,
                  ),
                  //
                  Positioned(
                    top: 0.22.h,
                    left: 0,
                    right: 0.2.w,
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: App.sidePadding),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          AdaptiveText(
                            'Welcome to Login',
                            maxLines: 1,
                            textColor: Colors.white,
                            fontSize: 26.sp,
                            fontWeight: FontWeight.bold,
                            letterSpacing: Utils.letterSpacing,
                          ),
                          //
                          0.01.verticalh,
                          //
                          BlocSelector<AuthCubit, AuthState, bool>(
                            selector: (s) => s.isLoading || s.isAppleAuthLoading || s.isGoogleAuthLoading,
                            builder: (c, isLoading) => Disabled(
                              disabled: isLoading,
                              child: GestureDetector(
                                onTap: () => navigator.navigate(const SignupRoute()),
                                child: AdaptiveText.rich(
                                  const TextSpan(children: [
                                    TextSpan(text: 'Please fill in your E-mail & Password to login'),
                                    TextSpan(text: ' OR ', style: TextStyle(fontWeight: FontWeight.bold)),
                                    TextSpan(
                                      text: 'Sign Up',
                                      style: TextStyle(
                                        color: Palette.accentYellow,
                                        decoration: TextDecoration.underline,
                                      ),
                                    ),
                                  ]),
                                  fontSize: 18.sp,
                                  textColor: Colors.white,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  //
                  Positioned(
                    top: 0.38.h,
                    left: 0,
                    right: 0,
                    bottom: 0,
                    child: Material(
                      color: App.resolveColor(Palette.cardColorLight, dark: Palette.cardColorDark),
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(32),
                        topRight: Radius.circular(32),
                      ),
                      child: const SafeArea(
                        top: false,
                        left: false,
                        right: false,
                        child: _FormLayout(),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class _FormLayout extends StatelessWidget {
  const _FormLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 40),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const MyHero(
            tag: Const.emailLabelHeroTag,
            child: TextFormInputLabel(text: 'E-mail'),
          ),
          //
          EmailFormField<AuthCubit, AuthState>(
            useHero: true,
            disabled: (s) => s.isLoading,
            validate: (s) => s.validate,
            field: (s) => s.user.email,
            response: (s) => s.status,
            focus: AuthState.emailFocus,
            next: AuthState.passwordFocus,
            hintText: (s) => 'Your E-mail Address',
            onChanged: (fn, str) => fn.emailChanged(str),
          ),
          //
          0.02.verticalh,
          //
          const MyHero(
            tag: Const.passwordLabelHeroTag,
            child: TextFormInputLabel(text: 'Password'),
          ),
          //
          PasswordFormField<AuthCubit, AuthState>(
            isNew: false,
            useHero: true,
            disabled: (s) => s.isLoading,
            validate: (s) => s.validate,
            isObscured: (s) => s.isPasswordHidden,
            field: (s) => s.user.password,
            response: (s) => s.status,
            heroTag: Const.passwordFieldHeroTag,
            focus: AuthState.passwordFocus,
            errorField: (f) => f.errors?.password,
            hintText: (s) => 'Your Password',
            onChanged: (fn, str) => fn.passwordChanged(str),
            onToggle: (it) => it.togglePasswordVisibility(),
            onFieldSubmitted: (cubit, _) {
              TextInput.finishAutofillContext();
              cubit.login();
            },
          ),
          //
          Align(
            alignment: Alignment.centerRight,
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 0.02.h),
              child: TextFormInputLabel(
                text: 'Forgot Password?',
                textColor: App.resolveColor(Palette.accentColor.shade600, dark: Palette.accentColor),
                onPressed: () => navigator.navigate(const ForgotPasswordRoute()),
              ),
            ),
          ),
          //
          0.02.verticalh,
          //
          BlocSelector<AuthCubit, AuthState, bool>(
            selector: (s) => s.isLoading,
            builder: (c, isLoading) => MyHero(
              tag: Const.authButtonHeroTag,
              child: AppButton(
                text: 'Login',
                isLoading: isLoading,
                disabled: (!c.watch<AuthCubit>().isDirty || isLoading) && env.flavor != BuildFlavor.dev,
                onPressed: () {
                  TextInput.finishAutofillContext();
                  c.read<AuthCubit>().login();
                },
              ),
            ),
          ),
          //
          if (1 != 1)
            if (!App.platform.isIOS) ...[
              0.04.verticalh,
              //
              MyHero(
                tag: Const.oauthBtnHeroTag,
                child: OAuthWidgets(cubit: context.read<AuthCubit>()),
              ),
            ],
          //
          0.01.verticalh,
        ],
      ),
    );
  }
}
