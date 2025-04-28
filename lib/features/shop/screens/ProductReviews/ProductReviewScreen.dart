import 'package:ecommerce_app/common/widgets/AppBar/Appbar.dart';
import 'package:ecommerce_app/features/shop/screens/ProductReviews/Widgets/CustomLinearProgressIndicator.dart';
import 'package:ecommerce_app/features/shop/screens/ProductReviews/Widgets/OverallProductRating.dart';
import 'package:ecommerce_app/features/shop/screens/ProductReviews/Widgets/UserReviewCard.dart';
import 'package:ecommerce_app/utils/constants/colors.dart';
import 'package:ecommerce_app/utils/constants/sizes.dart';
import 'package:ecommerce_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../common/widgets/Products/Ratings/CustomRatingIndicator.dart';

class ProductReviewScreen extends StatelessWidget {
  const ProductReviewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = helperFunctions.isDarkMode(context);
    return AnnotatedRegion(
      value: SystemUiOverlayStyle(
          statusBarColor: dark ? AppColors.dark : AppColors.white,
          statusBarIconBrightness: dark ? Brightness.light : Brightness.dark),
      child: SafeArea(
        child: Scaffold(
            appBar: CustomAppBar(
              title: Text("Reviews & Ratings"),
            ),
            body: SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.all(Sizes.defaultSpace),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                        "Ratings and Reviews are verified and are from people who use same type of device that you use."),
                    SizedBox(
                      height: Sizes.spaceBtwItems,
                    ),

                    //Overall product ratings
                    OverallProductRating(),
                    CustomRatingBarIndicator(
                      rating: 4.7,
                    ),
                    Text(
                      "8,723",
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                    SizedBox(
                      height: Sizes.spaceBtwSections,
                    ),

                    //User Review List
                    UserReviewCard(),
                    UserReviewCard(),
                    UserReviewCard(),
                  ],
                ),
              ),
            )),
      ),
    );
  }
}
