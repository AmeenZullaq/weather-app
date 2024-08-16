import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import '../../../../../core/widgets/custom_button.dart';
import '../../manager/current_weather_cubit/weather_cubit.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CustomButton(
          icon: Icons.arrow_back_ios_new,
          onTap: () {
            GoRouter.of(context).pop();
          },
        ),
        CustomButton(
          icon: Icons.refresh,
          onTap: () {
            BlocProvider.of<WeatherCubit>(context).fetchWeatherInfo(
              daysNumber: 0,
            );
          },
        ),
      ],
    );
  }
}
