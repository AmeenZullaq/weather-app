import 'package:flutter/material.dart';
import 'package:waether_app/core/utilis/app_colors.dart';
import 'widgets/forecast_view_app_bar.dart';
import 'widgets/forecast_view_body.dart';

class ForecastView extends StatelessWidget {
  const ForecastView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: AppColors.darkColor,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(40),
        child: ForecastViewAppBar(),
      ),
      body: ForecastViewBody(),
    );
  }
}
