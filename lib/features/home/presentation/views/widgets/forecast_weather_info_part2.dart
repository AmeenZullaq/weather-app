import 'package:flutter/material.dart';
import '../../../../../core/utilis/assets.dart';
import '../../../data/models/weather_model/weather_model/weather_model.dart';
import 'row_weather_info_item.dart';

class ForecastWeatherInfoPart2 extends StatelessWidget {
  const ForecastWeatherInfoPart2({
    super.key,
    required this.weather,
    required this.index,
  });
  final WeatherModel weather;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        RowWeatherInfoItem(
          image: AssetsData.umbrella,
          text1: '${weather.forecast.forecastday[index].day.totalprecipMm}',
          text2: 'Precipitation',
        ),
        RowWeatherInfoItem(
          image: AssetsData.humidity,
          text1: '${weather.forecast.forecastday[index].day.avghumidity}',
          text2: 'Humidity',
        ),
        RowWeatherInfoItem(
          image: AssetsData.windSpeed,
          text1: '${weather.forecast.forecastday[index].day.maxwindKph}',
          text2: 'Wind Speed',
        ),
      ],
    );
  }
}
