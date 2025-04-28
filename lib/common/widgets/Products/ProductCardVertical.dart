import 'package:ecommerce_app/common/styles/Shadows.dart';
import 'package:ecommerce_app/common/widgets/CustomShapes/CustomRoundedContainer.dart';
import 'package:ecommerce_app/common/widgets/Images/CustomRoundedImage.dart';
import 'package:ecommerce_app/features/shop/screens/ProductDetails/ProductDetailsScreen.dart';
import 'package:ecommerce_app/utils/constants/colors.dart';
import 'package:ecommerce_app/utils/constants/enums.dart';
import 'package:ecommerce_app/utils/constants/image_strings.dart';
import 'package:ecommerce_app/utils/constants/sizes.dart';
import 'package:ecommerce_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';
import 'package:iconsax/iconsax.dart';

import '../Icons/CustomCircularIcon.dart';
import '../Text/BrandTitleTextwithVerifiedIcon.dart';
import '../Text/ProductPriceText.dart';
import '../Text/ProductTitle.dart';

class ProductCardVertical extends StatelessWidget {
  const ProductCardVertical({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = helperFunctions.isDarkMode(context);
    return GestureDetector(
      onTap: () {
        Get.to(() => ProductDetailScreen());
      },
      child: Container(
        width: 180,
        padding: const EdgeInsets.all(1),
        decoration: BoxDecoration(
            boxShadow: [CustomShadows.verticalCardShadow],
            borderRadius: BorderRadius.circular(Sizes.productImageRadius),
            color: dark ? AppColors.darkergrey : AppColors.white),
        child: Column(
          children: [
            //Thumbnail
            CustomRoundedContainer(
              backgroundColor: dark ? AppColors.dark : AppColors.light,
              height: 160,
              padding: const EdgeInsets.all(Sizes.sm),
              child: Stack(
                children: [
                  const CustomRoundedImage(
                    image: ImageStrings.product1,
                  ),
                  Positioned(
                    top: 6,
                    child: CustomRoundedContainer(
                      padding: const EdgeInsets.symmetric(
                          horizontal: Sizes.sm, vertical: Sizes.xs),
                      borderRadius: Sizes.sm,
                      backgroundColor:
                          AppColors.secondaryColor.withOpacity(0.8),
                      child: Text(
                        "25%",
                        style: Theme.of(context)
                            .textTheme
                            .labelLarge!
                            .apply(color: AppColors.black),
                      ),
                    ),
                  ),
                  const Positioned(
                      top: 0,
                      right: 0,
                      child: CustomCircularIcon(
                        icon: Iconsax.heart5,
                        color: Colors.red,
                      )),
                ],
              ),
            ),

            SizedBox(
              height: Sizes.spaceBtwItems / 2,
            ),

            //Description

            Padding(
              padding: const EdgeInsets.only(left: Sizes.sm, right: Sizes.sm),
              child: SizedBox(
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ProductTitleText(
                      title: "Aqua Nike Air Shoes hahbvskvygfoyagfyagfeygaupga",
                      smallSize: F,
                    ),
                    SizedBox(
                      height: Sizes.spaceBtwItems / 2,
                    ),
                    BrandTitleText_verifiedIcon(
                      text: "Nike",
                      brandTextsize: TextSizes.small,
                    ),
                  ],
                ),
              ),
            ),
            Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: Sizes.md),
                  child: ProductPriceText(
                    price: "42.45",
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                      color: AppColors.dark,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(Sizes.cardRadiusMd),
                        bottomRight: Radius.circular(Sizes.productImageRadius),
                      )),
                  child: SizedBox(
                    width: Sizes.iconLg * 1.2,
                    height: Sizes.iconLg * 1.2,
                    child: Center(
                      child: Icon(
                        Iconsax.add,
                        color: AppColors.white,
                      ),
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
