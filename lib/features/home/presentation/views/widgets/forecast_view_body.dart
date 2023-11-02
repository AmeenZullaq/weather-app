import 'package:flutter/material.dart';
import 'package:waether_app/features/home/presentation/views/widgets/tomorrow_weather.dart';

class ForecastViewBody extends StatelessWidget {
  const ForecastViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            TomorrowWeather(),
          ],
        ),
      ),
    );
  }
}
