import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:waether_app/core/utilis/app_colors.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.icon,
    required this.onTap,
  });
  final IconData icon;
  final Function() onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 50.h,
        width: 50.w,
        decoration: BoxDecoration(
          color: AppColors.darkColor,
          borderRadius: BorderRadius.circular(12.r),
        ),
        child: Icon(
          icon,
          color: Colors.white,
          size: 24.sp,
        ),
      ),
    );
  }
}
