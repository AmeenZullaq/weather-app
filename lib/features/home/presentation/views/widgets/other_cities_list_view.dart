import 'package:flutter/material.dart';
import 'other_cities_list_view_item.dart';

class OtherCitiesListView extends StatelessWidget {
  const OtherCitiesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 70,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        physics: const BouncingScrollPhysics(),
        itemCount: 10,
        separatorBuilder: (context, index) => const SizedBox(width: 10),
        itemBuilder: (context, index) {
          return const OtherCitiesListViewItem();
        },
      ),
    );
  }
}
