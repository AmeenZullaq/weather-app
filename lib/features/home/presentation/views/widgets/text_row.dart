import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:waether_app/core/utilis/app_router.dart';
import 'package:waether_app/features/home/presentation/manager/current_weather_cubit/weather_cubit.dart';
import '../../../../../core/utilis/styles.dart';

class TextRow extends StatelessWidget {
  const TextRow({super.key, required this.cityName});
  final String cityName;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Today',
            style: Styles.textStyle17.copyWith(color: Colors.yellow),
          ),
          GestureDetector(
            onTap: () {
              BlocProvider.of<WeatherCubit>(context).fetchWeatherInfo(
                cityName: cityName,
                daysNumber: 3,
              );
              GoRouter.of(context).push(AppRouter.forecastView);
            },
            child: const Text(
              '3-Day-Forecasts',
              style: Styles.textStyle17,
            ),
          ),
        ],
      ),
    );
  }
}
