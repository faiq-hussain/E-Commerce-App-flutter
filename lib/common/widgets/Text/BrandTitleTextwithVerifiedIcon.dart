import 'package:ecommerce_app/common/widgets/Text/BrandTitleText.dart';
import 'package:ecommerce_app/utils/constants/enums.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/constants/sizes.dart';

class BrandTitleText_verifiedIcon extends StatelessWidget {
  const BrandTitleText_verifiedIcon({
    required this.text,
    this.overflow = TextOverflow.ellipsis,
    this.maxLines = 1,
    this.textColor,
    this.textAlign = TextAlign.left,
    this.brandTextsize = TextSizes.small,
    super.key,
  });

  final String text;
  final TextOverflow? overflow;
  final int maxLines;
  final Color? textColor;
  final TextAlign? textAlign;
  final TextSizes brandTextsize;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Flexible(
          child: BrandTitleText(
            text: text,
            overflow: overflow,
            maxLines: maxLines,
            brandTextsize: brandTextsize,
            textAlign: textAlign,
            textColor: textColor,
          ),
        ),
        SizedBox(
          width: Sizes.xs,
        ),
        Icon(
          Iconsax.verify5,
          color: AppColors.primaryColor,
          size: Sizes.iconXs,
        )
      ],
    );
  }
}
