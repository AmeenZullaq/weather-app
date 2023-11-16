import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';
import '../utilis/app_colors.dart';

class ForecastShimmerView extends StatelessWidget {
  const ForecastShimmerView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: 3,
      separatorBuilder: (context, index) => const SizedBox(height: 20),
      itemBuilder: (context, index) {
        return Shimmer(
          gradient: const LinearGradient(
            colors: [
              AppColors.lightColor,
              AppColors.darkColor,
            ],
          ),
          child: Container(
            height: 300,
            padding: const EdgeInsets.all(15),
            decoration: BoxDecoration(
              color: AppColors.lightColor,
              borderRadius: BorderRadius.circular(16),
            ),
          ),
        );
      },
    );
  }
}
