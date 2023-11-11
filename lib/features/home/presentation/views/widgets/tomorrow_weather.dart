import 'package:flutter/material.dart';
import 'package:waether_app/features/home/presentation/views/widgets/row_weather_info.dart';
import '../../../../../core/utilis/app_colors.dart';
import '../../../../../core/utilis/assets.dart';
import '../../../../../core/utilis/styles.dart';

class TomorrowWeather extends StatelessWidget {
  const TomorrowWeather({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: AppColors.lightColor,
        borderRadius: BorderRadius.circular(16),
      ),
      child: const Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image(
                height: 70,
                image: AssetImage(
                  AssetsData.testImage,
                ),
              ),
              Column(
                children: [
                  Text(
                    'Tomorrow',
                    style: Styles.textStyle18,
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    '19°',
                    style: Styles.textStyle50,
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    'Mostly Cloudy',
                    style: Styles.textStyle18,
                  ),
                ],
              ),
            ],
          ),
          SizedBox(
            height: 30,
          ),
        //  RowWeatherInfo(),
        ],
      ),
    );
  }
}
