import 'package:flutter/material.dart';
import '../../../../../core/utilis/styles.dart';
import '../../../../../core/widgets/custom_button.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 22),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CustomButton(icon: Icons.menu),
          Text(
            'Sydeny',
            style: Styles.textStyle17,
          ),
          CustomButton(icon: Icons.refresh),
        ],
      ),
    );
  }
}
