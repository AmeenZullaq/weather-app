import 'package:flutter/material.dart';
import 'custom_text_field.dart';
import 'hourly_forecast_list_view.dart';
import 'text_row.dart';
import 'today_weather.dart';
import 'weather_more_info.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: CustomTextField(),
            ),
            SizedBox(height: 20),
            TodayWeather(),
            SizedBox(height: 30),
            WeatherMoreInfo(),
            TextRow(),
            Padding(
              padding: EdgeInsets.only(left: 20),
              child: HourlyForecastListView(),
            ),
          ],
        ),
      ),
    );
  }
}
