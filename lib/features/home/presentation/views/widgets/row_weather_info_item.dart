import 'package:flutter/material.dart';
import '../../../../../core/utilis/styles.dart';

class RowWeatherInfoItem extends StatelessWidget {
  const RowWeatherInfoItem({
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
        const SizedBox(
          height: 5,
        ),
        Text(
          text1,
          style: Styles.textStyle17,
        ),
        const SizedBox(
          height: 5,
        ),
        Text(
          text2,
          style: Styles.textStyle16,
        ),
      ],
    );
  }
}
