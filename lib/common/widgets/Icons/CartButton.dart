import 'package:ecommerce_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../utils/constants/colors.dart';

//custom cart icon

class CustomCartIcon extends StatelessWidget {
  const CustomCartIcon({
    required this.onpressed,
    this.iconcolor = AppColors.white,
    super.key,
  });

  final VoidCallback onpressed;
  final Color? iconcolor;

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      IconButton(
          onPressed: onpressed,
          icon: Icon(
            Iconsax.shopping_bag,
            color: iconcolor ?? (Colors.white),
          )),
      Positioned(
        right: 0,
        child: Container(
          width: 18,
          height: 18,
          decoration: BoxDecoration(
              color: AppColors.black, borderRadius: BorderRadius.circular(20)),
          child: Center(
            child: Text(
              "2",
              style: Theme.of(context)
                  .textTheme
                  .labelLarge!
                  .apply(color: AppColors.white, fontSizeFactor: 0.8),
            ),
          ),
        ),
      )
    ]);
  }
}
