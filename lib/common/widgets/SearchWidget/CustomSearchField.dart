import 'package:ecommerce_app/utils/device/device_utility.dart';
import 'package:ecommerce_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/constants/sizes.dart';

class CustomSearchField extends StatelessWidget {
  const CustomSearchField({
    required this.text,
    this.icon = Iconsax.search_normal,
    this.showBorder = true,
    this.showBackground = true,
    this.padding = const EdgeInsets.symmetric(horizontal: Sizes.defaultSpace),
    this.onTap,
    super.key,
  });

  final String text;
  final IconData? icon;
  final VoidCallback? onTap;
  final bool showBackground, showBorder;
  final EdgeInsetsGeometry padding;

  @override
  Widget build(BuildContext context) {
    final dark = helperFunctions.isDarkMode(context);
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: padding,
        child: Container(
          width: Get.width,
          padding: EdgeInsets.all(Sizes.md),
          decoration: BoxDecoration(
              color: showBackground
                  ? dark
                      ? AppColors.dark
                      : AppColors.light
                  : Colors.transparent,
              borderRadius: BorderRadius.circular(Sizes.cardRadiusLg),
              border: showBorder
                  ? Border.all(color: dark ? AppColors.dark : AppColors.grey)
                  : null),
          child: Row(
            children: [
              Icon(
                Iconsax.search_normal,
                color: AppColors.darkgrey,
              ),
              SizedBox(
                width: Sizes.spaceBtwItems,
              ),
              Text(
                text,
                style: Theme.of(context).textTheme.bodySmall,
              )
            ],
          ),
        ),
      ),
    );
  }
}
