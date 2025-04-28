import 'package:ecommerce_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

import '../../../../../common/widgets/Text/BrandTitleTextwithVerifiedIcon.dart';
import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/enums.dart';
import '../../../../../utils/constants/image_strings.dart';
import '../../../../../utils/constants/sizes.dart';

class BrandNameWithLogo extends StatelessWidget {
  const BrandNameWithLogo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = helperFunctions.isDarkMode(context);
    return Row(
      children: [
        Container(
          height: 35,
          width: 35,
          padding: EdgeInsets.all(Sizes.sm),
          decoration: BoxDecoration(
              color: (dark ? AppColors.dark : AppColors.white),
              borderRadius: BorderRadius.circular(100)),
          child: Image(
            image: AssetImage(ImageStrings.shoeIcon),
            fit: BoxFit.fill,
            color: dark ? AppColors.light : AppColors.dark,
          ),
        ),
        SizedBox(
          width: Sizes.spaceBtwItems / 3,
        ),
        BrandTitleText_verifiedIcon(
          text: "Nike",
          brandTextsize: TextSizes.medium,
        ),
      ],
    );
  }
}
