import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:waether_app/core/utilis/app_colors.dart';
import 'package:waether_app/features/home/presentation/views/widgets/forecast_view_app_bar.dart';
import 'widgets/forecast_view_body.dart';

class ForecastView extends StatelessWidget {
  const ForecastView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.darkColor,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(40.h),
        child: const ForecastViewAppBar(),
      ),
      body: const ForecastViewBody(),
    );
  }
}
