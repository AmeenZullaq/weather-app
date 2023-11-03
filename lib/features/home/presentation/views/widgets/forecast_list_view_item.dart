import 'package:flutter/material.dart';
import '../../../../../core/utilis/assets.dart';
import '../../../../../core/utilis/styles.dart';

class ForecastListViewItem extends StatelessWidget {
  const ForecastListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Monday',
        ),
        Row(
          children: [
            Image(
              image: AssetImage(
                AssetsData.testImage,
              ),
              height: 40,
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              'Windy',
              style: Styles.textStyle14,
            ),
          ],
        ),
        Row(
          children: [
            Text(
              '+22°',
            ),
            SizedBox(
              width: 20,
            ),
            Text(
              '+16°',
            ),
          ],
        ),
      ],
    );
  }
}
