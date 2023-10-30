import 'package:flutter/material.dart';
import '../../../../../core/utilis/styles.dart';

class OtherCitiesText extends StatelessWidget {
  const OtherCitiesText({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(20),
      child: Align(
        alignment: Alignment.centerLeft,
        child: Text(
          'Other Cities',
          style: Styles.textStyle17,
        ),
      ),
    );
  }
}
