import 'package:ecommerce_app/utils/constants/image_strings.dart';
import 'package:ecommerce_app/utils/constants/sizes.dart';
import 'package:ecommerce_app/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';

class LoginHeader extends StatelessWidget {
  const LoginHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Image(
          height: 120,
          width: 120,
          image: AssetImage(ImageStrings.appLogo),
        ),
        SizedBox(
          height: Sizes.spaceBtwItems,
        ),
        Text(
          TextStrings.logintitle,
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        const SizedBox(
          height: Sizes.sm,
        ),
        Text(
          TextStrings.loginSubTitle,
          style: Theme.of(context).textTheme.bodyMedium,
        ),
        const SizedBox(
          height: Sizes.spaceBtwSections,
        )
      ],
    );
  }
}
