import 'package:flutter/material.dart';
import 'home_app_bar.dart';
import 'today_weatjer.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          HomeAppBar(),
          SizedBox(
            height: 20,
          ),
          TodayWeather(),
        ],
      ),
    );
  }
}
