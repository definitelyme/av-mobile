library get_started_screen.dart;

import 'package:flutter/material.dart';
import 'package:auctionvillage/utils/utils.dart';
import 'package:auctionvillage/widgets/widgets.dart';
import 'package:flutter_svg/svg.dart';

/// A stateless widget to render GetStartedScreen.
class GetStartedScreen extends StatelessWidget {
  const GetStartedScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AdaptiveScaffold(
      overlayStyle: App.customSystemOverlay(ctx: context, android: Brightness.light, ios: Brightness.dark),
      body: AdaptiveScaffoldBody(
        body: CustomScrollView(
          shrinkWrap: true,
          physics: Utils.physics,
          scrollDirection: Axis.vertical,
          controller: ScrollController(),
          keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
          slivers: [
            SliverToBoxAdapter(
              child: SizedBox(
                height: 1.h,
                width: 1.w,
                child: Stack(
                  children: [
                    Positioned(
                      top: 0,
                      left: 0,
                      right: 0,
                      // bottom: App.longest * 0.15,
                      child: Center(
                        child: SvgPicture.asset(
                          AppAssets.getStarted,
                          width: 1.sw,
                          height: 0.7.h,
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                    //
                    Positioned(
                      top: 0.53.h,
                      left: 0,
                      right: 0,
                      bottom: 0,
                      child: Material(
                        color: App.resolveColor(Palette.cardColorLight, dark: Palette.cardColorDark, ctx: context),
                        borderRadius: const BorderRadius.only(topLeft: Radius.circular(32), topRight: Radius.circular(32)),
                        child: SafeArea(
                          top: false,
                          left: true,
                          right: true,
                          bottom: true,
                          child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: App.sidePadding).copyWith(top: 0.03.h),
                            child: Center(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  Flexible(
                                    flex: 3,
                                    child: AdaptiveText(
                                      'Welcome to ${Const.appName}!',
                                      maxLines: 1,
                                      minFontSize: 13,
                                      fontSize: 27.sp,
                                      fontWeight: FontWeight.w700,
                                      softWrap: false,
                                      wrapWords: false,
                                    ),
                                  ),
                                  //
                                  VerticalSpace(height: 0.03.sw),
                                  //
                                  Flexible(
                                    flex: 5,
                                    child: AdaptiveText(
                                      Const.appDescription,
                                      textAlign: TextAlign.center,
                                      maxLines: 3,
                                      minFontSize: 13,
                                      fontSize: 20.sp,
                                      wordSpacing: 2.0,
                                      softWrap: true,
                                      wrapWords: true,
                                    ),
                                  ),
                                  //
                                  VerticalSpace(height: 0.04.sw),
                                  //
                                  Expanded(
                                    flex: 11,
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Flexible(
                                          child: AppButton(
                                            text: 'Create Account',
                                            fontWeight: FontWeight.w600,
                                            onPressed: () => navigator.pushAndPopUntil(const SignupRoute(), predicate: (_) => false),
                                          ),
                                        ),
                                        //
                                        VerticalSpace(height: 0.03.sw),
                                        //
                                        Flexible(
                                          child: AppOutlinedButton(
                                            text: 'Login',
                                            fontWeight: FontWeight.w600,
                                            textColor: Palette.accentColor,
                                            textColorDark: Colors.white70,
                                            borderColorDark: Colors.white70,
                                            onPressed: () => navigator.pushAndPopUntil(LoginRoute(), predicate: (_) => false),
                                          ),
                                        ),
                                        //
                                        VerticalSpace(height: 0.03.sw),
                                        //
                                        Flexible(
                                          child: AdaptiveButton(
                                            text: 'Continue As Guest',
                                            fontWeight: FontWeight.w600,
                                            textColor: Colors.black,
                                            textColorDark: Colors.white,
                                            splashColor: Colors.black12,
                                            backgroundColor: Colors.transparent,
                                            onPressed: () => navigator.pushAndPopUntil(const DashboardRoute(), predicate: (_) => false),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  //
                                  VerticalSpace(height: 0.03.sw),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
