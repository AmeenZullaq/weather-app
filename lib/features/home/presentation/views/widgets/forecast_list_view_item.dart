import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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
      padding: EdgeInsets.all(15.r),
      decoration: BoxDecoration(
        color: AppColors.lightColor,
        borderRadius: BorderRadius.circular(16.r),
      ),
      child: Column(
        children: [
          ForecastWeatherInfoPart1(
            weather: weather,
            index: index,
          ),
          SizedBox(
            height: 30.h,
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
