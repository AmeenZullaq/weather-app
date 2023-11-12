import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:waether_app/core/utilis/app_router.dart';
import 'package:waether_app/core/utilis/service_locator.dart';
import 'package:waether_app/features/home/data/repos/home_repo_impl.dart';
import 'package:waether_app/features/home/presentation/manager/current_weather_cubit/weather_cubit.dart';

void main() {
  setup();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
      ),
    );
    return BlocProvider(
      create: (context) => WeatherCubit(
        getIt.get<HomeRepoImpl>(),
      ),
      child: MaterialApp.router(
        routerConfig: AppRouter.route,
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          brightness: Brightness.dark,
        ),
      ),
    );
  }
}
