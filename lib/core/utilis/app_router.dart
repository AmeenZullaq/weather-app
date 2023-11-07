import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:waether_app/core/utilis/api_service.dart';
import 'package:waether_app/features/home/data/repos/home_repo_impl.dart';
import 'package:waether_app/features/home/presentation/manager/current_weather_cubit/current_weather_cubit.dart';
import 'package:waether_app/features/home/presentation/views/home_view.dart';

import '../../features/home/presentation/views/forecast_view.dart';

class AppRouter {
  static const forecastView = '/forecastView';
  static GoRouter route = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) {
          return  BlocProvider(
            create: (context) => CurrentWeatherCubit(HomeRepoImpl(ApiService(Dio()))),
            child: HomeView(),
          );
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
