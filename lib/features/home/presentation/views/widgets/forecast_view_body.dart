import 'package:flutter/material.dart';
import 'package:waether_app/features/home/presentation/views/widgets/forecast_list_view.dart';

class ForecastViewBody extends StatelessWidget {
  const ForecastViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(20),
      child: ForecastListView(),
    );
  }
}
