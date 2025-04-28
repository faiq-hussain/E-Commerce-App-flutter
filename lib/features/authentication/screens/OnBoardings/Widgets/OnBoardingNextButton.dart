import 'package:ecommerce_app/features/authentication/controllers/OnBoardingController.dart';
import 'package:ecommerce_app/utils/constants/colors.dart';
import 'package:ecommerce_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class OnBoardingNextButton extends StatelessWidget {
  const OnBoardingNextButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = OnBoardingController.instance;
    final dark = helperFunctions.isDarkMode(context);
    return Stack(
      alignment: Alignment.center,
      children: [
        SizedBox(
          height: 50,
          width: 50,
          child: Obx(
            () => CircularProgressIndicator(
              strokeWidth: 3,
              value: controller.percentage.value,
              backgroundColor: const Color(0xffF0EFFB),
              valueColor: AlwaysStoppedAnimation<Color>(
                  dark ? AppColors.white : AppColors.black),
            ),
          ),
        ),
        CircleAvatar(
          radius: 20,
          backgroundColor: dark ? AppColors.white : AppColors.black,
          child: Icon(
            color: dark ? AppColors.black : AppColors.white,
            Iconsax.arrow_right_3,
            size: 22,
          ),
        )
      ],
    );
  }
}
