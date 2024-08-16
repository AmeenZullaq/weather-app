import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:waether_app/core/widgets/custom_error_widget.dart';
import 'package:waether_app/core/widgets/custom_loading_indecator.dart';
import 'package:waether_app/features/home/data/models/weather_model/weather_model/weather_model.dart';
import 'package:waether_app/features/home/presentation/manager/current_weather_cubit/weather_cubit.dart';
import 'package:waether_app/features/home/presentation/views/widgets/row_weather_info.dart';
import '../../../../../core/utilis/app_colors.dart';

class WeatherMoreInfo extends StatelessWidget {
  const WeatherMoreInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<WeatherCubit, WeatherState>(
      builder: (context, state) {
        if (state is WeatherSuccess) {
          WeatherModel weather = state.weatherModel;
          return Container(
            padding: EdgeInsets.symmetric(vertical: 16.h),
            margin: EdgeInsets.symmetric(horizontal: 20.w),
            decoration: BoxDecoration(
              color: AppColors.darkColor,
              borderRadius: BorderRadius.circular(16.r),
            ),
            child: RowWeatherInfo(weather: weather),
          );
        } else if (state is WeatherFailure) {
          return CustomErrorWidget(errMessage: state.errMessage);
        } else {
          return const CustomLoadingIndecator();
        }
      },
    );
  }
}
