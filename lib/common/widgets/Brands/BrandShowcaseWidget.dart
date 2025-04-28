import 'package:flutter/material.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/constants/sizes.dart';
import '../../../utils/helpers/helper_functions.dart';
import '../CustomShapes/CustomRoundedContainer.dart';
import 'BrandCardWidget.dart';

class CustomBrandShowcaseContainer extends StatelessWidget {
  const CustomBrandShowcaseContainer({
    this.showBorder = false,
    required this.brandLogo,
    required this.brandName,
    required this.products,
    required this.images,
    super.key,
  });

  final List<String> images;
  final String brandName;
  final int products;
  final bool showBorder;
  final String brandLogo;

  @override
  Widget build(BuildContext context) {
    final dark = helperFunctions.isDarkMode(context);
    return CustomRoundedContainer(
      padding: EdgeInsets.all(Sizes.md),
      showBorder: true,
      borderColor: AppColors.darkgrey,
      backgroundColor: Colors.transparent,
      margin: const EdgeInsets.only(bottom: Sizes.spaceBtwItems),
      child: Column(
        children: [
          BrandNameCard(
              showBorder: showBorder,
              brandName: "Heskol",
              products: products,
              logo: brandLogo),
          SizedBox(
            height: Sizes.spaceBtwItems,
          ),
          Row(
              children: images
                  .map((image) => brandTopProductImageWidget(image, context))
                  .toList())
        ],
      ),
    );
  }

  Widget brandTopProductImageWidget(String image, context) {
    return Expanded(
      child: CustomRoundedContainer(
        height: 100,
        backgroundColor: helperFunctions.isDarkMode(context)
            ? AppColors.darkergrey
            : AppColors.light,
        padding: EdgeInsets.all(Sizes.md),
        margin: const EdgeInsets.only(right: Sizes.sm),
        child: Image(fit: BoxFit.contain, image: AssetImage(image)),
      ),
    );
  }
}
