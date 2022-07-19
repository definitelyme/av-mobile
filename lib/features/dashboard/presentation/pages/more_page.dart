library more_page.dart;

import 'package:auctionvillage/core/domain/entities/entities.dart';
import 'package:auctionvillage/features/auth/presentation/managers/managers.dart';
import 'package:auctionvillage/features/auth/presentation/widgets/login_layout.dart';
import 'package:auctionvillage/features/dashboard/domain/index.dart';
import 'package:auctionvillage/features/dashboard/presentation/managers/index.dart';
import 'package:auctionvillage/features/dashboard/presentation/widgets/index.dart';
import 'package:auctionvillage/manager/locator/locator.dart';
import 'package:auctionvillage/utils/utils.dart';
import 'package:auctionvillage/widgets/widgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

/// A stateful widget to render MorePage.
class MorePage extends StatefulWidget {
  const MorePage({Key? key}) : super(key: key);

  @override
  _MorePageState createState() => _MorePageState();
}

class _MorePageState extends State<MorePage> with AutomaticKeepAliveClientMixin<MorePage> {
  late WalletCubit _walletCubit;

  @override
  void initState() {
    _walletCubit = blocMaybeOf(context, orElse: () => getIt<WalletCubit>());
    if (context.read<AuthWatcherCubit>().isAuthenticated) _walletCubit.getWallet();
    super.initState();
  }

  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    super.build(context);

    return BlocListener<AuthWatcherCubit, AuthWatcherState>(
      // listenWhen: (p, c) => c.user != null && p.user != c.user,
      listenWhen: (p, c) => c.user != null,
      listener: (_, __) => _walletCubit.getWallet(),
      child: Builder(
        builder: (c) => Visibility(
          visible: c.watch<AuthWatcherCubit>().isAuthenticated,
          replacement: BlocProvider(
            create: (_) => getIt<AuthCubit>(),
            child: BlocListener<AuthCubit, AuthState>(
              listenWhen: (p, c) =>
                  p.status.getOrElse(() => null) != c.status.getOrElse(() => null) ||
                  (c.status.getOrElse(() => null) != null && (c.status.getOrElse(() => null)!.fold(orElse: () => false))),
              listener: (c, s) => s.status.fold(
                () => null,
                (it) => it?.response.mapOrNull(
                  info: (i) => PopupDialog.info(message: i.message).render(c),
                  error: (f) => PopupDialog.error(message: f.message, show: f.show).render(c),
                  success: (s) => PopupDialog.success(message: s.message).render(c),
                ),
              ),
              child: const LoginLayout(),
            ),
          ),
          child: AdaptiveScaffold(
            backgroundColor: Palette.accentColor,
            overlayStyle: App.customSystemOverlay(ctx: c, android: Brightness.light, ios: Brightness.dark),
            body: CustomScrollView(
              slivers: [
                SliverSafeArea(
                  left: false,
                  right: false,
                  bottom: false,
                  sliver: SliverPadding(
                    padding: EdgeInsets.all(App.sidePadding),
                    sliver: SliverToBoxAdapter(
                      child: GestureDetector(
                        onTap: () => navigator.navigate(EditProfileRoute(user: c.read<AuthWatcherCubit>().state.user)),
                        child: Row(
                          children: [
                            BlocSelector<AuthWatcherCubit, AuthWatcherState, User?>(
                              selector: (s) => s.user,
                              builder: (c, user) => ImageBox.network(
                                heroTag: Const.profilePhotoHeroTag,
                                photo: user?.photo.image.getOrNull,
                                width: 50,
                                height: 50,
                                fit: BoxFit.cover,
                                borderRadius: 100.br,
                                expandsFullscreen: true,
                                boxBorder: Border.all(color: Colors.white, width: 0.5),
                                replacement: Image.asset(AppAssets.unnamed, fit: BoxFit.cover, width: 50, height: 50),
                              ),
                            ),
                            //
                            0.03.horizontalw,
                            //
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                BlocSelector<AuthWatcherCubit, AuthWatcherState, User?>(
                                  selector: (s) => s.user,
                                  builder: (c, user) => AdaptiveText(
                                    '${user?.fullName.getOrEmpty}',
                                    fontSize: 18.sp,
                                    textColor: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                //
                                0.002.verticalh,
                                //
                                Row(
                                  children: [
                                    AdaptiveText(
                                      'Edit Profile',
                                      fontSize: 14.sp,
                                      textColor: Colors.white,
                                      fontWeight: FontWeight.w400,
                                      // decoration: TextDecoration.underline,
                                    ),
                                    //
                                    0.01.horizontalw,
                                    //
                                    Icon(
                                      Utils.platform_(material: Icons.edit, cupertino: CupertinoIcons.pencil),
                                      color: Colors.white,
                                      size: 11.sp,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            //
                            const Spacer(),
                            //
                            Material(
                              type: MaterialType.transparency,
                              borderRadius: 100.br,
                              child: AdaptiveInkWell(
                                onTap: () => navigator.navigate(const AppearanceRoute()),
                                borderRadius: 100.br,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Icon(
                                    Utils.foldTheme(
                                      context: context,
                                      light: () => CupertinoIcons.moon_stars_fill,
                                      dark: () => Utils.platform_(material: Icons.light_mode_rounded, cupertino: CupertinoIcons.light_max),
                                    ),
                                    color: Palette.cardColorLight,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                //
                SliverFillRemaining(
                  child: Material(
                    color: App.resolveColor(Palette.cardColorLight, dark: Palette.secondaryColor),
                    child: Padding(
                      padding: EdgeInsets.all(App.sidePadding),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          BlocSelector<WalletCubit, WalletState, UserWallet?>(
                            selector: (s) => s.wallet,
                            builder: (c, wallet) => WalletBalanceCard(balance: '${wallet?.balance.getOrNull ?? 0}'),
                          ),
                          //
                          // 0.018.verticalh,
                          // //
                          // AdaptiveInkWell(
                          //   onTap: () => navigator.navigate(const WalletHistoryRoute()),
                          //   borderRadius: 5.br,
                          //   child: Center(
                          //     child: Padding(
                          //       padding: EdgeInsets.symmetric(vertical: 0.015.h),
                          //       child: AdaptiveText(
                          //         'See wallet history',
                          //         maxLines: 1,
                          //         softWrap: true,
                          //         fontSize: 17.sp,
                          //         textColor: Palette.accentColor,
                          //         fontWeight: FontWeight.w600,
                          //         letterSpacing: Utils.letterSpacing,
                          //       ),
                          //     ),
                          //   ),
                          // ),
                          //
                          GridView.builder(
                            shrinkWrap: true,
                            physics: const NeverScrollableScrollPhysics(),
                            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,
                              mainAxisExtent: 0.15.h,
                              mainAxisSpacing: 0.05.w,
                              crossAxisSpacing: 0.05.w,
                            ),
                            itemCount: _Action.list.length,
                            itemBuilder: (_, i) => Material(
                              type: MaterialType.transparency,
                              shape: RoundedRectangleBorder(
                                borderRadius: 5.br,
                                side: const BorderSide(color: Color(0xffE7E7E7)),
                              ),
                              child: AdaptiveInkWell(
                                onTap: _Action.list.elementAt(i).onPressed,
                                borderRadius: 5.br,
                                child: Center(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      _Action.list.elementAt(i).asset,
                                      //
                                      0.01.verticalh,
                                      //
                                      AdaptiveText(
                                        '${_Action.list.elementAt(i).title}',
                                        fontSize: 17.sp,
                                        textColor: App.resolveColor(Palette.accentColor, dark: Colors.white70),
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                          //
                          0.03.verticalh,
                          //
                          BlocSelector<AuthWatcherCubit, AuthWatcherState, bool>(
                            selector: (s) => s.isLoggingOut,
                            builder: (c, isLoading) {
                              return AppOutlinedButton(
                                text: 'LOGOUT',
                                isLoading: isLoading,
                                fontWeight: FontWeight.w600,
                                textColor: Palette.errorRed,
                                borderColor: Palette.errorRed,
                                borderColorDark: Palette.errorRed,
                                onPressed: () async {
                                  // Signout the authenticated rider
                                  await c.read<AuthWatcherCubit>().signOut();
                                  // Reset current Index to 0
                                  navigator.navigatorKey.currentContext?.read<BottomNavigationCubit>().reset();
                                },
                              );
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _Action {
  final String title;
  final Widget asset;
  final VoidCallback? onPressed;

  const _Action({required this.title, required this.asset, this.onPressed});

  static List<_Action> get list => [
        _Action(
          title: 'My Bids',
          asset: AppAssets.hammer(
            App.resolveColor(
              Palette.accentColor,
              dark: App.platform.when(material: Colors.white70, cupertino: CupertinoColors.systemGrey6),
            ),
            Size(0.04.w, 0.04.h),
          ),
          onPressed: () => navigator.navigate(const MyBidsRoute()),
        ),
        _Action(
          title: 'My Sales',
          asset: AppAssets.shoppingBag(
            App.resolveColor(
              Palette.accentColor,
              dark: App.platform.when(material: Colors.white70, cupertino: CupertinoColors.systemGrey6),
            ),
            Size(0.035.w, 0.035.h),
          ),
          onPressed: () => navigator.navigate(const MySellingsRoute()),
        ),
        _Action(
          title: 'My Wishlist',
          asset: AppAssets.bookmark(
            App.resolveColor(
              Palette.accentColor,
              dark: App.platform.when(material: Colors.white70, cupertino: CupertinoColors.systemGrey6),
            ),
            Size(0.035.w, 0.035.h),
          ),
          onPressed: () => navigator.navigate(const MyWishlistRoute()),
        ),
        _Action(
          title: 'My Reviews',
          asset: AppAssets.thumbs(
            App.resolveColor(
              Palette.accentColor,
              dark: App.platform.when(material: Colors.white70, cupertino: CupertinoColors.systemGrey6),
            ),
            Size(0.035.w, 0.035.h),
          ),
          onPressed: () => navigator.navigate(const MyReviewsRoute()),
        ),
      ];
}
