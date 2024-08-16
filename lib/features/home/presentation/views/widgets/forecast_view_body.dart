import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:waether_app/features/home/presentation/views/widgets/forecast_list_view.dart';

class ForecastViewBody extends StatelessWidget {
  const ForecastViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20.r),
      child: const ForecastListView(),
    );
  }
}
