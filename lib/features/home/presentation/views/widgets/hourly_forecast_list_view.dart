import 'package:flutter/material.dart';
import 'hourly_forecast_list_view_item.dart';

class HourlyForecastListView extends StatelessWidget {
  const HourlyForecastListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        physics: const BouncingScrollPhysics(),
        itemCount: 10,
        separatorBuilder: (context, index) => const SizedBox(width: 10),
        itemBuilder: (context, index) {
          return const HourlyForecastListViewItem();
        },
      ),
    );
  }
}
