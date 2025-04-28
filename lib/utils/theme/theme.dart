import 'package:ecommerce_app/utils/theme/custom_themes/appbar_theme.dart';
import 'package:ecommerce_app/utils/theme/custom_themes/bottom_sheet_theme.dart';
import 'package:ecommerce_app/utils/theme/custom_themes/checkbox_theme.dart';
import 'package:ecommerce_app/utils/theme/custom_themes/chip_theme.dart';
import 'package:ecommerce_app/utils/theme/custom_themes/elevated_button_theme.dart';
import 'package:ecommerce_app/utils/theme/custom_themes/outlined_button_theme.dart';
import 'package:ecommerce_app/utils/theme/custom_themes/text_field_theme.dart';
import 'package:ecommerce_app/utils/theme/custom_themes/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';

class AppTheme {
  AppTheme._();
  static ThemeData lightTheme = ThemeData(
      useMaterial3: T,
      fontFamily: 'Poppins',
      brightness: Brightness.light,
      primaryColor: Colors.blue,
      scaffoldBackgroundColor: Colors.white,
      textTheme: textTheme.lightTextTheme,
      elevatedButtonTheme: elevatedButtonTheme.lightElevatedButtonTheme,
      checkboxTheme: CheckBoxTheme.lightCheckboxTheme,
      appBarTheme: Appbartheme.lightAppBarTheme,
      inputDecorationTheme: TextFieldTheme.lightInputDecorationTheme,
      chipTheme: Chiptheme.lightChipTheme,
      outlinedButtonTheme: OutlinedButtontheme.lightOutlinedButtonTheme,
      bottomSheetTheme: BottomsheetTheme.lightBottomSheetTheme);
  static ThemeData darkTheme = ThemeData(
      useMaterial3: T,
      fontFamily: 'Poppins',
      brightness: Brightness.dark,
      primaryColor: Colors.blue,
      scaffoldBackgroundColor: Colors.black,
      textTheme: textTheme.darkTextTheme,
      elevatedButtonTheme: elevatedButtonTheme.darkElevatedButtonTheme,
      checkboxTheme: CheckBoxTheme.darkCheckboxTheme,
      appBarTheme: Appbartheme.darkAppBarTheme,
      inputDecorationTheme: TextFieldTheme.darkInputDecorationTheme,
      chipTheme: Chiptheme.darkChipTheme,
      outlinedButtonTheme: OutlinedButtontheme.darkOutlinedButtonTheme,
      bottomSheetTheme: BottomsheetTheme.darkBottomSheetTheme);
}
