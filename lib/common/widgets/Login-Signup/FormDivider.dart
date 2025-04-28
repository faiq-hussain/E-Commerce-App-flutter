import 'package:ecommerce_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

import '../../../utils/constants/colors.dart';

//Login Screen (or sign in with) divider

class FormDivider extends StatelessWidget {
  const FormDivider({
    super.key,
    required this.dark,
  });

  final bool dark;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Flexible(
              child: Divider(
                color: dark ? AppColors.darkgrey : AppColors.grey,
                thickness: 0.5,
                indent: 60,
                endIndent: 5,
              ),
            ),
            Text(
              "Or Sign in With",
              style: Theme.of(context).textTheme.labelMedium,
            ),
            Flexible(
              child: Divider(
                color: dark ? AppColors.darkgrey : AppColors.grey,
                thickness: 0.5,
                indent: 5,
                endIndent: 60,
              ),
            ),
          ],
        ),
        const SizedBox(
          height: Sizes.spaceBtwSections / 2,
        ),
      ],
    );
  }
}
