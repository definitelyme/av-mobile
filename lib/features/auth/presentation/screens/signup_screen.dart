library signup_screen.dart;

import 'package:auctionvillage/features/auth/presentation/index.dart';
import 'package:auctionvillage/features/auth/presentation/managers/managers.dart';
import 'package:auctionvillage/manager/locator/locator.dart';
import 'package:auctionvillage/utils/utils.dart';
import 'package:auctionvillage/widgets/widgets.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

/// A stateless widget to render SignupScreen.
class SignupScreen extends StatelessWidget with AutoRouteWrapper {
  const SignupScreen({Key? key}) : super(key: key);

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
    return AdaptiveScaffold(
      backgroundColor: Palette.accentColor,
      adaptiveToolbar: const AdaptiveToolbar(
        implyMiddle: false,
        implyLeading: false,
        cupertinoImplyLeading: false,
        showCustomLeading: false,
      ),
      body: SingleChildScrollView(
        physics: Utils.physics,
        child: SizedBox(
          height: 1.h,
          child: Stack(
            clipBehavior: Clip.none,
            children: [
              Positioned(
                top: 0.08.h,
                right: 0,
                child: AppAssets.hammerBig,
              ),
              //
              Positioned(
                top: 0.02.h,
                left: 0,
                right: 0.2.w,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: App.sidePadding),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      AdaptiveText(
                        'Create your account',
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
                            onTap: () => navigator.navigate(const LoginRoute()),
                            child: AdaptiveText.rich(
                              const TextSpan(children: [
                                TextSpan(text: 'Already have an account? '),
                                TextSpan(
                                  text: 'Log In',
                                  style: TextStyle(color: Palette.accentYellow, decoration: TextDecoration.underline),
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
                top: App.longest * 0.13,
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
                    child: _FormLayout(),
                  ),
                ),
              ),
            ],
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
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 30),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Flexible(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const TextFormInputLabel(text: 'First Name'),
                    //
                    NameFormField<AuthCubit, AuthState>(
                      prefix: 'First Name',
                      disabled: (s) => s.isLoading,
                      validate: (s) => s.validate,
                      field: (s) => s.user.firstName,
                      focus: AuthState.firstNameFocus,
                      next: AuthState.lastNameFocus,
                      hintText: (s) => 'Enter First Name',
                      onChanged: (it, str) => it.firstNameChanged(str),
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
                    const TextFormInputLabel(text: 'Last Name'),
                    //
                    NameFormField<AuthCubit, AuthState>(
                      prefix: 'Last Name',
                      disabled: (s) => s.isLoading,
                      validate: (s) => s.validate,
                      field: (s) => s.user.lastName,
                      focus: AuthState.lastNameFocus,
                      next: AuthState.newEmailFocus,
                      hintText: (s) => 'Enter Surname',
                      onChanged: (it, str) => it.lastNameChanged(str),
                    ),
                  ],
                ),
              ),
            ],
          ),
          //
          0.014.verticalh,
          //
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
            focus: AuthState.newEmailFocus,
            next: AuthState.newPhoneFocus,
            hintText: (s) => 'Enter your E-mail Address',
            onChanged: (fn, str) => fn.emailChanged(str),
          ),
          //
          0.014.verticalh,
          //
          const TextFormInputLabel(text: 'Phone Number'),
          //
          PhoneFormField<AuthCubit, AuthState>(
            disabled: (s) => s.isLoading,
            validate: (s) => s.validate,
            field: (s) => s.user.phone,
            response: (s) => s.status,
            controller: (s) => s.phoneTextController,
            autoDisposeController: false,
            focus: AuthState.newPhoneFocus,
            next: AuthState.newPasswordFocus,
            hintText: (s) => 'Your Phone Number',
            selectedCountry: (s) => s.user.country,
            onCountryChanged: (cubit, country) => cubit.countryChanged(country),
            onChanged: (cubit, str) => cubit.phoneNumberChanged(str),
          ),
          //
          0.014.verticalh,
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
            focus: AuthState.newPasswordFocus,
            errorField: (f) => f.errors?.password,
            hintText: (s) => 'Enter a Password',
            onChanged: (fn, str) => fn.passwordChanged(str),
            onToggle: (it) => it.togglePasswordVisibility(),
          ),
          //
          0.01.verticalh,
          //
          const PPsTermsWidget(),
          //
          0.01.verticalh,
          //
          BlocSelector<AuthCubit, AuthState, bool>(
            selector: (s) => s.isLoading,
            builder: (c, isLoading) => MyHero(
              tag: Const.authButtonHeroTag,
              child: AppButton(
                text: 'Sign Up',
                isLoading: isLoading,
                disabled: !c.watch<AuthCubit>().isDirty || isLoading,
                onPressed: () {
                  TextInput.finishAutofillContext();
                  c.read<AuthCubit>().createAccount();
                },
              ),
            ),
          ),
          //
          0.03.verticalh,
          //
          MyHero(
            tag: Const.oauthBtnHeroTag,
            child: OAuthWidgets(cubit: context.read<AuthCubit>()),
          ),
        ],
      ),
    );
  }
}
