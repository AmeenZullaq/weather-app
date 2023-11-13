import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:waether_app/core/utilis/app_colors.dart';

class ForecastViewAppBar extends StatelessWidget {
  const ForecastViewAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: AppColors.darkColor,
      elevation: 0,
      leading: IconButton(
        onPressed: () {
          GoRouter.of(context).pop();
        },
        icon: const Icon(
          Icons.arrow_back_ios_new,
        ),
      ),
      title: const Text('3 Days'),
      centerTitle: true,
    );
  }
}
