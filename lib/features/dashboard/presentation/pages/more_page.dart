library more_page.dart;

import 'package:auctionvillage/core/domain/entities/entities.dart';
import 'package:auctionvillage/core/presentation/index.dart';
import 'package:auctionvillage/features/auth/presentation/managers/managers.dart';
import 'package:auctionvillage/features/dashboard/presentation/widgets/index.dart';
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

class _MorePageState extends State<MorePage> {
  @override
  Widget build(BuildContext context) {
    return AdaptiveScaffold(
      backgroundColor: Palette.accentColor,
      overlayStyle: App.customSystemOverlay(ctx: context, android: Brightness.light, ios: Brightness.light),
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
                  onTap: () => navigator.navigate(const EditProfileRoute()),
                  child: Row(
                    children: [
                      ImageBox.asset(
                        heroTag: Const.profilePhotoHeroTag,
                        photo: AppAssets.avatarImg,
                        width: 50,
                        height: 50,
                        fit: BoxFit.cover,
                        borderRadius: 100.br,
                        expandsFullscreen: true,
                        border: Border.all(color: Colors.white, width: 0.5),
                        replacement: Image.asset('${AppAssets.avatarImg}', fit: BoxFit.cover),
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
                    BlocBuilder<AuthWatcherCubit, AuthWatcherState>(
                      builder: (c, s) => s.wallet != null ? WalletBalanceCard(balance: '${s.wallet?.balance.getOrEmpty}') : Utils.nothing,
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
                                  textColor: Palette.accentColor,
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
                            c.read<TabNavigationCubit>().reset();
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
          asset: AppAssets.hammer(Palette.accentColor, Size(0.04.w, 0.04.h)),
          onPressed: () => navigator.navigate(const MyBidsRoute()),
        ),
        _Action(
          title: 'My Sellings',
          asset: AppAssets.shoppingBag(Palette.accentColor, Size(0.035.w, 0.035.h)),
          onPressed: () => navigator.navigate(const MySellingsRoute()),
        ),
        _Action(
          title: 'My Wishlist',
          asset: AppAssets.bookmark(Palette.accentColor, Size(0.035.w, 0.035.h)),
          onPressed: () => navigator.navigate(const MyWishlistRoute()),
        ),
        _Action(
          title: 'My Reviews',
          asset: AppAssets.thumbs(Palette.accentColor, Size(0.035.w, 0.035.h)),
          onPressed: () => navigator.navigate(const MyReviewsRoute()),
        ),
      ];
}
