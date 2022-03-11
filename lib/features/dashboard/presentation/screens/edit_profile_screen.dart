library edit_profile_screen.dart;

import 'package:auctionvillage/features/auth/presentation/managers/managers.dart';
import 'package:auctionvillage/manager/locator/locator.dart';
import 'package:auctionvillage/utils/utils.dart';
import 'package:auctionvillage/widgets/widgets.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part '../widgets/password_update_bottom_sheet.dart';

/// A stateless widget to render EditProfileScreen.
class EditProfileScreen extends StatelessWidget with AutoRouteWrapper {
  const EditProfileScreen({Key? key}) : super(key: key);

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<AuthCubit>()..init(loader: true),
      child: BlocListener<AuthCubit, AuthState>(
        listenWhen: (p, c) =>
            p.status.getOrElse(() => null) != c.status.getOrElse(() => null) ||
            (c.status.getOrElse(() => null) != null &&
                (c.status
                    .getOrElse(() => null)!
                    .response
                    .maybeMap(orElse: () => false))),
        listener: (c, s) => s.status.fold(
          () => null,
          (it) => it?.response.map(
            info: (i) => PopupDialog.info(message: i.message).render(c),
            error: (f) => PopupDialog.error(message: f.message).render(c),
            success: (s) => PopupDialog.success(message: s.message).render(c),
          ),
        ),
        child: this,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return AppSliverScrollView.scaffold(
      title: 'Edit Profile',
      actions: [
        BlocBuilder<AuthCubit, AuthState>(
          builder: (c, s) => AnimatedVisibility(
            visible: s.user.phone.getOrNull == null && s.isLoading,
            child: Padding(
              padding: const EdgeInsets.all(3).copyWith(right: App.sidePadding),
              child:
                  Utils.circularLoader(color: Palette.accentColor, stroke: 2),
            ),
          ),
        ),
      ],
      slivers: [
        SliverPadding(
          padding: EdgeInsets.symmetric(
              horizontal: App.sidePadding, vertical: 0.02.h),
          sliver: SliverToBoxAdapter(
            child: Row(
              children: [
                SizedBox.square(
                  dimension: 70,
                  child: Stack(
                    clipBehavior: Clip.none,
                    children: [
                      ImageBox.asset(
                        heroTag: Const.profilePhotoHeroTag,
                        photo: AppAssets.avatarImg,
                        fit: BoxFit.cover,
                        borderRadius: 100.br,
                        border: Border.all(color: Colors.white, width: 0.5),
                        replacement: Image.asset('${AppAssets.avatarImg}',
                            fit: BoxFit.cover),
                        onPressed: (provider) {
                          print('kumbaya!');
                        },
                      ),
                      //
                      const Positioned(
                        right: 0,
                        bottom: 0,
                        child: DecoratedBox(
                          decoration: BoxDecoration(
                            color: Palette.accentGreen,
                            borderRadius:
                                BorderRadius.all(Radius.circular(100)),
                          ),
                          child: Padding(
                            padding: EdgeInsets.all(2),
                            child:
                                Icon(Icons.add, color: Colors.white, size: 17),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        //
        SliverPadding(
          padding: EdgeInsets.symmetric(horizontal: App.sidePadding),
          sliver: SliverList(
            delegate: SliverChildListDelegate.fixed([
              const Align(
                alignment: Alignment.centerLeft,
                child: TextFormInputLabel(
                    text: 'First Name', textColor: Colors.black87),
              ),
              //
              NameFormField<AuthCubit, AuthState>(
                initial: (s) => s.user.firstName.getOrNull,
                prefix: 'First Name',
                disabled: (s) => s.isLoading,
                validate: (s) => s.validate,
                field: (s) => s.user.firstName,
                focus: AuthState.firstNameFocus,
                next: AuthState.lastNameFocus,
                hintText: (s) => 'Enter First Name',
                onChanged: (it, str) => it.firstNameChanged(str),
              ),
              //
              0.01.verticalh,
              //
              const Align(
                alignment: Alignment.centerLeft,
                child: TextFormInputLabel(
                    text: 'Last Name', textColor: Colors.black87),
              ),
              //
              NameFormField<AuthCubit, AuthState>(
                initial: (s) => s.user.lastName.getOrNull,
                prefix: 'Last Name',
                disabled: (s) => s.isLoading,
                validate: (s) => s.validate,
                field: (s) => s.user.lastName,
                focus: AuthState.lastNameFocus,
                next: AuthState.emailFocus,
                hintText: (s) => 'Enter Surname',
                onChanged: (it, str) => it.lastNameChanged(str),
              ),
              0.01.verticalh,
              //
              const MyHero(
                tag: Const.emailLabelHeroTag,
                child: TextFormInputLabel(
                    text: 'E-mail', textColor: Colors.black87),
              ),
              //
              EmailFormField<AuthCubit, AuthState>(
                initial: (s) => s.user.email.getOrNull,
                useHero: false,
                disabled: (s) => true,
                validate: (s) => false,
                field: (s) => s.user.email,
                hintText: (s) => 'Your E-mail Address',
              ),
              //
              0.01.verticalh,
              //
              const TextFormInputLabel(
                  text: 'Phone Number', textColor: Colors.black87),
              //
              PhoneFormField<AuthCubit, AuthState>(
                initial: (s) => s.user.phone.getOrNull,
                disabled: (s) => s.isLoading,
                validate: (s) => s.validate,
                field: (s) => s.user.phone,
                response: (s) => s.status,
                focus: AuthState.phoneFocus,
                next: AuthState.passwordFocus,
                hintText: (s) => 'Your Phone Number',
                onChanged: (fn, str) => fn.phoneNumberChanged(str),
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
              AppButton(
                text: 'SAVE CHANGES',
                onPressed: () {},
              ),
              //
              0.03.verticalh,
              //
              AppButton(
                text: 'CHANGE PASSWORD',
                backgroundColor: Palette.accentColor.withOpacity(0.1),
                textColor: Palette.accentColor,
                onPressed: () => App.showAdaptiveBottomSheet(
                  context,
                  elevation: 0,
                  enableDrag: true,
                  bounce: true,
                  builder: (_) => const _PasswordUpdateBottomSheet(),
                ),
              ),
            ]),
          ),
        ),
      ],
    );
  }
}
