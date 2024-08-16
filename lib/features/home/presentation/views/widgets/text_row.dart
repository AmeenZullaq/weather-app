import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:waether_app/core/utilis/app_router.dart';
import 'package:waether_app/features/home/presentation/manager/current_weather_cubit/weather_cubit.dart';
import '../../../../../core/utilis/styles.dart';

class TextRow extends StatefulWidget {
  const TextRow({super.key});

  @override
  State<TextRow> createState() => _TextRowState();
}

class _TextRowState extends State<TextRow> {
  bool flag = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20.r),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Today',
            style: Styles.textStyle17.copyWith(
              color: flag ? Colors.white : Colors.yellow,
            ),
          ),
          GestureDetector(
            onTap: () {
              flag = !flag;
              BlocProvider.of<WeatherCubit>(context).fetchWeatherInfo(
                daysNumber: 3,
              );
              GoRouter.of(context).push(AppRouter.forecastView);
            },
            child: Text(
              '3-Day-Forecasts',
              style: Styles.textStyle17.copyWith(
                color: flag ? Colors.yellow : Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
