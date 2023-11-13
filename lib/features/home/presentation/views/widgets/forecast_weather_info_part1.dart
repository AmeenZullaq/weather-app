import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import '../../../../../core/utilis/styles.dart';
import '../../../data/models/weather_model/weather_model/weather_model.dart';

class ForecastWeatherInfoPart1 extends StatelessWidget {
  const ForecastWeatherInfoPart1({
    super.key,
    required this.weather,
    required this.index,
  });
  final WeatherModel weather;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CachedNetworkImage(
          height: 100,
          fit: BoxFit.cover,
          imageUrl: 'https:${weather.forecast.forecastday[index].day.condition.icon}',
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              weather.forecast.forecastday[index].date,
              style: Styles.textStyle18,
            ),
            const SizedBox(
              height: 15,
            ),
            Stack(
              children: [
                Text(
                  '${weather.forecast.forecastday[index].day.maxtempC.floor()}°',
                  style: Styles.textStyle50,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 35, left: 60),
                  child: Text(
                    '/ ${weather.forecast.forecastday[index].day.mintempC.floor()}°',
                    style: Styles.textStyle30,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            Text(
              weather.forecast.forecastday[index].day.condition.text,
              style: Styles.textStyle18,
            ),
          ],
        ),
      ],
    );
  }
}
