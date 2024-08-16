import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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
          height: 100.h,
          fit: BoxFit.cover,
          imageUrl:
              'https:${weather.forecast.forecastday[index].day.condition.icon}',
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              weather.forecast.forecastday[index].date,
              style: Styles.textStyle18,
            ),
            SizedBox(
              height: 15.h,
            ),
            Stack(
              children: [
                Text(
                  '${weather.forecast.forecastday[index].day.maxtempC.floor()}°',
                  style: Styles.textStyle50,
                ),
                Padding(
                  padding: EdgeInsets.only(top: 35.h, left: 60.w),
                  child: Text(
                    '/ ${weather.forecast.forecastday[index].day.mintempC.floor()}°',
                    style: Styles.textStyle30,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 15.h,
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
