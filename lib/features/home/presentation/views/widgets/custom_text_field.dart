import 'package:flutter/material.dart';
import '../../../../../core/utilis/app_colors.dart';
import '../../../../../core/utilis/functions/out_line_input_border.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: Colors.white,
      decoration: InputDecoration(
        fillColor: AppColors.darkColor,
        filled: true,
        prefixIcon: const Icon(
          Icons.search,
          color: Colors.white,
        ),
        hintText: 'Search a City',
        enabledBorder: outLineInputBorder(),
        focusedBorder: outLineInputBorder(),
      ),
    );
  }
}
