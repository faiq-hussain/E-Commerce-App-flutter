import 'package:ecommerce_app/features/authentication/controllers/OnBoardingController.dart';
import 'package:ecommerce_app/utils/constants/colors.dart';
import 'package:ecommerce_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class DottedPageChanger extends StatelessWidget {
  const DottedPageChanger({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = helperFunctions.isDarkMode(context);
    return SmoothPageIndicator(
      effect: ExpandingDotsEffect(
          activeDotColor: dark ? AppColors.light : AppColors.dark,
          dotHeight: 6),
      controller: OnBoardingController.instance.pageController,
      count: 3,
    );
  }
}
