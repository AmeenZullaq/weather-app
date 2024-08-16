import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:waether_app/core/utilis/app_colors.dart';
import 'package:waether_app/core/utilis/styles.dart';

class ForecastViewAppBar extends StatelessWidget {
  const ForecastViewAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      forceMaterialTransparency: true,
      backgroundColor: AppColors.darkColor,
      elevation: 0,
      leading: IconButton(
        onPressed: () {
          GoRouter.of(context).pop();
        },
        icon: Icon(
          size: 24.sp,
          Icons.arrow_back_ios_new,
        ),
      ),
      title: Text(
        '3 Days',
        style: Styles.textStyle22.copyWith(
          color: Colors.white,
        ),
      ),
      centerTitle: true,
    );
  }
}
