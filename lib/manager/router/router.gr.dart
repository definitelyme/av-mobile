// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auctionvillage/core/presentation/index.dart' as _i4;
import 'package:auctionvillage/features/auth/presentation/index.dart' as _i2;
import 'package:auctionvillage/features/dashboard/domain/index.dart' as _i9;
import 'package:auctionvillage/features/dashboard/presentation/pages/index.dart'
    as _i6;
import 'package:auctionvillage/features/dashboard/presentation/screens/index.dart'
    as _i3;
import 'package:auctionvillage/features/onboarding/index.dart' as _i1;
import 'package:auctionvillage/manager/router/guards/guards.dart' as _i8;
import 'package:auto_route/auto_route.dart' as _i5;
import 'package:flutter/material.dart' as _i7;

class AppRouter extends _i5.RootStackRouter {
  AppRouter(
      {_i7.GlobalKey<_i7.NavigatorState>? navigatorKey,
      required this.guestGuard,
      required this.authGuard})
      : super(navigatorKey);

  final _i8.GuestGuard guestGuard;

  final _i8.AuthGuard authGuard;

  @override
  final Map<String, _i5.PageFactory> pagesMap = {
    SplashRoute.name: (routeData) {
      final args = routeData.argsAs<SplashRouteArgs>(
          orElse: () => const SplashRouteArgs());
      return _i5.AdaptivePage<dynamic>(
          routeData: routeData, child: _i1.SplashScreen(key: args.key));
    },
    LoginRoute.name: (routeData) {
      return _i5.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i2.LoginScreen(), title: 'Login');
    },
    SignupRoute.name: (routeData) {
      return _i5.AdaptivePage<dynamic>(
          routeData: routeData,
          child: const _i2.SignupScreen(),
          title: 'Sign Up');
    },
    ForgotPasswordRoute.name: (routeData) {
      return _i5.AdaptivePage<dynamic>(
          routeData: routeData,
          child: const _i2.ForgotPasswordScreen(),
          fullscreenDialog: true,
          title: 'Forgot Password');
    },
    PasswordResetRoute.name: (routeData) {
      return _i5.AdaptivePage<dynamic>(
          routeData: routeData,
          child: const _i2.PasswordResetScreen(),
          fullscreenDialog: true,
          title: 'Reset Password');
    },
    PhoneVerificationRoute.name: (routeData) {
      return _i5.AdaptivePage<dynamic>(
          routeData: routeData,
          child: const _i2.PhoneVerificationScreen(),
          fullscreenDialog: true,
          title: 'OTP');
    },
    DashboardRoute.name: (routeData) {
      return _i5.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i3.DashboardScreen());
    },
    DealDetailRoute.name: (routeData) {
      final args = routeData.argsAs<DealDetailRouteArgs>();
      return _i5.AdaptivePage<dynamic>(
          routeData: routeData,
          child: _i3.DealDetailScreen(args.deal, key: args.key),
          title: 'Product');
    },
    ProductListRoute.name: (routeData) {
      return _i5.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i3.ProductListScreen());
    },
    WalletHistoryRoute.name: (routeData) {
      return _i5.AdaptivePage<dynamic>(
          routeData: routeData,
          child: const _i3.WalletHistoryScreen(),
          title: 'Wallet Activities');
    },
    MyBidsRoute.name: (routeData) {
      return _i5.AdaptivePage<dynamic>(
          routeData: routeData,
          child: const _i3.MyBidsScreen(),
          title: 'Bidding Activities');
    },
    MySellingsRoute.name: (routeData) {
      return _i5.AdaptivePage<dynamic>(
          routeData: routeData,
          child: const _i3.MySellingsScreen(),
          title: 'Selling Activities');
    },
    MyWishlistRoute.name: (routeData) {
      return _i5.AdaptivePage<dynamic>(
          routeData: routeData,
          child: const _i3.MyWishlistScreen(),
          title: 'My Wishlist');
    },
    MyReviewsRoute.name: (routeData) {
      return _i5.AdaptivePage<dynamic>(
          routeData: routeData,
          child: const _i3.MyReviewsScreen(),
          title: 'My Reviews');
    },
    EditProfileRoute.name: (routeData) {
      return _i5.AdaptivePage<dynamic>(
          routeData: routeData,
          child: const _i3.EditProfileScreen(),
          title: 'Edit Profile');
    },
    SuccessRoute.name: (routeData) {
      final args = routeData.argsAs<SuccessRouteArgs>();
      return _i5.AdaptivePage<dynamic>(
          routeData: routeData,
          child: _i4.SuccessScreen(
              key: args.key,
              svg: args.svg,
              image: args.image,
              title: args.title,
              description: args.description,
              buttonText: args.buttonText,
              animationDuration: args.animationDuration,
              fit: args.fit,
              width: args.width,
              height: args.height,
              onButtonPressed: args.onButtonPressed,
              onBackPressed: args.onBackPressed,
              hasAppBar: args.hasAppBar),
          fullscreenDialog: true);
    },
    HomeRouter.name: (routeData) {
      return _i5.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i5.EmptyRouterPage());
    },
    LiveRouter.name: (routeData) {
      return _i5.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i5.EmptyRouterPage());
    },
    SellRouter.name: (routeData) {
      return _i5.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i5.EmptyRouterPage());
    },
    ChatRouter.name: (routeData) {
      return _i5.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i5.EmptyRouterPage());
    },
    MoreRouter.name: (routeData) {
      return _i5.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i5.EmptyRouterPage());
    },
    HomePage.name: (routeData) {
      return _i5.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i6.HomePage());
    },
    LivePage.name: (routeData) {
      return _i5.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i6.LivePage());
    },
    SellPage.name: (routeData) {
      return _i5.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i6.SellPage());
    },
    ChatPage.name: (routeData) {
      return _i5.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i6.ChatPage());
    },
    MorePage.name: (routeData) {
      return _i5.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i6.MorePage());
    }
  };

  @override
  List<_i5.RouteConfig> get routes => [
        _i5.RouteConfig(SplashRoute.name,
            path: '/', fullMatch: true, usesPathAsKey: true),
        _i5.RouteConfig(LoginRoute.name,
            path: '/login-screen',
            fullMatch: true,
            usesPathAsKey: true,
            guards: [guestGuard]),
        _i5.RouteConfig(SignupRoute.name,
            path: '/signup-screen',
            fullMatch: true,
            usesPathAsKey: true,
            guards: [guestGuard]),
        _i5.RouteConfig(ForgotPasswordRoute.name,
            path: '/forgot-password-screen',
            fullMatch: true,
            usesPathAsKey: true,
            guards: [guestGuard]),
        _i5.RouteConfig(PasswordResetRoute.name,
            path: '/password-reset-screen',
            fullMatch: true,
            usesPathAsKey: true,
            guards: [guestGuard]),
        _i5.RouteConfig(PhoneVerificationRoute.name,
            path: '/phone-verification-screen',
            fullMatch: true,
            usesPathAsKey: true),
        _i5.RouteConfig(DashboardRoute.name,
            path: 'bottom-navigation',
            fullMatch: true,
            guards: [
              authGuard
            ],
            children: [
              _i5.RouteConfig(HomeRouter.name,
                  path: 'empty-router-page',
                  parent: DashboardRoute.name,
                  children: [
                    _i5.RouteConfig(HomePage.name,
                        path: '', parent: HomeRouter.name),
                    _i5.RouteConfig('*#redirect',
                        path: '*',
                        parent: HomeRouter.name,
                        redirectTo: '',
                        fullMatch: true)
                  ]),
              _i5.RouteConfig(LiveRouter.name,
                  path: 'empty-router-page',
                  parent: DashboardRoute.name,
                  children: [
                    _i5.RouteConfig(LivePage.name,
                        path: '', parent: LiveRouter.name),
                    _i5.RouteConfig('*#redirect',
                        path: '*',
                        parent: LiveRouter.name,
                        redirectTo: '',
                        fullMatch: true)
                  ]),
              _i5.RouteConfig(SellRouter.name,
                  path: 'empty-router-page',
                  parent: DashboardRoute.name,
                  children: [
                    _i5.RouteConfig(SellPage.name,
                        path: '', parent: SellRouter.name),
                    _i5.RouteConfig('*#redirect',
                        path: '*',
                        parent: SellRouter.name,
                        redirectTo: '',
                        fullMatch: true)
                  ]),
              _i5.RouteConfig(ChatRouter.name,
                  path: 'empty-router-page',
                  parent: DashboardRoute.name,
                  children: [
                    _i5.RouteConfig(ChatPage.name,
                        path: '', parent: ChatRouter.name),
                    _i5.RouteConfig('*#redirect',
                        path: '*',
                        parent: ChatRouter.name,
                        redirectTo: '',
                        fullMatch: true)
                  ]),
              _i5.RouteConfig(MoreRouter.name,
                  path: 'empty-router-page',
                  parent: DashboardRoute.name,
                  children: [
                    _i5.RouteConfig(MorePage.name,
                        path: '', parent: MoreRouter.name),
                    _i5.RouteConfig('*#redirect',
                        path: '*',
                        parent: MoreRouter.name,
                        redirectTo: '',
                        fullMatch: true)
                  ])
            ]),
        _i5.RouteConfig(DealDetailRoute.name,
            path: '/deal-detail-screen', fullMatch: true, usesPathAsKey: true),
        _i5.RouteConfig(ProductListRoute.name,
            path: '/product-list-screen', fullMatch: true, usesPathAsKey: true),
        _i5.RouteConfig(WalletHistoryRoute.name,
            path: '/wallet-history-screen',
            fullMatch: true,
            usesPathAsKey: true),
        _i5.RouteConfig(MyBidsRoute.name,
            path: '/my-bids-screen', fullMatch: true, usesPathAsKey: true),
        _i5.RouteConfig(MySellingsRoute.name,
            path: '/my-sellings-screen', fullMatch: true, usesPathAsKey: true),
        _i5.RouteConfig(MyWishlistRoute.name,
            path: '/my-wishlist-screen', fullMatch: true, usesPathAsKey: true),
        _i5.RouteConfig(MyReviewsRoute.name,
            path: '/my-reviews-screen', fullMatch: true, usesPathAsKey: true),
        _i5.RouteConfig(EditProfileRoute.name,
            path: '/edit-profile-screen', fullMatch: true, usesPathAsKey: true),
        _i5.RouteConfig(SuccessRoute.name,
            path: '/success-screen', fullMatch: true, usesPathAsKey: true)
      ];
}

/// generated route for
/// [_i1.SplashScreen]
class SplashRoute extends _i5.PageRouteInfo<SplashRouteArgs> {
  SplashRoute({_i7.Key? key})
      : super(SplashRoute.name, path: '/', args: SplashRouteArgs(key: key));

  static const String name = 'SplashRoute';
}

class SplashRouteArgs {
  const SplashRouteArgs({this.key});

  final _i7.Key? key;

  @override
  String toString() {
    return 'SplashRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i2.LoginScreen]
class LoginRoute extends _i5.PageRouteInfo<void> {
  const LoginRoute() : super(LoginRoute.name, path: '/login-screen');

  static const String name = 'LoginRoute';
}

/// generated route for
/// [_i2.SignupScreen]
class SignupRoute extends _i5.PageRouteInfo<void> {
  const SignupRoute() : super(SignupRoute.name, path: '/signup-screen');

  static const String name = 'SignupRoute';
}

/// generated route for
/// [_i2.ForgotPasswordScreen]
class ForgotPasswordRoute extends _i5.PageRouteInfo<void> {
  const ForgotPasswordRoute()
      : super(ForgotPasswordRoute.name, path: '/forgot-password-screen');

  static const String name = 'ForgotPasswordRoute';
}

/// generated route for
/// [_i2.PasswordResetScreen]
class PasswordResetRoute extends _i5.PageRouteInfo<void> {
  const PasswordResetRoute()
      : super(PasswordResetRoute.name, path: '/password-reset-screen');

  static const String name = 'PasswordResetRoute';
}

/// generated route for
/// [_i2.PhoneVerificationScreen]
class PhoneVerificationRoute extends _i5.PageRouteInfo<void> {
  const PhoneVerificationRoute()
      : super(PhoneVerificationRoute.name, path: '/phone-verification-screen');

  static const String name = 'PhoneVerificationRoute';
}

/// generated route for
/// [_i3.DashboardScreen]
class DashboardRoute extends _i5.PageRouteInfo<void> {
  const DashboardRoute({List<_i5.PageRouteInfo>? children})
      : super(DashboardRoute.name,
            path: 'bottom-navigation', initialChildren: children);

  static const String name = 'DashboardRoute';
}

/// generated route for
/// [_i3.DealDetailScreen]
class DealDetailRoute extends _i5.PageRouteInfo<DealDetailRouteArgs> {
  DealDetailRoute({required _i9.Deal deal, _i7.Key? key})
      : super(DealDetailRoute.name,
            path: '/deal-detail-screen',
            args: DealDetailRouteArgs(deal: deal, key: key));

  static const String name = 'DealDetailRoute';
}

class DealDetailRouteArgs {
  const DealDetailRouteArgs({required this.deal, this.key});

  final _i9.Deal deal;

  final _i7.Key? key;

  @override
  String toString() {
    return 'DealDetailRouteArgs{deal: $deal, key: $key}';
  }
}

/// generated route for
/// [_i3.ProductListScreen]
class ProductListRoute extends _i5.PageRouteInfo<void> {
  const ProductListRoute()
      : super(ProductListRoute.name, path: '/product-list-screen');

  static const String name = 'ProductListRoute';
}

/// generated route for
/// [_i3.WalletHistoryScreen]
class WalletHistoryRoute extends _i5.PageRouteInfo<void> {
  const WalletHistoryRoute()
      : super(WalletHistoryRoute.name, path: '/wallet-history-screen');

  static const String name = 'WalletHistoryRoute';
}

/// generated route for
/// [_i3.MyBidsScreen]
class MyBidsRoute extends _i5.PageRouteInfo<void> {
  const MyBidsRoute() : super(MyBidsRoute.name, path: '/my-bids-screen');

  static const String name = 'MyBidsRoute';
}

/// generated route for
/// [_i3.MySellingsScreen]
class MySellingsRoute extends _i5.PageRouteInfo<void> {
  const MySellingsRoute()
      : super(MySellingsRoute.name, path: '/my-sellings-screen');

  static const String name = 'MySellingsRoute';
}

/// generated route for
/// [_i3.MyWishlistScreen]
class MyWishlistRoute extends _i5.PageRouteInfo<void> {
  const MyWishlistRoute()
      : super(MyWishlistRoute.name, path: '/my-wishlist-screen');

  static const String name = 'MyWishlistRoute';
}

/// generated route for
/// [_i3.MyReviewsScreen]
class MyReviewsRoute extends _i5.PageRouteInfo<void> {
  const MyReviewsRoute()
      : super(MyReviewsRoute.name, path: '/my-reviews-screen');

  static const String name = 'MyReviewsRoute';
}

/// generated route for
/// [_i3.EditProfileScreen]
class EditProfileRoute extends _i5.PageRouteInfo<void> {
  const EditProfileRoute()
      : super(EditProfileRoute.name, path: '/edit-profile-screen');

  static const String name = 'EditProfileRoute';
}

/// generated route for
/// [_i4.SuccessScreen]
class SuccessRoute extends _i5.PageRouteInfo<SuccessRouteArgs> {
  SuccessRoute(
      {_i7.Key? key,
      _i7.Widget? svg,
      _i7.Widget? image,
      required String title,
      String? description,
      String? buttonText,
      Duration animationDuration = const Duration(milliseconds: 1600),
      _i7.BoxFit fit = _i7.BoxFit.cover,
      double? width,
      double? height,
      void Function()? onButtonPressed,
      void Function()? onBackPressed,
      bool hasAppBar = false})
      : super(SuccessRoute.name,
            path: '/success-screen',
            args: SuccessRouteArgs(
                key: key,
                svg: svg,
                image: image,
                title: title,
                description: description,
                buttonText: buttonText,
                animationDuration: animationDuration,
                fit: fit,
                width: width,
                height: height,
                onButtonPressed: onButtonPressed,
                onBackPressed: onBackPressed,
                hasAppBar: hasAppBar));

  static const String name = 'SuccessRoute';
}

class SuccessRouteArgs {
  const SuccessRouteArgs(
      {this.key,
      this.svg,
      this.image,
      required this.title,
      this.description,
      this.buttonText,
      this.animationDuration = const Duration(milliseconds: 1600),
      this.fit = _i7.BoxFit.cover,
      this.width,
      this.height,
      this.onButtonPressed,
      this.onBackPressed,
      this.hasAppBar = false});

  final _i7.Key? key;

  final _i7.Widget? svg;

  final _i7.Widget? image;

  final String title;

  final String? description;

  final String? buttonText;

  final Duration animationDuration;

  final _i7.BoxFit fit;

  final double? width;

  final double? height;

  final void Function()? onButtonPressed;

  final void Function()? onBackPressed;

  final bool hasAppBar;

  @override
  String toString() {
    return 'SuccessRouteArgs{key: $key, svg: $svg, image: $image, title: $title, description: $description, buttonText: $buttonText, animationDuration: $animationDuration, fit: $fit, width: $width, height: $height, onButtonPressed: $onButtonPressed, onBackPressed: $onBackPressed, hasAppBar: $hasAppBar}';
  }
}

/// generated route for
/// [_i5.EmptyRouterPage]
class HomeRouter extends _i5.PageRouteInfo<void> {
  const HomeRouter({List<_i5.PageRouteInfo>? children})
      : super(HomeRouter.name,
            path: 'empty-router-page', initialChildren: children);

  static const String name = 'HomeRouter';
}

/// generated route for
/// [_i5.EmptyRouterPage]
class LiveRouter extends _i5.PageRouteInfo<void> {
  const LiveRouter({List<_i5.PageRouteInfo>? children})
      : super(LiveRouter.name,
            path: 'empty-router-page', initialChildren: children);

  static const String name = 'LiveRouter';
}

/// generated route for
/// [_i5.EmptyRouterPage]
class SellRouter extends _i5.PageRouteInfo<void> {
  const SellRouter({List<_i5.PageRouteInfo>? children})
      : super(SellRouter.name,
            path: 'empty-router-page', initialChildren: children);

  static const String name = 'SellRouter';
}

/// generated route for
/// [_i5.EmptyRouterPage]
class ChatRouter extends _i5.PageRouteInfo<void> {
  const ChatRouter({List<_i5.PageRouteInfo>? children})
      : super(ChatRouter.name,
            path: 'empty-router-page', initialChildren: children);

  static const String name = 'ChatRouter';
}

/// generated route for
/// [_i5.EmptyRouterPage]
class MoreRouter extends _i5.PageRouteInfo<void> {
  const MoreRouter({List<_i5.PageRouteInfo>? children})
      : super(MoreRouter.name,
            path: 'empty-router-page', initialChildren: children);

  static const String name = 'MoreRouter';
}

/// generated route for
/// [_i6.HomePage]
class HomePage extends _i5.PageRouteInfo<void> {
  const HomePage() : super(HomePage.name, path: '');

  static const String name = 'HomePage';
}

/// generated route for
/// [_i6.LivePage]
class LivePage extends _i5.PageRouteInfo<void> {
  const LivePage() : super(LivePage.name, path: '');

  static const String name = 'LivePage';
}

/// generated route for
/// [_i6.SellPage]
class SellPage extends _i5.PageRouteInfo<void> {
  const SellPage() : super(SellPage.name, path: '');

  static const String name = 'SellPage';
}

/// generated route for
/// [_i6.ChatPage]
class ChatPage extends _i5.PageRouteInfo<void> {
  const ChatPage() : super(ChatPage.name, path: '');

  static const String name = 'ChatPage';
}

/// generated route for
/// [_i6.MorePage]
class MorePage extends _i5.PageRouteInfo<void> {
  const MorePage() : super(MorePage.name, path: '');

  static const String name = 'MorePage';
}
