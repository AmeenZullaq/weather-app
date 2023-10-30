import 'package:flutter/material.dart';
import '../../../../../core/utilis/app_colors.dart';
import '../../../../../core/utilis/assets.dart';
import '../../../../../core/utilis/styles.dart';

class OtherCitiesListViewItem extends StatelessWidget {
  const OtherCitiesListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.containerColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: const SizedBox(
        width: 250,
        child: Expanded(
          child: ListTile(
            leading: Image(
              height: 35,
              image: AssetImage(
                AssetsData.testImage,
              ),
            ),
            title: Text(
              'New Zealand',
              style: Styles.textStyle17,
            ),
            subtitle: Text(
              'Snowy',
              style: Styles.textStyle16,
            ),
            trailing: Text(
              '9°',
              style: Styles.textStyle30,
            ),
          ),
        ),
      ),
    );
  }
}
