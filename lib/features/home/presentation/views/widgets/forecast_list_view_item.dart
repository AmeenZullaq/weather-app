import 'package:flutter/material.dart';
import 'package:waether_app/features/home/presentation/views/widgets/forecast_weather_info_part1.dart';
import 'package:waether_app/features/home/presentation/views/widgets/forecast_weather_info_part2.dart';
import '../../../../../core/utilis/app_colors.dart';
import '../../../data/models/weather_model/weather_model/weather_model.dart';

class ForecastListViewItem extends StatelessWidget {
  const ForecastListViewItem({
    super.key,
    required this.weather,
    required this.index,
  });
  final WeatherModel weather;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: AppColors.lightColor,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        children: [
          ForecastWeatherInfoPart1(
            weather: weather,
            index: index,
          ),
          const SizedBox(
            height: 30,
          ),
          ForecastWeatherInfoPart2(
            weather: weather,
            index: index,
          ),
        ],
      ),
    );
  }
}
