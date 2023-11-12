import 'package:go_router/go_router.dart';
import 'package:waether_app/features/aplash/presentation/views/splash_view.dart';
import 'package:waether_app/features/home/presentation/views/home_view.dart';
import '../../features/home/presentation/views/forecast_view.dart';

class AppRouter {
  static const homeView = '/homeView';
  static const forecastView = '/forecastView';
  static GoRouter route = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) {
          return const SplashView();
        },
      ),
      GoRoute(
        path: homeView,
        builder: (context, state) {
          return const HomeView();
        },
      ),
      GoRoute(
        path: forecastView,
        builder: (context, state) {
          return const ForecastView();
        },
      ),
    ],
  );
}
