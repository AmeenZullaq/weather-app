import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:waether_app/core/utilis/assets.dart';
import '../../../../../core/utilis/app_colors.dart';
import '../../../../../core/utilis/styles.dart';
import '../../../data/models/weather_model/weather_model/weather_model.dart';
import 'row_weather_info_item.dart';

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
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CachedNetworkImage(
                height: 100,
                fit: BoxFit.cover,
                imageUrl: 'https:${weather.current.condition.icon}',
              ),
              Column(
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
          ),
          const SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              RowWeatherInfoItem(
                image: AssetsData.umbrella,
                text1:
                    '${weather.forecast.forecastday[index].day.totalprecipMm}',
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
          ),
        ],
      ),
    );
  }
}
