import 'package:ecommerce_app/utils/constants/colors.dart';
import 'package:flutter/material.dart';

class Chiptheme {
  Chiptheme._();

  static ChipThemeData lightChipTheme = ChipThemeData(
      disabledColor: Colors.grey.withOpacity(0.4),
      labelStyle: const TextStyle(color: AppColors.black),
      selectedColor: AppColors.primaryColor,
      padding: EdgeInsets.symmetric(horizontal: 12, vertical: 12),
      checkmarkColor: Colors.white);

  static ChipThemeData darkChipTheme = ChipThemeData(
      disabledColor: Colors.grey.withOpacity(0.4),
      labelStyle: const TextStyle(color: AppColors.white),
      selectedColor: AppColors.primaryColor,
      padding: EdgeInsets.symmetric(horizontal: 12, vertical: 12),
      checkmarkColor: Colors.white);
}
