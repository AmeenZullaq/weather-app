import 'package:flutter/material.dart';
import '../../../../../core/utilis/app_colors.dart';
import '../../../../../core/utilis/assets.dart';

class HourlyForecastListViewItem extends StatelessWidget {
  const HourlyForecastListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: AppColors.containerColor,
        borderRadius: BorderRadius.circular(16),
      ),
      child: const Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            '10 AM',
          ),
          SizedBox(
            height: 8,
          ),
          Image(
            height: 30,
            image: AssetImage(
              AssetsData.testImage,
            ),
          ),
          SizedBox(
            height: 8,
          ),
          Text(
            '23°',
          ),
        ],
      ),
    );
  }
}
