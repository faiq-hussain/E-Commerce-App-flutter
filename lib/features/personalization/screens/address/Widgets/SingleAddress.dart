import 'package:ecommerce_app/common/widgets/CustomShapes/CustomRoundedContainer.dart';
import 'package:ecommerce_app/utils/constants/colors.dart';
import 'package:ecommerce_app/utils/constants/sizes.dart';
import 'package:ecommerce_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class CustomSingleAddress extends StatelessWidget {
  const CustomSingleAddress({super.key, required this.selectedAddress});

  final bool selectedAddress;

  @override
  Widget build(BuildContext context) {
    final dark = helperFunctions.isDarkMode(context);
    return CustomRoundedContainer(
      padding: EdgeInsets.all(Sizes.md),
      width: Get.width,
      borderColor: selectedAddress
          ? Colors.transparent
          : dark
              ? AppColors.darkergrey
              : AppColors.grey,
      showBorder: true,
      backgroundColor: selectedAddress
          ? AppColors.primaryColor.withOpacity(0.5)
          : Colors.transparent,
      margin: EdgeInsets.only(bottom: Sizes.spaceBtwItems),
      child: Stack(
        children: [
          Positioned(
            right: 5,
            top: 0,
            child: Icon(
              selectedAddress ? Iconsax.tick_circle5 : null,
              color: selectedAddress
                  ? dark
                      ? AppColors.light.withOpacity(0.5)
                      : AppColors.dark.withOpacity(0.5)
                  : null,
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Faiq Hussain",
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: Theme.of(context).textTheme.titleLarge,
              ),
              SizedBox(
                height: Sizes.sm / 2,
              ),
              Text(
                "+92-123-4567890",
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                // style: Theme.of(context).textTheme.titleLarge,
              ),
              SizedBox(
                height: Sizes.sm / 2,
              ),
              Text(
                "53/12 Jimmy Street, South Mariana, Premier, 784, Houston, Texas",
                softWrap: true,
              )
            ],
          )
        ],
      ),
    );
  }
}
