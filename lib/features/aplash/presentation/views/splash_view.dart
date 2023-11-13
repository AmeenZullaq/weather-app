import 'package:flutter/material.dart';
import 'package:waether_app/core/utilis/app_colors.dart';
import '../../../home/presentation/views/widgets/splash_view_body.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: AppColors.lightColor,
      body: SplashViewBody(),
    );
  }
}
