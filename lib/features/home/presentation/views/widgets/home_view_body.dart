import 'package:flutter/material.dart';
import 'home_app_bar.dart';
import 'hourly_forecast_list_view.dart';
import 'text_row.dart';
import 'today_weather.dart';
import 'weather_more_info.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key, required this.cityName});
  final String cityName;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: HomeAppBar(cityName: cityName),
            ),
            const SizedBox(
              height: 20,
            ),
            const TodayWeather(),
            const SizedBox(
              height: 20,
            ),
            const WeatherMoreInfo(),
            TextRow(cityName: cityName),
            const Padding(
              padding: EdgeInsets.only(left: 20),
              child: HourlyForecastListView(),
            ),
          ],
        ),
      ),
    );
  }
}
