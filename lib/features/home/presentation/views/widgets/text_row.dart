import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:waether_app/core/utilis/app_router.dart';
import '../../../../../core/utilis/styles.dart';

class TextRow extends StatelessWidget {
  const TextRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Today',
            style: Styles.textStyle17.copyWith(color: Colors.yellow),
          ),
          GestureDetector(
            onTap: () {
              GoRouter.of(context).push(AppRouter.forecastView);
            },
            child: const Text(
              '7-Day-Forecasts',
              style: Styles.textStyle17,
            ),
          ),
        ],
      ),
    );
  }
}
