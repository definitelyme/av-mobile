// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auctionvillage/core/domain/entities/entities.dart' as _i11;
import 'package:auctionvillage/core/presentation/index.dart' as _i4;
import 'package:auctionvillage/features/auth/presentation/index.dart' as _i2;
import 'package:auctionvillage/features/dashboard/domain/index.dart' as _i10;
import 'package:auctionvillage/features/dashboard/presentation/pages/index.dart'
    as _i7;
import 'package:auctionvillage/features/dashboard/presentation/screens/index.dart'
    as _i3;
import 'package:auctionvillage/features/onboarding/index.dart' as _i1;
import 'package:auctionvillage/manager/router/guards/guards.dart' as _i9;
import 'package:auto_route/auto_route.dart' as _i6;
import 'package:flutter/material.dart' as _i8;
import 'package:kt_dart/collection.dart' as _i5;

class AppRouter extends _i6.RootStackRouter {
  AppRouter(
      {_i8.GlobalKey<_i8.NavigatorState>? navigatorKey,
      required this.guestGuard,
      required this.authGuard})
      : super(navigatorKey);

  final _i9.GuestGuard guestGuard;

  final _i9.AuthGuard authGuard;

  @override
  final Map<String, _i6.PageFactory> pagesMap = {
    SplashRoute.name: (routeData) {
      final args = routeData.argsAs<SplashRouteArgs>(
          orElse: () => const SplashRouteArgs());
      return _i6.AdaptivePage<dynamic>(
          routeData: routeData, child: _i1.SplashScreen(key: args.key));
    },
    LoginRoute.name: (routeData) {
      return _i6.AdaptivePage<dynamic>(
          routeData: routeData,
          child: _i6.WrappedRoute(child: const _i2.LoginScreen()),
          title: 'Login');
    },
    SignupRoute.name: (routeData) {
      return _i6.AdaptivePage<dynamic>(
          routeData: routeData,
          child: _i6.WrappedRoute(child: const _i2.SignupScreen()),
          title: 'Sign Up');
    },
    ForgotPasswordRoute.name: (routeData) {
      return _i6.AdaptivePage<dynamic>(
          routeData: routeData,
          child: _i6.WrappedRoute(child: const _i2.ForgotPasswordScreen()),
          fullscreenDialog: true,
          title: 'Forgot Password');
    },
    PasswordResetRoute.name: (routeData) {
      return _i6.AdaptivePage<dynamic>(
          routeData: routeData,
          child: _i6.WrappedRoute(child: const _i2.PasswordResetScreen()),
          fullscreenDialog: true,
          title: 'Reset Password');
    },
    PhoneVerificationRoute.name: (routeData) {
      return _i6.AdaptivePage<dynamic>(
          routeData: routeData,
          child: _i6.WrappedRoute(child: const _i2.PhoneVerificationScreen()),
          fullscreenDialog: true,
          title: 'OTP');
    },
    DashboardRoute.name: (routeData) {
      return _i6.AdaptivePage<dynamic>(
          routeData: routeData,
          child: _i6.WrappedRoute(child: const _i3.DashboardScreen()));
    },
    DealDetailRoute.name: (routeData) {
      final args = routeData.argsAs<DealDetailRouteArgs>();
      return _i6.AdaptivePage<dynamic>(
          routeData: routeData,
          child: _i6.WrappedRoute(
              child: _i3.DealDetailScreen(args.deal, key: args.key)),
          title: 'Product');
    },
    DealsListRoute.name: (routeData) {
      final args = routeData.argsAs<DealsListRouteArgs>();
      return _i6.AdaptivePage<dynamic>(
          routeData: routeData,
          child: _i6.WrappedRoute(
              child: _i3.DealsListScreen(args.title,
                  key: args.key,
                  isPrivate: args.isPrivate,
                  type: args.type,
                  bidStatus: args.bidStatus,
                  category: args.category)));
    },
    ProductListRoute.name: (routeData) {
      return _i6.AdaptivePage<dynamic>(
          routeData: routeData,
          child: _i6.WrappedRoute(child: const _i3.ProductListScreen()));
    },
    FundWalletRoute.name: (routeData) {
      return _i6.AdaptivePage<dynamic>(
          routeData: routeData,
          child: _i6.WrappedRoute(child: const _i3.FundWalletScreen()),
          title: 'Fund Wallet');
    },
    AddCardRoute.name: (routeData) {
      final args = routeData.argsAs<AddCardRouteArgs>(
          orElse: () => const AddCardRouteArgs());
      return _i6.AdaptivePage<dynamic>(
          routeData: routeData,
          child: _i6.WrappedRoute(
              child: _i3.AddCardScreen(
                  key: args.key, intendedRoute: args.intendedRoute)),
          title: 'Add Card');
    },
    WithdrawalRoute.name: (routeData) {
      return _i6.AdaptivePage<dynamic>(
          routeData: routeData,
          child: _i6.WrappedRoute(child: const _i3.WithdrawalScreen()),
          title: 'Withdraw to Account');
    },
    TransactionPinSetupRoute.name: (routeData) {
      final args = routeData.argsAs<TransactionPinSetupRouteArgs>(
          orElse: () => const TransactionPinSetupRouteArgs());
      return _i6.AdaptivePage<dynamic>(
          routeData: routeData,
          child: _i6.WrappedRoute(
              child: _i3.TransactionPinSetupScreen(
                  key: args.key,
                  requestedOTP: args.requestedOTP,
                  duration: args.duration)),
          title: 'Withdraw PIN Setup');
    },
    ForgotTransactionPinRoute.name: (routeData) {
      return _i6.AdaptivePage<dynamic>(
          routeData: routeData,
          child:
              _i6.WrappedRoute(child: const _i3.ForgotTransactionPinScreen()),
          title: 'Forgot Transaction PIN');
    },
    WalletHistoryRoute.name: (routeData) {
      return _i6.AdaptivePage<dynamic>(
          routeData: routeData,
          child: _i6.WrappedRoute(child: const _i3.WalletHistoryScreen()),
          title: 'Wallet Activities');
    },
    MyBidsRoute.name: (routeData) {
      return _i6.AdaptivePage<dynamic>(
          routeData: routeData,
          child: _i6.WrappedRoute(child: const _i3.MyBidsScreen()),
          title: 'Bidding Activities');
    },
    MySellingsRoute.name: (routeData) {
      return _i6.AdaptivePage<dynamic>(
          routeData: routeData,
          child: _i6.WrappedRoute(child: const _i3.MySellingsScreen()),
          title: 'Selling Activities');
    },
    MyWishlistRoute.name: (routeData) {
      return _i6.AdaptivePage<dynamic>(
          routeData: routeData,
          child: _i6.WrappedRoute(child: const _i3.MyWishlistScreen()),
          title: 'My Wishlist');
    },
    MyReviewsRoute.name: (routeData) {
      return _i6.AdaptivePage<dynamic>(
          routeData: routeData,
          child: _i6.WrappedRoute(child: const _i3.MyReviewsScreen()),
          title: 'My Reviews');
    },
    EditProfileRoute.name: (routeData) {
      final args = routeData.argsAs<EditProfileRouteArgs>();
      return _i6.AdaptivePage<dynamic>(
          routeData: routeData,
          child: _i6.WrappedRoute(
              child: _i3.EditProfileScreen(args.user, key: args.key)),
          title: 'Edit Profile');
    },
    PricingPlanRoute.name: (routeData) {
      final args = routeData.argsAs<PricingPlanRouteArgs>();
      return _i6.AdaptivePage<dynamic>(
          routeData: routeData,
          child: _i6.WrappedRoute(
              child: _i3.PricingPlanScreen(args.product, key: args.key)),
          fullscreenDialog: true,
          title: 'Pricing Plan');
    },
    SuccessRoute.name: (routeData) {
      final args = routeData.argsAs<SuccessRouteArgs>();
      return _i6.AdaptivePage<dynamic>(
          routeData: routeData,
          child: _i6.WrappedRoute(
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
                  hasAppBar: args.hasAppBar)),
          fullscreenDialog: true);
    },
    CountryPickerRoute.name: (routeData) {
      final args = routeData.argsAs<CountryPickerRouteArgs>();
      return _i6.AdaptivePage<dynamic>(
          routeData: routeData,
          child: _i4.CountryPickerScreen(args.initial,
              key: args.key, countries: args.countries),
          fullscreenDialog: true);
    },
    HomeRouter.name: (routeData) {
      return _i6.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i6.EmptyRouterPage());
    },
    LiveRouter.name: (routeData) {
      return _i6.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i6.EmptyRouterPage());
    },
    SellRouter.name: (routeData) {
      return _i6.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i6.EmptyRouterPage());
    },
    MoreRouter.name: (routeData) {
      return _i6.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i6.EmptyRouterPage());
    },
    HomePage.name: (routeData) {
      return _i6.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i7.HomePage());
    },
    LivePage.name: (routeData) {
      return _i6.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i7.LivePage());
    },
    SellPage.name: (routeData) {
      return _i6.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i7.SellPage());
    },
    MorePage.name: (routeData) {
      return _i6.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i7.MorePage());
    }
  };

  @override
  List<_i6.RouteConfig> get routes => [
        _i6.RouteConfig(SplashRoute.name,
            path: '/', fullMatch: true, usesPathAsKey: true),
        _i6.RouteConfig(LoginRoute.name,
            path: '/login-screen',
            fullMatch: true,
            usesPathAsKey: true,
            guards: [guestGuard]),
        _i6.RouteConfig(SignupRoute.name,
            path: '/signup-screen',
            fullMatch: true,
            usesPathAsKey: true,
            guards: [guestGuard]),
        _i6.RouteConfig(ForgotPasswordRoute.name,
            path: '/forgot-password-screen',
            fullMatch: true,
            usesPathAsKey: true,
            guards: [guestGuard]),
        _i6.RouteConfig(PasswordResetRoute.name,
            path: '/password-reset-screen',
            fullMatch: true,
            usesPathAsKey: true,
            guards: [guestGuard]),
        _i6.RouteConfig(PhoneVerificationRoute.name,
            path: '/phone-verification-screen',
            fullMatch: true,
            usesPathAsKey: true),
        _i6.RouteConfig(DashboardRoute.name,
            path: 'bottom-navigation',
            fullMatch: true,
            guards: [
              authGuard
            ],
            children: [
              _i6.RouteConfig(HomeRouter.name,
                  path: 'empty-router-page',
                  parent: DashboardRoute.name,
                  children: [
                    _i6.RouteConfig(HomePage.name,
                        path: '', parent: HomeRouter.name),
                    _i6.RouteConfig('*#redirect',
                        path: '*',
                        parent: HomeRouter.name,
                        redirectTo: '',
                        fullMatch: true)
                  ]),
              _i6.RouteConfig(LiveRouter.name,
                  path: 'empty-router-page',
                  parent: DashboardRoute.name,
                  children: [
                    _i6.RouteConfig(LivePage.name,
                        path: '', parent: LiveRouter.name),
                    _i6.RouteConfig('*#redirect',
                        path: '*',
                        parent: LiveRouter.name,
                        redirectTo: '',
                        fullMatch: true)
                  ]),
              _i6.RouteConfig(SellRouter.name,
                  path: 'empty-router-page',
                  parent: DashboardRoute.name,
                  children: [
                    _i6.RouteConfig(SellPage.name,
                        path: '', parent: SellRouter.name),
                    _i6.RouteConfig('*#redirect',
                        path: '*',
                        parent: SellRouter.name,
                        redirectTo: '',
                        fullMatch: true)
                  ]),
              _i6.RouteConfig(MoreRouter.name,
                  path: 'empty-router-page',
                  parent: DashboardRoute.name,
                  children: [
                    _i6.RouteConfig(MorePage.name,
                        path: '', parent: MoreRouter.name),
                    _i6.RouteConfig('*#redirect',
                        path: '*',
                        parent: MoreRouter.name,
                        redirectTo: '',
                        fullMatch: true)
                  ])
            ]),
        _i6.RouteConfig(DealDetailRoute.name,
            path: '/deal-detail-screen', fullMatch: true, usesPathAsKey: true),
        _i6.RouteConfig(DealsListRoute.name,
            path: '/deals-list-screen', fullMatch: true, usesPathAsKey: true),
        _i6.RouteConfig(ProductListRoute.name,
            path: '/product-list-screen', fullMatch: true, usesPathAsKey: true),
        _i6.RouteConfig(FundWalletRoute.name,
            path: '/fund-wallet-screen', fullMatch: true, usesPathAsKey: true),
        _i6.RouteConfig(AddCardRoute.name,
            path: '/add-card-screen', fullMatch: true, usesPathAsKey: true),
        _i6.RouteConfig(WithdrawalRoute.name,
            path: '/withdrawal-screen', fullMatch: true, usesPathAsKey: true),
        _i6.RouteConfig(TransactionPinSetupRoute.name,
            path: '/transaction-pin-setup-screen',
            fullMatch: true,
            usesPathAsKey: true),
        _i6.RouteConfig(ForgotTransactionPinRoute.name,
            path: '/forgot-transaction-pin-screen',
            fullMatch: true,
            usesPathAsKey: true),
        _i6.RouteConfig(WalletHistoryRoute.name,
            path: '/wallet-history-screen',
            fullMatch: true,
            usesPathAsKey: true),
        _i6.RouteConfig(MyBidsRoute.name,
            path: '/my-bids-screen', fullMatch: true, usesPathAsKey: true),
        _i6.RouteConfig(MySellingsRoute.name,
            path: '/my-sellings-screen', fullMatch: true, usesPathAsKey: true),
        _i6.RouteConfig(MyWishlistRoute.name,
            path: '/my-wishlist-screen', fullMatch: true, usesPathAsKey: true),
        _i6.RouteConfig(MyReviewsRoute.name,
            path: '/my-reviews-screen', fullMatch: true, usesPathAsKey: true),
        _i6.RouteConfig(EditProfileRoute.name,
            path: '/edit-profile-screen', fullMatch: true, usesPathAsKey: true),
        _i6.RouteConfig(PricingPlanRoute.name,
            path: '/pricing-plan-screen', fullMatch: true, usesPathAsKey: true),
        _i6.RouteConfig(SuccessRoute.name,
            path: '/success-screen', fullMatch: true, usesPathAsKey: true),
        _i6.RouteConfig(CountryPickerRoute.name,
            path: '/country-picker-screen',
            fullMatch: true,
            usesPathAsKey: true)
      ];
}

/// generated route for
/// [_i1.SplashScreen]
class SplashRoute extends _i6.PageRouteInfo<SplashRouteArgs> {
  SplashRoute({_i8.Key? key})
      : super(SplashRoute.name, path: '/', args: SplashRouteArgs(key: key));

  static const String name = 'SplashRoute';
}

class SplashRouteArgs {
  const SplashRouteArgs({this.key});

  final _i8.Key? key;

  @override
  String toString() {
    return 'SplashRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i2.LoginScreen]
class LoginRoute extends _i6.PageRouteInfo<void> {
  const LoginRoute() : super(LoginRoute.name, path: '/login-screen');

  static const String name = 'LoginRoute';
}

/// generated route for
/// [_i2.SignupScreen]
class SignupRoute extends _i6.PageRouteInfo<void> {
  const SignupRoute() : super(SignupRoute.name, path: '/signup-screen');

  static const String name = 'SignupRoute';
}

/// generated route for
/// [_i2.ForgotPasswordScreen]
class ForgotPasswordRoute extends _i6.PageRouteInfo<void> {
  const ForgotPasswordRoute()
      : super(ForgotPasswordRoute.name, path: '/forgot-password-screen');

  static const String name = 'ForgotPasswordRoute';
}

/// generated route for
/// [_i2.PasswordResetScreen]
class PasswordResetRoute extends _i6.PageRouteInfo<void> {
  const PasswordResetRoute()
      : super(PasswordResetRoute.name, path: '/password-reset-screen');

  static const String name = 'PasswordResetRoute';
}

/// generated route for
/// [_i2.PhoneVerificationScreen]
class PhoneVerificationRoute extends _i6.PageRouteInfo<void> {
  const PhoneVerificationRoute()
      : super(PhoneVerificationRoute.name, path: '/phone-verification-screen');

  static const String name = 'PhoneVerificationRoute';
}

/// generated route for
/// [_i3.DashboardScreen]
class DashboardRoute extends _i6.PageRouteInfo<void> {
  const DashboardRoute({List<_i6.PageRouteInfo>? children})
      : super(DashboardRoute.name,
            path: 'bottom-navigation', initialChildren: children);

  static const String name = 'DashboardRoute';
}

/// generated route for
/// [_i3.DealDetailScreen]
class DealDetailRoute extends _i6.PageRouteInfo<DealDetailRouteArgs> {
  DealDetailRoute({required _i10.Deal deal, _i8.Key? key})
      : super(DealDetailRoute.name,
            path: '/deal-detail-screen',
            args: DealDetailRouteArgs(deal: deal, key: key));

  static const String name = 'DealDetailRoute';
}

class DealDetailRouteArgs {
  const DealDetailRouteArgs({required this.deal, this.key});

  final _i10.Deal deal;

  final _i8.Key? key;

  @override
  String toString() {
    return 'DealDetailRouteArgs{deal: $deal, key: $key}';
  }
}

/// generated route for
/// [_i3.DealsListScreen]
class DealsListRoute extends _i6.PageRouteInfo<DealsListRouteArgs> {
  DealsListRoute(
      {required String title,
      _i8.Key? key,
      bool? isPrivate,
      _i10.DealType? type,
      _i10.BidStatus? bidStatus,
      _i10.DealCategory? category})
      : super(DealsListRoute.name,
            path: '/deals-list-screen',
            args: DealsListRouteArgs(
                title: title,
                key: key,
                isPrivate: isPrivate,
                type: type,
                bidStatus: bidStatus,
                category: category));

  static const String name = 'DealsListRoute';
}

class DealsListRouteArgs {
  const DealsListRouteArgs(
      {required this.title,
      this.key,
      this.isPrivate,
      this.type,
      this.bidStatus,
      this.category});

  final String title;

  final _i8.Key? key;

  final bool? isPrivate;

  final _i10.DealType? type;

  final _i10.BidStatus? bidStatus;

  final _i10.DealCategory? category;

  @override
  String toString() {
    return 'DealsListRouteArgs{title: $title, key: $key, isPrivate: $isPrivate, type: $type, bidStatus: $bidStatus, category: $category}';
  }
}

/// generated route for
/// [_i3.ProductListScreen]
class ProductListRoute extends _i6.PageRouteInfo<void> {
  const ProductListRoute()
      : super(ProductListRoute.name, path: '/product-list-screen');

  static const String name = 'ProductListRoute';
}

/// generated route for
/// [_i3.FundWalletScreen]
class FundWalletRoute extends _i6.PageRouteInfo<void> {
  const FundWalletRoute()
      : super(FundWalletRoute.name, path: '/fund-wallet-screen');

  static const String name = 'FundWalletRoute';
}

/// generated route for
/// [_i3.AddCardScreen]
class AddCardRoute extends _i6.PageRouteInfo<AddCardRouteArgs> {
  AddCardRoute({_i8.Key? key, String? intendedRoute})
      : super(AddCardRoute.name,
            path: '/add-card-screen',
            args: AddCardRouteArgs(key: key, intendedRoute: intendedRoute));

  static const String name = 'AddCardRoute';
}

class AddCardRouteArgs {
  const AddCardRouteArgs({this.key, this.intendedRoute});

  final _i8.Key? key;

  final String? intendedRoute;

  @override
  String toString() {
    return 'AddCardRouteArgs{key: $key, intendedRoute: $intendedRoute}';
  }
}

/// generated route for
/// [_i3.WithdrawalScreen]
class WithdrawalRoute extends _i6.PageRouteInfo<void> {
  const WithdrawalRoute()
      : super(WithdrawalRoute.name, path: '/withdrawal-screen');

  static const String name = 'WithdrawalRoute';
}

/// generated route for
/// [_i3.TransactionPinSetupScreen]
class TransactionPinSetupRoute
    extends _i6.PageRouteInfo<TransactionPinSetupRouteArgs> {
  TransactionPinSetupRoute(
      {_i8.Key? key,
      bool requestedOTP = false,
      Duration duration = const Duration(minutes: 2)})
      : super(TransactionPinSetupRoute.name,
            path: '/transaction-pin-setup-screen',
            args: TransactionPinSetupRouteArgs(
                key: key, requestedOTP: requestedOTP, duration: duration));

  static const String name = 'TransactionPinSetupRoute';
}

class TransactionPinSetupRouteArgs {
  const TransactionPinSetupRouteArgs(
      {this.key,
      this.requestedOTP = false,
      this.duration = const Duration(minutes: 2)});

  final _i8.Key? key;

  final bool requestedOTP;

  final Duration duration;

  @override
  String toString() {
    return 'TransactionPinSetupRouteArgs{key: $key, requestedOTP: $requestedOTP, duration: $duration}';
  }
}

/// generated route for
/// [_i3.ForgotTransactionPinScreen]
class ForgotTransactionPinRoute extends _i6.PageRouteInfo<void> {
  const ForgotTransactionPinRoute()
      : super(ForgotTransactionPinRoute.name,
            path: '/forgot-transaction-pin-screen');

  static const String name = 'ForgotTransactionPinRoute';
}

/// generated route for
/// [_i3.WalletHistoryScreen]
class WalletHistoryRoute extends _i6.PageRouteInfo<void> {
  const WalletHistoryRoute()
      : super(WalletHistoryRoute.name, path: '/wallet-history-screen');

  static const String name = 'WalletHistoryRoute';
}

/// generated route for
/// [_i3.MyBidsScreen]
class MyBidsRoute extends _i6.PageRouteInfo<void> {
  const MyBidsRoute() : super(MyBidsRoute.name, path: '/my-bids-screen');

  static const String name = 'MyBidsRoute';
}

/// generated route for
/// [_i3.MySellingsScreen]
class MySellingsRoute extends _i6.PageRouteInfo<void> {
  const MySellingsRoute()
      : super(MySellingsRoute.name, path: '/my-sellings-screen');

  static const String name = 'MySellingsRoute';
}

/// generated route for
/// [_i3.MyWishlistScreen]
class MyWishlistRoute extends _i6.PageRouteInfo<void> {
  const MyWishlistRoute()
      : super(MyWishlistRoute.name, path: '/my-wishlist-screen');

  static const String name = 'MyWishlistRoute';
}

/// generated route for
/// [_i3.MyReviewsScreen]
class MyReviewsRoute extends _i6.PageRouteInfo<void> {
  const MyReviewsRoute()
      : super(MyReviewsRoute.name, path: '/my-reviews-screen');

  static const String name = 'MyReviewsRoute';
}

/// generated route for
/// [_i3.EditProfileScreen]
class EditProfileRoute extends _i6.PageRouteInfo<EditProfileRouteArgs> {
  EditProfileRoute({required _i11.User? user, _i8.Key? key})
      : super(EditProfileRoute.name,
            path: '/edit-profile-screen',
            args: EditProfileRouteArgs(user: user, key: key));

  static const String name = 'EditProfileRoute';
}

class EditProfileRouteArgs {
  const EditProfileRouteArgs({required this.user, this.key});

  final _i11.User? user;

  final _i8.Key? key;

  @override
  String toString() {
    return 'EditProfileRouteArgs{user: $user, key: $key}';
  }
}

/// generated route for
/// [_i3.PricingPlanScreen]
class PricingPlanRoute extends _i6.PageRouteInfo<PricingPlanRouteArgs> {
  PricingPlanRoute({required _i10.Product product, _i8.Key? key})
      : super(PricingPlanRoute.name,
            path: '/pricing-plan-screen',
            args: PricingPlanRouteArgs(product: product, key: key));

  static const String name = 'PricingPlanRoute';
}

class PricingPlanRouteArgs {
  const PricingPlanRouteArgs({required this.product, this.key});

  final _i10.Product product;

  final _i8.Key? key;

  @override
  String toString() {
    return 'PricingPlanRouteArgs{product: $product, key: $key}';
  }
}

/// generated route for
/// [_i4.SuccessScreen]
class SuccessRoute extends _i6.PageRouteInfo<SuccessRouteArgs> {
  SuccessRoute(
      {_i8.Key? key,
      _i8.Widget? svg,
      _i8.Widget? image,
      required String title,
      String? description,
      String? buttonText,
      Duration animationDuration = const Duration(milliseconds: 1600),
      _i8.BoxFit fit = _i8.BoxFit.cover,
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
      this.fit = _i8.BoxFit.cover,
      this.width,
      this.height,
      this.onButtonPressed,
      this.onBackPressed,
      this.hasAppBar = false});

  final _i8.Key? key;

  final _i8.Widget? svg;

  final _i8.Widget? image;

  final String title;

  final String? description;

  final String? buttonText;

  final Duration animationDuration;

  final _i8.BoxFit fit;

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
/// [_i4.CountryPickerScreen]
class CountryPickerRoute extends _i6.PageRouteInfo<CountryPickerRouteArgs> {
  CountryPickerRoute(
      {required _i11.Country? initial,
      _i8.Key? key,
      _i5.KtList<_i11.Country> countries = const _i5.KtList.empty()})
      : super(CountryPickerRoute.name,
            path: '/country-picker-screen',
            args: CountryPickerRouteArgs(
                initial: initial, key: key, countries: countries));

  static const String name = 'CountryPickerRoute';
}

class CountryPickerRouteArgs {
  const CountryPickerRouteArgs(
      {required this.initial,
      this.key,
      this.countries = const _i5.KtList.empty()});

  final _i11.Country? initial;

  final _i8.Key? key;

  final _i5.KtList<_i11.Country> countries;

  @override
  String toString() {
    return 'CountryPickerRouteArgs{initial: $initial, key: $key, countries: $countries}';
  }
}

/// generated route for
/// [_i6.EmptyRouterPage]
class HomeRouter extends _i6.PageRouteInfo<void> {
  const HomeRouter({List<_i6.PageRouteInfo>? children})
      : super(HomeRouter.name,
            path: 'empty-router-page', initialChildren: children);

  static const String name = 'HomeRouter';
}

/// generated route for
/// [_i6.EmptyRouterPage]
class LiveRouter extends _i6.PageRouteInfo<void> {
  const LiveRouter({List<_i6.PageRouteInfo>? children})
      : super(LiveRouter.name,
            path: 'empty-router-page', initialChildren: children);

  static const String name = 'LiveRouter';
}

/// generated route for
/// [_i6.EmptyRouterPage]
class SellRouter extends _i6.PageRouteInfo<void> {
  const SellRouter({List<_i6.PageRouteInfo>? children})
      : super(SellRouter.name,
            path: 'empty-router-page', initialChildren: children);

  static const String name = 'SellRouter';
}

/// generated route for
/// [_i6.EmptyRouterPage]
class MoreRouter extends _i6.PageRouteInfo<void> {
  const MoreRouter({List<_i6.PageRouteInfo>? children})
      : super(MoreRouter.name,
            path: 'empty-router-page', initialChildren: children);

  static const String name = 'MoreRouter';
}

/// generated route for
/// [_i7.HomePage]
class HomePage extends _i6.PageRouteInfo<void> {
  const HomePage() : super(HomePage.name, path: '');

  static const String name = 'HomePage';
}

/// generated route for
/// [_i7.LivePage]
class LivePage extends _i6.PageRouteInfo<void> {
  const LivePage() : super(LivePage.name, path: '');

  static const String name = 'LivePage';
}

/// generated route for
/// [_i7.SellPage]
class SellPage extends _i6.PageRouteInfo<void> {
  const SellPage() : super(SellPage.name, path: '');

  static const String name = 'SellPage';
}

/// generated route for
/// [_i7.MorePage]
class MorePage extends _i6.PageRouteInfo<void> {
  const MorePage() : super(MorePage.name, path: '');

  static const String name = 'MorePage';
}
