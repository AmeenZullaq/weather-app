import 'package:flutter/material.dart';
import 'package:waether_app/features/home/data/models/weather_model/weather_model/weather_model.dart';
import '../../../../../core/utilis/assets.dart';
import 'row_weather_info_item.dart';

class RowWeatherInfo extends StatelessWidget {
  const RowWeatherInfo({super.key, required this.weather});
  final WeatherModel weather;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        RowWeatherInfoItem(
          image: AssetsData.umbrella,
          text1: '${weather.current.precipMm}',
          text2: 'Precipitation',
        ),
        RowWeatherInfoItem(
          image: AssetsData.humidity,
          text1: '${weather.current.humidity}',
          text2: 'Humidity',
        ),
        RowWeatherInfoItem(
          image: AssetsData.windSpeed,
          text1: '${weather.current.windKph}',
          text2: 'Wind Speed',
        ),
      ],
    );
  }
}
