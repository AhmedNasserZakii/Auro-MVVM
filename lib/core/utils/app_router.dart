import 'package:auro_v2/Featured/splash/presentation/views/select_region_view.dart';
import 'package:go_router/go_router.dart';

import '../../Featured/splash/presentation/views/splash_view.dart';

abstract class AppRouter {
  static const kSelectRegionView = '/selectRegionView';
  static final GoRouter router = GoRouter(routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const SplashView(),
    ),
    GoRoute(
      path: kSelectRegionView,
      builder: (context, state) => const SelectRegionView(),
    ),
  ]);
}
