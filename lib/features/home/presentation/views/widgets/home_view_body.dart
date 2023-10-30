import 'package:flutter/material.dart';
import 'home_app_bar.dart';
import 'hourly_forecast_list_view.dart';
import 'text_row.dart';
import 'today_weatjer.dart';
import 'weather_info.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          HomeAppBar(),
          SizedBox(height: 20),
          TodayWeather(),
          SizedBox(height: 30),
          WeatherInfo(),
          TextRow(),
          Padding(
            padding: EdgeInsets.only(left: 20),
            child: HourlyForecastListView(),
          ),
        ],
      ),
    );
  }
}
