import 'package:flutter/material.dart';
import '../../../../../core/utilis/assets.dart';
import 'custom_text_field.dart';

class SplashViewBody extends StatelessWidget {
  const SplashViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
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
    );
  }
}
