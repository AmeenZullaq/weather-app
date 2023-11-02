import 'package:flutter/material.dart';
import 'package:waether_app/core/utilis/app_colors.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.icon});
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        height: 20,
        width: 20,
        decoration: BoxDecoration(
          color: AppColors.darkColor,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Icon(
          icon,
          color: Colors.white,
        ),
      ),
    );
  }
}
