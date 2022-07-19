library router.dart;

import 'package:auctionvillage/core/presentation/index.dart';
import 'package:auctionvillage/features/auth/presentation/index.dart';
import 'package:auctionvillage/features/dashboard/presentation/pages/index.dart';
import 'package:auctionvillage/features/dashboard/presentation/screens/index.dart';
import 'package:auctionvillage/features/onboarding/index.dart';
import 'package:auctionvillage/manager/router/guards/guards.dart';
import 'package:auctionvillage/widgets/widgets.dart';
import 'package:auto_route/auto_route.dart';

@AdaptiveAutoRouter(
  replaceInRouteName: 'Screen,Route',
  preferRelativeImports: false,
  routes: <AutoRoute<dynamic>>[
    AdaptiveRoute(
      initial: true,
      fullMatch: true,
      maintainState: true,
      usesPathAsKey: true,
      page: SplashScreen,
    ),
    //
    AdaptiveRoute(
      fullMatch: true,
      maintainState: true,
      usesPathAsKey: true,
      page: GetStartedScreen,
      cupertinoPageTitle: 'Get Started',
    ),
    //
    AdaptiveRoute(
      fullMatch: true,
      maintainState: true,
      usesPathAsKey: true,
      page: LoginScreen,
      cupertinoPageTitle: 'Login',
      guards: [GuestGuard],
    ),
    //
    AdaptiveRoute(
      fullMatch: true,
      maintainState: true,
      usesPathAsKey: true,
      page: SignupScreen,
      cupertinoPageTitle: 'Sign Up',
      guards: [GuestGuard],
    ),
    //
    AdaptiveRoute(
      fullMatch: true,
      maintainState: true,
      usesPathAsKey: true,
      fullscreenDialog: true,
      page: ForgotPasswordScreen,
      cupertinoPageTitle: 'Forgot Password',
      guards: [GuestGuard],
    ),
    //
    AdaptiveRoute(
      fullMatch: true,
      maintainState: true,
      usesPathAsKey: true,
      fullscreenDialog: true,
      page: PasswordResetScreen,
      cupertinoPageTitle: 'Reset Password',
      guards: [GuestGuard],
    ),
    //
    AdaptiveRoute(
      fullMatch: true,
      fullscreenDialog: true,
      maintainState: true,
      usesPathAsKey: true,
      page: PhoneVerificationScreen,
      cupertinoPageTitle: 'OTP',
    ),
    //
    dashboardRouter,
    //
    AdaptiveRoute(
      fullMatch: true,
      maintainState: true,
      usesPathAsKey: true,
      cupertinoPageTitle: 'Product',
      page: DealDetailScreen,
    ),
    //
    AdaptiveRoute(
      fullMatch: true,
      maintainState: true,
      usesPathAsKey: true,
      page: DealsListScreen,
    ),
    //
    AdaptiveRoute(
      fullMatch: true,
      maintainState: true,
      usesPathAsKey: true,
      page: ProductListScreen,
    ),
    //
    AdaptiveRoute(
      fullMatch: true,
      maintainState: true,
      usesPathAsKey: true,
      page: FundWalletScreen,
      cupertinoPageTitle: 'Fund Wallet',
      guards: [AuthGuard],
    ),
    //
    AdaptiveRoute(
      fullMatch: true,
      maintainState: true,
      usesPathAsKey: true,
      page: WithdrawalScreen,
      cupertinoPageTitle: 'Withdraw to Account',
      guards: [AuthGuard],
    ),
    //
    AdaptiveRoute(
      fullMatch: true,
      maintainState: true,
      usesPathAsKey: true,
      page: TransactionPinSetupScreen,
      cupertinoPageTitle: 'Withdraw PIN Setup',
      guards: [AuthGuard],
    ),
    //
    AdaptiveRoute(
      fullMatch: true,
      maintainState: true,
      usesPathAsKey: true,
      page: ForgotTransactionPinScreen,
      cupertinoPageTitle: 'Forgot Transaction PIN',
      guards: [AuthGuard],
    ),
    //
    AdaptiveRoute(
      fullMatch: true,
      maintainState: true,
      usesPathAsKey: true,
      cupertinoPageTitle: 'Wallet Activities',
      page: WalletHistoryScreen,
      guards: [AuthGuard],
    ),
    //
    AdaptiveRoute(
      fullMatch: true,
      maintainState: true,
      usesPathAsKey: true,
      cupertinoPageTitle: 'Bidding Activities',
      page: MyBidsScreen,
      guards: [AuthGuard],
    ),
    //
    AdaptiveRoute(
      fullMatch: true,
      maintainState: true,
      usesPathAsKey: true,
      cupertinoPageTitle: 'Selling Activities',
      page: MySellingsScreen,
      guards: [AuthGuard],
    ),
    //
    AdaptiveRoute(
      fullMatch: true,
      maintainState: true,
      usesPathAsKey: true,
      cupertinoPageTitle: 'My Wishlist',
      page: MyWishlistScreen,
      guards: [AuthGuard],
    ),
    //
    AdaptiveRoute(
      fullMatch: true,
      maintainState: true,
      usesPathAsKey: true,
      cupertinoPageTitle: 'My Reviews',
      page: MyReviewsScreen,
      guards: [AuthGuard],
    ),
    //
    AdaptiveRoute(
      fullMatch: true,
      maintainState: true,
      usesPathAsKey: true,
      cupertinoPageTitle: 'Edit Profile',
      page: EditProfileScreen,
      guards: [AuthGuard],
    ),
    //
    AdaptiveRoute(
      fullMatch: true,
      maintainState: true,
      usesPathAsKey: true,
      fullscreenDialog: true,
      cupertinoPageTitle: 'Pricing Plan',
      page: PricingPlanScreen,
    ),
    //
    AdaptiveRoute(
      fullMatch: true,
      maintainState: true,
      usesPathAsKey: true,
      fullscreenDialog: true,
      page: SuccessScreen,
    ),
    //
    AdaptiveRoute(
      fullMatch: true,
      maintainState: true,
      usesPathAsKey: true,
      fullscreenDialog: true,
      page: CountryPickerScreen,
    ),
    //
    AdaptiveRoute(
      fullMatch: true,
      maintainState: true,
      usesPathAsKey: true,
      page: AppearanceScreen,
    ),
  ],
)
class $AppRouter {}

const dashboardRouter = AutoRoute(
  path: 'bottom-navigation',
  fullMatch: true,
  page: DashboardScreen,
  maintainState: true,
  children: [
    AutoRoute(
      name: 'HomeRouter',
      page: EmptyRouterPage,
      children: [
        AutoRoute(path: '', page: HomePage),
        RedirectRoute(path: '*', redirectTo: ''),
      ],
    ),
    //
    AutoRoute(
      name: 'LiveRouter',
      page: EmptyRouterPage,
      children: [
        AutoRoute(path: '', page: LivePage),
        RedirectRoute(path: '*', redirectTo: ''),
      ],
    ),
    //
    AutoRoute(
      name: 'SellRouter',
      page: EmptyRouterPage,
      children: [
        AutoRoute(path: '', page: SellPage),
        RedirectRoute(path: '*', redirectTo: ''),
      ],
    ),
    //
    // AutoRoute(
    //   name: 'ChatRouter',
    //   page: EmptyRouterPage,
    //   children: [
    //     AutoRoute(path: '', page: ChatPage),
    //     RedirectRoute(path: '*', redirectTo: ''),
    //   ],
    // ),
    //
    AutoRoute(
      name: 'MoreRouter',
      page: EmptyRouterPage,
      children: [
        AutoRoute(path: '', page: MorePage),
        RedirectRoute(path: '*', redirectTo: ''),
      ],
    ),
  ],
);
