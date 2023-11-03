import 'package:flutter/material.dart';
import 'forecast_list_view_item.dart';

class ForecastListView extends StatelessWidget {
  const ForecastListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: 5,
      separatorBuilder: (context, index) => const SizedBox(height: 30),
      itemBuilder: (context, index) {
        return const ForecastListViewItem();
      },
    );
  }
}
