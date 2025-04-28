import 'package:carousel_slider/carousel_slider.dart';
import 'package:ecommerce_app/common/widgets/Products/ProductCardVertical.dart';
import 'package:ecommerce_app/features/shop/controllers/HomeScreenController.dart';
import 'package:ecommerce_app/features/shop/screens/HomeScreen/Widgets/CategoryListWidget.dart';
import 'package:ecommerce_app/features/shop/screens/HomeScreen/Widgets/HomeAppBar.dart';
import 'package:ecommerce_app/features/shop/screens/HomeScreen/Widgets/HomePromoSlider.dart';
import 'package:ecommerce_app/features/shop/screens/HomeScreen/Widgets/PrimaryHeaderWidget.dart';
import 'package:ecommerce_app/utils/constants/colors.dart';
import 'package:ecommerce_app/utils/constants/image_strings.dart';
import 'package:ecommerce_app/utils/constants/sizes.dart';
import 'package:ecommerce_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';
import '../../../../common/widgets/Images/CustomRoundedImage.dart';
import '../../../../common/widgets/Layouts/CustomGridLayout.dart';
import '../../../../common/widgets/SearchWidget/CustomSearchField.dart';
import '../../../../common/widgets/Text/SectionHeading.dart';

class HomeScreen extends StatelessWidget {
  HomeScreenController controller = Get.put(HomeScreenController());
  HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = helperFunctions.isDarkMode(context);
    return AnnotatedRegion(
      value: SystemUiOverlayStyle(
          statusBarColor: Colors.transparent,
          statusBarIconBrightness: Brightness.light,
          systemNavigationBarColor: dark ? Colors.black : Colors.white),
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //header
              const PrimaryHomeHeader(
                child: Column(children: [
                  //App Bar
                  HomeAppBar(),

                  SizedBox(
                    height: Sizes.spaceBtwSections / 2,
                  ),

                  //Search Field
                  CustomSearchField(
                    text: "Search in Store",
                    showBackground: T,
                    showBorder: F,
                  ),

                  SizedBox(
                    height: Sizes.spaceBtwSections,
                  ),

                  //Categories Horizontal List

                  Padding(
                    padding: EdgeInsets.only(left: Sizes.defaultSpace),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SectionHeading(
                          title: "Popular Categories",
                          textColor: AppColors.white,
                          showButton: F,
                        ),
                        SizedBox(
                          height: Sizes.spaceBtwItems,
                        ),
                        CategoryListScrollableWidget(),
                        SizedBox(
                          height: Sizes.spaceBtwSections,
                        ),
                      ],
                    ),
                  )
                ]),
              ),

              //PromoSlider
              Padding(
                  padding: const EdgeInsets.all(Sizes.defaultSpace),
                  child: Column(
                    children: [
                      HomePromoSlider(controller: controller),
                      const SizedBox(
                        height: Sizes.spaceBtwItems,
                      ),
                      SectionHeading(
                          title: "Popular Products",
                          textColor: dark ? AppColors.light : AppColors.dark),
                      const SizedBox(
                        height: Sizes.spaceBtwItems,
                      ),
                      CustomGridLayout(
                        itemCount: 4,
                        itemBuilder: (_, index) {
                          return ProductCardVertical();
                        },
                      ),
                    ],
                  )),

              //Gridview Popular Products
            ],
          ),
        ),
      ),
    );
  }
}
