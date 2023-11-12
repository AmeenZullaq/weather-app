import 'package:flutter/material.dart';
import 'package:waether_app/core/utilis/app_colors.dart';
import 'package:waether_app/core/utilis/assets.dart';
import 'package:waether_app/features/home/presentation/views/widgets/custom_text_field.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.lightColor,
      body: Stack(
        children: [
          Image(
            height: MediaQuery.of(context).size.height,
            fit: BoxFit.cover,
            image: const AssetImage(
              AssetsData.splashImage,
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 40,
            ),
            child: CustomTextField(),
          ),
        ],
      ),
    );
  }
}
