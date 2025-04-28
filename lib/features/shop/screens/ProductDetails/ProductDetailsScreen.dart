import 'package:ecommerce_app/common/widgets/AppBar/Appbar.dart';
import 'package:ecommerce_app/common/widgets/CustomShapes/CurvedEdgeWidgets.dart';
import 'package:ecommerce_app/common/widgets/Icons/CustomCircularIcon.dart';
import 'package:ecommerce_app/common/widgets/Images/CustomRoundedImage.dart';
import 'package:ecommerce_app/common/widgets/Text/SectionHeading.dart';
import 'package:ecommerce_app/features/shop/screens/ProductDetails/Widgets/BottomAddToCart.dart';
import 'package:ecommerce_app/features/shop/screens/ProductDetails/Widgets/ProductAttributes.dart';
import 'package:ecommerce_app/features/shop/screens/ProductDetails/Widgets/ProductImagePreview.dart';
import 'package:ecommerce_app/features/shop/screens/ProductDetails/Widgets/ProductMetaData.dart';
import 'package:ecommerce_app/features/shop/screens/ProductDetails/Widgets/RatingShareWidget.dart';
import 'package:ecommerce_app/features/shop/screens/ProductReviews/ProductReviewScreen.dart';
import 'package:ecommerce_app/utils/constants/colors.dart';
import 'package:ecommerce_app/utils/constants/image_strings.dart';
import 'package:ecommerce_app/utils/constants/sizes.dart';
import 'package:ecommerce_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';
import 'package:iconsax/iconsax.dart';
import 'package:readmore/readmore.dart';

class ProductDetailScreen extends StatelessWidget {
  const ProductDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = helperFunctions.isDarkMode(context);
    return AnnotatedRegion(
      value: SystemUiOverlayStyle(
          statusBarColor: Colors.transparent,
          statusBarBrightness: dark ? Brightness.light : Brightness.dark,
          statusBarIconBrightness: dark ? Brightness.light : Brightness.dark),
      child: Scaffold(
        bottomNavigationBar: BottomAddToCart(),
        body: SingleChildScrollView(
          child: Column(
            children: [
              //Product image slider
              ProductImagePreview(),

              // Product Details
              Padding(
                padding: EdgeInsets.only(
                    left: Sizes.defaultSpace,
                    right: Sizes.defaultSpace,
                    bottom: Sizes.defaultSpace),
                child: Column(
                  children: [
                    //Rating And Share
                    RatingAndShare(),

                    // Price, title, stock, brand
                    ProductMetaData(),
                    SizedBox(
                      height: Sizes.spaceBtwItems,
                    ),

                    // Attributes
                    ProductAttributes(),
                    SizedBox(
                      height: Sizes.spaceBtwSections,
                    ),
                    // Checkout button

                    SizedBox(
                        width: Get.width,
                        child: ElevatedButton(
                            onPressed: () {}, child: Text("Checkout"))),
                    SizedBox(
                      height: Sizes.spaceBtwSections,
                    ),
                    // Description
                    SectionHeading(
                      title: "Description",
                      showButton: false,
                    ),
                    SizedBox(
                      height: Sizes.spaceBtwItems,
                    ),
                    ReadMoreText(
                      "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy",
                      trimLines: 2,
                      trimMode: TrimMode.Line,
                      trimCollapsedText: " Show More",
                      trimExpandedText: " Show Less",
                      moreStyle:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.w800),
                      lessStyle:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.w800),
                    ),
                    // Reviews
                    Divider(),
                    SizedBox(
                      height: Sizes.spaceBtwItems / 2,
                    ),
                    SectionHeading(
                      title: "Reviews(154)",
                      showButton: T,
                      onPressed: () => Get.to(() => ProductReviewScreen()),
                      buttonTitle: "View all",
                    ),
                    SizedBox(
                      height: Sizes.spaceBtwSections / 3,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
