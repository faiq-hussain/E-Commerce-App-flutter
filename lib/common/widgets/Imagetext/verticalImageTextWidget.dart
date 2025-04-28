import 'package:flutter/material.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/constants/sizes.dart';
import '../../../utils/helpers/helper_functions.dart';

class VerticalImageText extends StatelessWidget {
  const VerticalImageText({
    super.key,
    required this.image,
    required this.title,
    this.textColor = AppColors.white,
    this.backgroundColor,
    this.onTap,
  });

  final String image;
  final String title;
  final Color textColor;
  final Color? backgroundColor;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    final dark = helperFunctions.isDarkMode(context);
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.only(right: Sizes.spaceBtwItems),
        child: Column(
          children: [
            Container(
              height: 56,
              width: 56,
              padding: EdgeInsets.all(Sizes.sm),
              decoration: BoxDecoration(
                  color: backgroundColor ??
                      (dark ? AppColors.dark : AppColors.light),
                  borderRadius: BorderRadius.circular(100)),
              child: Image(
                image: AssetImage(image),
                fit: BoxFit.fill,
                color: dark ? AppColors.light : AppColors.dark,
              ),
            ),
            const SizedBox(
              height: Sizes.spaceBtwItems / 2,
            ),
            SizedBox(
              width: 55,
              child: Center(
                child: Text(
                  title,
                  overflow: TextOverflow.ellipsis,
                  style: Theme.of(context)
                      .textTheme
                      .labelMedium!
                      .apply(color: AppColors.white),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
