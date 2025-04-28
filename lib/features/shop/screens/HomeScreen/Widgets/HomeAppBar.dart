import 'package:ecommerce_app/common/widgets/Icons/CartButton.dart';
import 'package:flutter/material.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';

import '../../../../../common/widgets/AppBar/Appbar.dart';
import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/text_strings.dart';

//AppBAr for homescreen

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomAppBar(
      showBackArrow: F,
      title: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Text(
          TextStrings.homeAppBarTitle,
          style: Theme.of(context)
              .textTheme
              .labelMedium!
              .apply(color: AppColors.grey),
        ),
        Text(
          TextStrings.homeAppBarSubTitle,
          style: Theme.of(context)
              .textTheme
              .headlineSmall!
              .apply(color: AppColors.white),
        ),
      ]),
      actions: [
        CustomCartIcon(
          onpressed: () {},
        )
      ],
    );
  }
}
