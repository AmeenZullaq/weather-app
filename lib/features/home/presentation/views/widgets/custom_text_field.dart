import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:waether_app/core/utilis/app_router.dart';
import 'package:waether_app/core/utilis/styles.dart';
import 'package:waether_app/features/home/presentation/manager/current_weather_cubit/weather_cubit.dart';
import '../../../../../core/utilis/app_colors.dart';
import '../../../../../core/utilis/functions/out_line_input_border.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    this.focusNode,
    required this.controller,
  });

  final FocusNode? focusNode;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      focusNode: focusNode,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'field is required';
        }
        return null;
      },
      cursorColor: AppColors.lightColor,
      style: const TextStyle(color: AppColors.darkColor),
      decoration: InputDecoration(
        contentPadding: EdgeInsets.symmetric(
          vertical: 16.h,
          horizontal: 16.w,
        ),
        fillColor: Colors.white,
        filled: true,
        hintText: 'Search a City',
        hintStyle: Styles.textStyle14.copyWith(
          color: AppColors.darkColor,
        ),
        enabledBorder: outLineInputBorder(),
        focusedBorder: outLineInputBorder(),
        errorBorder: outLineInputBorder(),
        focusedErrorBorder: outLineInputBorder(),
        suffixIcon: IconButton(
          icon: Icon(
            Icons.search,
            color: AppColors.darkColor,
            size: 24.sp,
          ),
          onPressed: () {
            context.read<WeatherCubit>().fetchWeatherInfo(daysNumber: 0);
            GoRouter.of(context).push(
              AppRouter.homeView,
            );
          },
        ),
      ),
    );
  }
}
