import 'package:flutter/material.dart';
import 'package:waether_app/core/utilis/styles.dart';
import '../../../../../core/utilis/app_colors.dart';
import '../../../../../core/utilis/assets.dart';

class HourlyForecastListViewItem extends StatelessWidget {
  const HourlyForecastListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
      decoration: BoxDecoration(
        color: AppColors.darkColor,
        borderRadius: BorderRadius.circular(24),
      ),
      child: const Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            '10 AM',
            style: Styles.textStyle17,
          ),
          SizedBox(
            height: 8,
          ),
          Image(
            height: 35,
            image: AssetImage(
              AssetsData.testImage,
            ),
          ),
          SizedBox(
            height: 8,
          ),
          Text(
            '23°',
            style: Styles.textStyle16,
          ),
        ],
      ),
    );
  }
}
