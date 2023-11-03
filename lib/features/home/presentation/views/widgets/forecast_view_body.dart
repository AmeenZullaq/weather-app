import 'package:flutter/material.dart';
import 'package:waether_app/features/home/presentation/views/widgets/tomorrow_weather.dart';
import 'forecast_list_view.dart';

class ForecastViewBody extends StatelessWidget {
  const ForecastViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20),
      child: Column(
        children: [
          TomorrowWeather(),
          SizedBox(height: 20),
          ForecastListView(),
        ],
      ),
    );
  }
}
