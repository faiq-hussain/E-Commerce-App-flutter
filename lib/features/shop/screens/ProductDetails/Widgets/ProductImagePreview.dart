import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../common/widgets/AppBar/Appbar.dart';
import '../../../../../common/widgets/CustomShapes/CurvedEdgeWidgets.dart';
import '../../../../../common/widgets/Icons/CustomCircularIcon.dart';
import '../../../../../common/widgets/Images/CustomRoundedImage.dart';
import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/image_strings.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/helpers/helper_functions.dart';

class ProductImagePreview extends StatelessWidget {
  const ProductImagePreview({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = helperFunctions.isDarkMode(context);

    return CurvedEdgeWidget(
      child: Container(
        color: dark ? AppColors.darkergrey : AppColors.light,
        child: Stack(
          children: [
            //Main Large Image Preview
            SizedBox(
                height: 400,
                child: Padding(
                  padding: const EdgeInsets.all(Sizes.productImageRadius * 2),
                  child: Center(
                      child: Image(
                          fit: BoxFit.contain,
                          image: AssetImage(ImageStrings.product2))),
                )),

            //Image Slider
            Positioned(
              bottom: 30,
              right: 0,
              left: Sizes.defaultSpace,
              child: SizedBox(
                height: 70,
                child: ListView.separated(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (_, index) {
                      return CustomRoundedImage(
                          border: Border.all(color: AppColors.primaryColor),
                          padding: EdgeInsets.all(Sizes.sm),
                          backgroundColor:
                              dark ? AppColors.dark : AppColors.white,
                          width: 70,
                          image: ImageStrings.product2);
                    },
                    separatorBuilder: (_, __) => SizedBox(
                          width: Sizes.spaceBtwItems,
                        ),
                    itemCount: 5),
              ),
            ),
            //AppBarIcons
            SafeArea(
              child: CustomAppBar(
                actions: [
                  CustomCircularIcon(
                    icon: Iconsax.heart5,
                    color: Colors.red,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
