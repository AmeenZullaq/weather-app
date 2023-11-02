import 'package:flutter/material.dart';
import 'package:waether_app/features/home/presentation/views/widgets/row_weather_info.dart';
import '../../../../../core/utilis/app_colors.dart';

class WeatherMoreInfo extends StatelessWidget {
  const WeatherMoreInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 16),
      margin: const EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
        color: AppColors.darkColor,
        borderRadius: BorderRadius.circular(16),
      ),
      child: const RowWeatherInfo(),
    );
  }
}
