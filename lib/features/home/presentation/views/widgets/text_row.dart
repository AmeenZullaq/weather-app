import 'package:flutter/material.dart';
import '../../../../../core/utilis/styles.dart';

class TextRow extends StatelessWidget {
  const TextRow({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Today',
            style: Styles.textStyle17,
          ),
          Text(
            '7-Day-Forecasts',
            style: Styles.textStyle17,
          ),
        ],
      ),
    );
  }
}
