import 'package:ecommerce_app/utils/constants/enums.dart';
import 'package:flutter/material.dart';

class BrandTitleText extends StatelessWidget {
  const BrandTitleText({
    super.key,
    required this.text,
    this.overflow = TextOverflow.ellipsis,
    this.maxLines = 1,
    this.textColor,
    this.brandTextsize = TextSizes.small,
    this.textAlign = TextAlign.left,
  });

  final String text;
  final TextSizes brandTextsize;
  final TextOverflow? overflow;
  final int maxLines;
  final Color? textColor;
  final TextAlign? textAlign;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      overflow: overflow,
      maxLines: maxLines,
      style: brandTextsize == TextSizes.small
          ? Theme.of(context).textTheme.labelMedium!.apply(color: textColor)
          : brandTextsize == TextSizes.medium
              ? Theme.of(context).textTheme.bodyLarge!.apply(color: textColor)
              : brandTextsize == TextSizes.large
                  ? Theme.of(context)
                      .textTheme
                      .titleLarge!
                      .apply(color: textColor)
                  : Theme.of(context)
                      .textTheme
                      .bodyMedium!
                      .apply(color: textColor),
    );
  }
}
