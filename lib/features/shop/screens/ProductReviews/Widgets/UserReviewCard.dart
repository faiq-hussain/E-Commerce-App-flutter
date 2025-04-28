import 'package:ecommerce_app/common/widgets/CustomShapes/CustomRoundedContainer.dart';
import 'package:ecommerce_app/common/widgets/Images/CustomCircularImage.dart';
import 'package:ecommerce_app/common/widgets/Images/CustomRoundedImage.dart';
import 'package:ecommerce_app/common/widgets/Products/Ratings/CustomRatingIndicator.dart';
import 'package:ecommerce_app/utils/constants/colors.dart';
import 'package:ecommerce_app/utils/constants/sizes.dart';
import 'package:ecommerce_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:readmore/readmore.dart';

class UserReviewCard extends StatelessWidget {
  const UserReviewCard({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = helperFunctions.isDarkMode(context);
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                CustomCircularImage(
                    height: 50,
                    width: 50,
                    isNetworkImage: true,
                    image:
                        "https://images.pexels.com/photos/415829/pexels-photo-415829.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"),
                SizedBox(
                  width: Sizes.spaceBtwItems,
                ),
                Text(
                  "jennifer K",
                  style: Theme.of(context).textTheme.titleLarge,
                ),
              ],
            ),
            IconButton(onPressed: () {}, icon: Icon(Icons.more_vert))
          ],
        ),
        SizedBox(
          height: Sizes.spaceBtwItems / 8,
        ),

        //Review
        Row(
          children: [
            CustomRatingBarIndicator(rating: 4.3),
            SizedBox(
              width: Sizes.spaceBtwItems,
            ),
            Text(
              "01 Nov, 2023",
              style: Theme.of(context).textTheme.bodyMedium,
            )
          ],
        ),
        SizedBox(
          height: Sizes.spaceBtwItems,
        ),
        ReadMoreText(
          "There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn't anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet.",
          trimLines: 2,
          trimExpandedText: " show less",
          trimCollapsedText: " show more",
          trimMode: TrimMode.Line,
          moreStyle: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
              color: AppColors.primaryColor),
          lessStyle: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
              color: AppColors.primaryColor),
        ),
        SizedBox(
          height: Sizes.spaceBtwItems,
        ),
        CustomRoundedContainer(
          backgroundColor: dark ? AppColors.darkergrey : AppColors.grey,
          child: Padding(
            padding: EdgeInsets.all(Sizes.md),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Store",
                      style: Theme.of(context)
                          .textTheme
                          .titleMedium!
                          .apply(fontWeightDelta: 1),
                    ),
                    Text("01 Nov, 2023",
                        style: Theme.of(context).textTheme.bodyMedium)
                  ],
                ),
                SizedBox(
                  height: Sizes.spaceBtwItems / 1.5,
                ),
                ReadMoreText(
                  "There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn't anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet.",
                  trimLines: 2,
                  trimExpandedText: " show less",
                  trimCollapsedText: " show more",
                  trimMode: TrimMode.Line,
                  moreStyle: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: AppColors.primaryColor),
                  lessStyle: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: AppColors.primaryColor),
                ),
              ],
            ),
          ),
        ),
        SizedBox(
          height: Sizes.spaceBtwItems,
        )
      ],
    );
  }
}
