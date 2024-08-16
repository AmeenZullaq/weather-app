import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:waether_app/features/aplash/presentation/views/splash_view.dart';
import 'package:waether_app/features/home/presentation/manager/visibility_cubit/visibility_cubit.dart';
import 'package:waether_app/features/home/presentation/views/home_view.dart';
import 'package:waether_app/features/home/presentation/views/search_view.dart';
import '../../features/home/presentation/views/forecast_view.dart';

class AppRouter {
  static const homeView = '/homeView';
  static const forecastView = '/forecastView';
  static const searchView = '/searchView';

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
          return HomeView(
          
          );
        },
      ),
      GoRoute(
        path: forecastView,
        builder: (context, state) {
          return const ForecastView();
        },
      ),
      GoRoute(
        path: searchView,
        builder: (context, state) {
          return BlocProvider(
            create: (context) => VisibilityCubit(),
            child: const SearchView(),
          );
        },
      ),
    ],
  );
}
