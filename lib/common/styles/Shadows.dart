import 'package:flutter/material.dart';

import '../../utils/constants/colors.dart';

class CustomShadows {
  static final verticalCardShadow = BoxShadow(
      color: AppColors.darkgrey.withOpacity(0.1),
      blurRadius: 50,
      spreadRadius: 7,
      offset: const Offset(0, 2));

  static final horizontaalCardShadow = BoxShadow(
      color: AppColors.darkgrey.withOpacity(0.1),
      blurRadius: 50,
      spreadRadius: 7,
      offset: const Offset(0, 2));
}
