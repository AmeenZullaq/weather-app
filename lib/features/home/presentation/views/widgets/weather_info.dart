import 'package:flutter/material.dart';
import '../../../../../core/utilis/app_colors.dart';
import '../../../../../core/utilis/assets.dart';
import 'weather_info_item.dart';

class WeatherInfo extends StatelessWidget {
  const WeatherInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 16),
      margin: const EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
        color: AppColors.containerColor,
        borderRadius: BorderRadius.circular(16),
      ),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          WeatherInfoItem(
            image: AssetsData.umbrella,
            text1: '30%',
            text2: 'Precipitation',
          ),
          WeatherInfoItem(
            image: AssetsData.humidity,
            text1: '20%',
            text2: 'Humidity',
          ),
          WeatherInfoItem(
            image: AssetsData.windSpeed,
            text1: '9km/h',
            text2: 'Wind Speed',
          ),
        ],
      ),
    );
  }
}
