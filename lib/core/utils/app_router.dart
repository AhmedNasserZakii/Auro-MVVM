import 'package:auro_v2/Featured/auth/presentation/views/sign_in_view.dart';
import 'package:auro_v2/Featured/splash/presentation/views/onboarding_view.dart';
import 'package:auro_v2/Featured/splash/presentation/views/select_region_view.dart';
import 'package:go_router/go_router.dart';

import '../../Featured/splash/presentation/views/splash_view.dart';

abstract class AppRouter {
  static const kSelectRegionView = '/selectRegionView';
  static const kOnboardingView = '/onBoardingView';
  static const kSignInView = '/signInView';
  static final GoRouter router = GoRouter(routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const SplashView(),
    ),
    GoRoute(
      path: kSelectRegionView,
      builder: (context, state) => const SelectRegionView(),
    ),
    GoRoute(
      path: kOnboardingView,
      builder: (context, state) => const OnboardingView(),
    ),
    GoRoute(
      path: kSignInView,
      builder: (context, state) => const SignInView(),
    ),
  ]);
}
