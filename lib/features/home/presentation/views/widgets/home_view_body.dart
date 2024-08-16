import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'home_app_bar.dart';
import 'hourly_forecast_list_view.dart';
import 'text_row.dart';
import 'today_weather.dart';
import 'weather_more_info.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 20.h,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: const HomeAppBar(),
          ),
          SizedBox(
            height: 20.h,
          ),
          const TodayWeather(),
          SizedBox(
            height: 20.h,
          ),
          const WeatherMoreInfo(),
          const TextRow(),
          Padding(
            padding: EdgeInsets.only(left: 20.w),
            child: const HourlyForecastListView(),
          ),
          SizedBox(
            height: 20.h,
          ),
        ],
      ),
    );
  }
}
