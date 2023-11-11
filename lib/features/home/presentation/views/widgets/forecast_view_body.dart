import 'package:flutter/material.dart';
import 'forecast_list_view.dart';
import 'tomorrow_weather.dart';

class ForecastViewBody extends StatelessWidget {
  const ForecastViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            TomorrowWeather(),
            SizedBox(height: 20),
            ForecastListView(),
          ],
        ),
      ),
    );
  }
}
