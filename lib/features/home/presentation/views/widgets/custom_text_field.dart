import 'package:flutter/material.dart';
import '../../../../../core/utilis/app_colors.dart';
import '../../../../../core/utilis/functions/out_line_input_border.dart';

class CustomTextField extends StatefulWidget {
  const CustomTextField({super.key});

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  String? cityName;

  @override
  Widget build(BuildContext context) {
    return TextField(
      onSubmitted: (value) {
        cityName = value;
      },
      cursorColor: Colors.white,
      decoration: InputDecoration(
        fillColor: AppColors.darkColor,
        filled: true,
        suffixIcon: IconButton(
          icon: const Icon(
            Icons.search,
            color: Colors.white,
          ),
          onPressed: () {},
        ),
        hintText: 'Search a City',
        enabledBorder: outLineInputBorder(),
        focusedBorder: outLineInputBorder(),
      ),
    );
  }
}
