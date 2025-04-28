import 'package:ecommerce_app/utils/constants/colors.dart';
import 'package:ecommerce_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

import '../../../utils/constants/image_strings.dart';

//Social media icpons Row

class IconsRow extends StatelessWidget {
  const IconsRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          decoration: BoxDecoration(
              border: Border.all(color: AppColors.grey),
              borderRadius: BorderRadius.circular(100)),
          child: IconButton(
              onPressed: () {},
              icon: const Image(
                  height: Sizes.iconMd,
                  image: AssetImage(ImageStrings.googleLogo))),
        ),
        const SizedBox(
          width: Sizes.spaceBtwItems,
        ),
        Container(
          decoration: BoxDecoration(
              border: Border.all(color: AppColors.grey),
              borderRadius: BorderRadius.circular(100)),
          child: IconButton(
              onPressed: () {},
              icon: const Image(
                  height: Sizes.iconMd,
                  image: AssetImage(ImageStrings.facebookLogo))),
        ),
      ],
    );
  }
}
