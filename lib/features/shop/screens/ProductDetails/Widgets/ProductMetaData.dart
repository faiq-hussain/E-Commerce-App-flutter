import 'package:ecommerce_app/common/widgets/Images/CustomCircularImage.dart';
import 'package:ecommerce_app/common/widgets/Text/BrandTitleTextwithVerifiedIcon.dart';
import 'package:ecommerce_app/common/widgets/Text/ProductPriceText.dart';
import 'package:ecommerce_app/common/widgets/Text/ProductTitle.dart';
import 'package:ecommerce_app/features/shop/screens/ProductDetails/Widgets/BrandNameWithLogo.dart';
import 'package:ecommerce_app/utils/constants/enums.dart';
import 'package:ecommerce_app/utils/constants/image_strings.dart';
import 'package:ecommerce_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';

import '../../../../../common/widgets/CustomShapes/CustomRoundedContainer.dart';
import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/sizes.dart';

class ProductMetaData extends StatelessWidget {
  const ProductMetaData({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = helperFunctions.isDarkMode(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        //Price and Sale Price
        Row(
          children: [
            //Sale tag
            CustomRoundedContainer(
              padding: const EdgeInsets.symmetric(
                  horizontal: Sizes.sm, vertical: Sizes.xs),
              borderRadius: Sizes.sm,
              backgroundColor: AppColors.secondaryColor.withOpacity(0.8),
              child: Text(
                "25%",
                style: Theme.of(context)
                    .textTheme
                    .labelLarge!
                    .apply(color: AppColors.black),
              ),
            ),
            SizedBox(
              width: Sizes.spaceBtwItems,
            ),
            //Price
            Text(
              "\$56.53",
              style: Theme.of(context)
                  .textTheme
                  .titleSmall!
                  .apply(decoration: TextDecoration.lineThrough),
            ),
            SizedBox(
              width: Sizes.spaceBtwItems,
            ),
            ProductPriceText(
              price: "42.4",
              isLarge: T,
            )
          ],
        ),
        SizedBox(
          height: Sizes.spaceBtwItems / 1.5,
        ),
        // Title
        ProductTitleText(title: "Aqua Nike Air Shoes"),
        SizedBox(
          height: Sizes.spaceBtwItems / 1.5,
        ),
        // Stock Status
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ProductTitleText(title: "Status:"),
            SizedBox(
              width: Sizes.spaceBtwItems / 2,
            ),
            Text("In Stock",
                style: Theme.of(context)
                    .textTheme
                    .titleMedium!
                    .apply(fontWeightDelta: 1)),
          ],
        ),
        SizedBox(
          height: Sizes.spaceBtwItems / 1.5,
        ),
        //Brand
        BrandNameWithLogo()
      ],
    );
  }
}
