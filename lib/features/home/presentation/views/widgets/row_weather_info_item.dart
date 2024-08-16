import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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
          height: 40.h,
          image: AssetImage(
            image,
          ),
        ),
        SizedBox(
          height: 5.h,
        ),
        Text(
          text1,
          style: Styles.textStyle17,
        ),
        SizedBox(
          height: 5.h,
        ),
        Text(
          text2,
          style: Styles.textStyle16,
        ),
      ],
    );
  }
}
