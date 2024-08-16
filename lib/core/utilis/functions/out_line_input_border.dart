import 'package:flutter/material.dart';
import 'package:waether_app/core/utilis/app_colors.dart';

OutlineInputBorder outLineInputBorder() {
  return OutlineInputBorder(
    borderRadius: BorderRadius.circular(16),
    borderSide: const BorderSide(
      color: AppColors.darkColor,
      width: 3,
    ),
  );
}
