import 'package:auro_v2/Featured/auth/presentation/views/create_new_password.dart';
import 'package:auro_v2/Featured/auth/presentation/views/forget_password_view.dart';
import 'package:auro_v2/Featured/auth/presentation/views/otp_view.dart';
import 'package:auro_v2/Featured/auth/presentation/views/sign_in_view.dart';
import 'package:auro_v2/Featured/splash/presentation/views/onboarding_view.dart';
import 'package:auro_v2/Featured/splash/presentation/views/select_region_view.dart';
import 'package:go_router/go_router.dart';

import '../../Featured/auth/presentation/views/sign_up_view.dart';
import '../../Featured/splash/presentation/views/splash_view.dart';

abstract class AppRouter {
  static const kSelectRegionView = '/selectRegionView';
  static const kOnboardingView = '/onBoardingView';
  static const kSignInView = '/signInView';
  static const kSignUpView = '/signUpView';
  static const kForgetPasswordView = '/forgetPasswordView';
  static const kOTPView = '/otpView';
  static const kCreateNewPasswordView = '/createNewPasswordView';
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
    GoRoute(
      path: kSignUpView,
      builder: (context, state) => const SignUpView(),
    ),
    GoRoute(
      path: kForgetPasswordView,
      builder: (context, state) => const ForgetPasswordView(),
    ),
    GoRoute(
      path: kOTPView,
      builder: (context, state) => const OtpView(),
    ),
    GoRoute(
      path: kCreateNewPasswordView,
      builder: (context, state) => const CreateNewPassword(),
    ),
  ]);
}
