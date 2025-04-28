import 'package:flutter/material.dart';

class AppColors {
  AppColors._();

  //Basic
  static const Color primaryColor = Color(0xff4868ff);
  static const Color secondaryColor = Color(0xffffE24b);
  static const Color accentColor = Color(0xffb0c7ff);

  //text
  static const Color textPrimary = Color(0xff333333);
  static const Color textSecondary = Color(0xff6C757D);
  static const Color textWhite = Colors.white;

  //BG
  static const Color light = Color(0xfff6f6f6);
  static const Color dark = Color(0xff272727);
  static const Color primaryBackground = Color(0xfff3f5ff);

  //BG Containers
  static const Color lightContainer = Color(0xfff6f6f6);
  static Color darkContainer = Colors.white.withOpacity(0.1);

  //Buttons
  static const Color buttonPrimary = Color(0xff4b68ff);
  static const Color buttonSecondary = Color(0xff6C757D);
  static const Color buttonDisabled = Color(0xffC4C4C4);

  //Borders
  static const Color borderPrimary = Color(0xffd9d9d9);
  static const Color borderSecondary = Color(0xffE6E6E6);

  // Warning
  static const Color error = Color(0xffd32f2f);
  static const Color success = Color(0xff388e3c);
  static const Color warning = Color(0xfff57c00);
  static const Color info = Color(0xff1976D2);

  //Neutrals
  static const Color black = Color(0xff232323);
  static const Color darkergrey = Color.fromARGB(255, 78, 78, 78);
  static const Color darkgrey = Color(0xff939393);
  static const Color grey = Color(0xffe0e0e0);
  static const Color softgrey = Color(0xfff4f4f4);
  static const Color lightgrey = Color(0xfff9f9f9);
  static const Color white = Color(0xffffffff);
}
