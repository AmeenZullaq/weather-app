import 'package:flutter/material.dart';
import '../../../../../core/utilis/assets.dart';
import '../../../../../core/utilis/styles.dart';

class TodayWeather extends StatelessWidget {
  const TodayWeather({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          'Damascus',
          style: Styles.textStyle30,
        ),
        SizedBox(height: 10),
        Text(
          'Mostly Sunny',
        ),
        Stack(
          children: [
            Text(
              '23°',
              style: Styles.textStyle150,
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 70,
                top: 70,
                bottom: 15,
              ),
              child: Opacity(
                opacity: 0.8,
                child: Image(
                  height: 130,
                  image: AssetImage(
                    AssetsData.testImage,
                  ),
                ),
              ),
            ),
          ],
        ),
        Text(
          'Saturday 10 february | 10 AM',
        ),
      ],
    );
  }
}
