import 'package:ecommerce_app/common/widgets/Icons/CustomCircularIcon.dart';
import 'package:ecommerce_app/utils/constants/colors.dart';
import 'package:ecommerce_app/utils/constants/sizes.dart';
import 'package:ecommerce_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class BottomAddToCart extends StatelessWidget {
  const BottomAddToCart({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = helperFunctions.isDarkMode(context);
    return Container(
      padding: EdgeInsets.symmetric(
          horizontal: Sizes.defaultSpace, vertical: Sizes.defaultSpace / 2),
      decoration: BoxDecoration(
          color: dark ? AppColors.darkergrey : AppColors.light,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(Sizes.cardRadiusLg),
              topRight: Radius.circular(Sizes.cardRadiusLg))),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              CustomCircularIcon(
                icon: Iconsax.minus,
                backgroundColor: AppColors.darkgrey,
                width: 40,
                height: 40,
                color: AppColors.white,
              ),
              SizedBox(
                width: Sizes.spaceBtwItems,
              ),
              Text(
                "2",
                style: Theme.of(context).textTheme.titleSmall,
              ),
              SizedBox(
                width: Sizes.spaceBtwItems,
              ),
              CustomCircularIcon(
                  icon: Iconsax.add,
                  backgroundColor: AppColors.black,
                  width: 40,
                  height: 40,
                  color: AppColors.white),
            ],
          ),
          ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.all(Sizes.md),
                  side: BorderSide(color: AppColors.black),
                  backgroundColor: AppColors.black),
              child: Text("Add to Cart"))
        ],
      ),
    );
  }
}
