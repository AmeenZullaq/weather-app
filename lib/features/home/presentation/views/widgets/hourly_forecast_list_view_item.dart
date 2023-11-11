import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:waether_app/core/utilis/styles.dart';
import 'package:waether_app/features/home/data/models/weather_model/weather_model/hour.dart';
import '../../../../../core/utilis/app_colors.dart';

class HourlyForecastListViewItem extends StatelessWidget {
  const HourlyForecastListViewItem({
    super.key,
    required this.hourWeather,
    required this.index,
  });

  final Hour hourWeather;
  final int index;

  @override
  Widget build(BuildContext context) {
    DateTime time = DateTime.parse(hourWeather.time);
    int hour = time.hour;
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
      decoration: BoxDecoration(
        color: AppColors.darkColor,
        borderRadius: BorderRadius.circular(24),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            (index <= 11) ? '$hour AM' : '$hour PM',
            style: Styles.textStyle17,
          ),
          const SizedBox(
            height: 8,
          ),
          CachedNetworkImage(
            height: 50,
            fit: BoxFit.fill,
            imageUrl: 'https:${hourWeather.condition.icon}',
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            '${hourWeather.tempC.floor()}°',
            style: Styles.textStyle16,
          ),
        ],
      ),
    );
  }
}
