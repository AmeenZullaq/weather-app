import 'package:flutter/material.dart';
import '../../../../../core/utilis/assets.dart';
import 'weather_info_item.dart';

class RowWeatherInfo extends StatelessWidget {
  const RowWeatherInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
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
    );
  }
}
