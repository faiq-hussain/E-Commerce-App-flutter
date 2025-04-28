import 'package:carousel_slider/carousel_slider.dart';
import 'package:ecommerce_app/features/shop/controllers/HomeScreenController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../common/widgets/Images/CustomRoundedImage.dart';
import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/image_strings.dart';
import '../../../../../utils/constants/sizes.dart';

class HomePromoSlider extends StatelessWidget {
  const HomePromoSlider({
    super.key,
    required this.controller,
  });

  final HomeScreenController controller;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider(
          options: CarouselOptions(
            onPageChanged: (index, CarouselPageChangedReason) {
              controller.updatePage(index);
            },
            viewportFraction: 1.0,
            autoPlay: true,
            enlargeCenterPage: false, // Ensure it doesn’t scale up
          ),
          items: [
            CustomRoundedImage(
              fit: BoxFit.fill,
              image: ImageStrings.promoBanner1,
              applyImageRadius: true,
              width: double.infinity,
              height: double.infinity,
            ),
            CustomRoundedImage(
              fit: BoxFit.fill,
              image: ImageStrings.promoBanner2,
              applyImageRadius: true,
              width: double.infinity,
              height: double.infinity,
            ),
            CustomRoundedImage(
              fit: BoxFit.fill,
              image: ImageStrings.promoBanner3,
              applyImageRadius: true,
              width: double.infinity,
              height: double.infinity,
            ),
          ],
        ),
        SizedBox(
          height: Sizes.spaceBtwItems,
        ),
        Center(
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              for (int i = 0; i < 3; i++)
                Obx(
                  () => Container(
                    margin: EdgeInsets.only(right: 5),
                    width: 18,
                    height: 4,
                    color: controller.carouselCurrentIndex.value == i
                        ? AppColors.primaryColor
                        : AppColors.grey,
                  ),
                )
            ],
          ),
        )
      ],
    );
  }
}
