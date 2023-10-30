import 'package:flutter/material.dart';
import '../../../../../core/utilis/styles.dart';

class WeatherInfoItem extends StatelessWidget {
  const WeatherInfoItem({
    super.key,
    required this.image,
    required this.text1,
    required this.text2,
  });

  final String image;
  final String text1;
  final String text2;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image(
          height: 40,
          image: AssetImage(
            image,
          ),
        ),
        Text(
          text1,
          style: Styles.textStyle17,
        ),
        Text(
          text2,
          style: Styles.textStyle16,
        ),
      ],
    );
  }
}
