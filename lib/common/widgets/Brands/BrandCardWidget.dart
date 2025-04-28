import 'package:flutter/material.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/constants/enums.dart';
import '../../../utils/constants/sizes.dart';
import '../../../utils/helpers/helper_functions.dart';
import '../CustomShapes/CustomRoundedContainer.dart';
import '../Images/CustomCircularImage.dart';
import '../Text/BrandTitleTextwithVerifiedIcon.dart';

class BrandNameCard extends StatelessWidget {
  const BrandNameCard({
    super.key,
    this.showBorder = true,
    required this.brandName,
    required this.products,
    required this.logo,
  });

  final String brandName, logo;
  final int products;
  final bool showBorder;

  @override
  Widget build(BuildContext context) {
    final dark = helperFunctions.isDarkMode(context);
    return GestureDetector(
      onTap: () {},
      child: CustomRoundedContainer(
        padding: const EdgeInsets.all(Sizes.xs),
        showBorder: showBorder,
        backgroundColor: Colors.transparent,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            //brand logo
            Flexible(
              child: CustomCircularImage(
                image: logo,
                overlayColor: dark ? AppColors.white : AppColors.black,
              ),
            ),
            const SizedBox(
              width: Sizes.spaceBtwItems / 2,
            ),

            //Brand name and number of products

            Flexible(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  BrandTitleText_verifiedIcon(
                    text: brandName,
                    brandTextsize: TextSizes.large,
                  ),
                  Text(
                    "$products+ " + "Products",
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(context).textTheme.labelMedium,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
