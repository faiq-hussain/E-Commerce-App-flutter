import 'package:ecommerce_app/common/widgets/AppBar/Appbar.dart';
import 'package:ecommerce_app/common/widgets/CustomShapes/CustomRoundedContainer.dart';
import 'package:ecommerce_app/common/widgets/Icons/CartButton.dart';
import 'package:ecommerce_app/common/widgets/Layouts/CustomGridLayout.dart';
import 'package:ecommerce_app/common/widgets/SearchWidget/CustomSearchField.dart';
import 'package:ecommerce_app/common/widgets/Text/SectionHeading.dart';
import 'package:ecommerce_app/features/shop/screens/Store/Widgets/CategoryTabView.dart';
import 'package:ecommerce_app/utils/constants/colors.dart';
import 'package:ecommerce_app/utils/constants/image_strings.dart';
import 'package:ecommerce_app/utils/constants/sizes.dart';
import 'package:ecommerce_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';
import '../../../../common/widgets/Brands/BrandCardWidget.dart';
import '../../../../common/widgets/Brands/BrandShowcaseWidget.dart';
import '../../../../common/widgets/Tabbar/CustomTabBar.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = helperFunctions.isDarkMode(context);
    return AnnotatedRegion(
      value: SystemUiOverlayStyle(
        statusBarIconBrightness: dark ? Brightness.light : Brightness.dark,
        statusBarColor: dark ? AppColors.black : AppColors.white,
        systemNavigationBarColor: dark ? AppColors.black : AppColors.light,
      ),
      child: SafeArea(
        child: DefaultTabController(
          length: 5,
          child: Scaffold(
              backgroundColor: dark ? AppColors.black : AppColors.white,
              appBar: CustomAppBar(
                showBackArrow: F,
                title: Text(
                  "Store",
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
                actions: [
                  CustomCartIcon(
                    onpressed: () {},
                    iconcolor: dark ? AppColors.white : AppColors.black,
                  )
                ],
              ),
              body: NestedScrollView(
                  headerSliverBuilder: (_, innerBoxIsScrolled) {
                    return [
                      SliverAppBar(
                          pinned: true,
                          floating: true,
                          backgroundColor:
                              dark ? AppColors.black : AppColors.white,
                          expandedHeight: Get.height * 0.49,
                          flexibleSpace: Padding(
                            padding: const EdgeInsets.all(Sizes.defaultSpace),
                            child: ListView(
                              physics: const NeverScrollableScrollPhysics(),
                              shrinkWrap: true,
                              children: [
                                //Search Bar
                                // SizedBox(
                                //   height: Sizes.spaceBtwItems / 2,
                                // ),
                                const CustomSearchField(
                                  padding: EdgeInsets.zero,
                                  text: "Search in Store",
                                  showBorder: true,
                                ),
                                const SizedBox(
                                  height: Sizes.spaceBtwSections / 2,
                                ),

                                //Featured Brands
                                const SectionHeading(
                                  title: "Featured Brands",
                                  showButton: true,
                                  buttonTitle: "View all",
                                ),
                                const SizedBox(
                                  height: Sizes.spaceBtwItems / 1.5,
                                ),
                                CustomGridLayout(
                                    mainAxisExtent: 70,
                                    itemCount: 4,
                                    itemBuilder: (_, index) {
                                      return const BrandNameCard(
                                        products: 250,
                                        logo: ImageStrings.sportIcon,
                                        brandName: "Heskol",
                                      );
                                    })
                              ],
                            ),
                          ),

                          //Tab Bar

                          bottom: CustomTabBar(
                              isScrollable: true,
                              
                              indicatorColor: AppColors.primaryColor,
                              unselectedLabelColor: AppColors.darkgrey,
                              labelColor: dark
                                  ? AppColors.white
                                  : AppColors.primaryColor,
                              tabs: const [
                                Tab(
                                  child: Text("clothes"),
                                ),
                                Tab(
                                  child: Text("shoes"),
                                ),
                                Tab(
                                  child: Text("sports"),
                                ),
                                Tab(
                                  child: Text("electronics"),
                                ),
                                Tab(
                                  child: Text("cosmetics"),
                                )
                              ]))
                    ];
                  },
                  body: TabBarView(children: [
                    CategoryTabView(),
                    CategoryTabView(),
                    CategoryTabView(),
                    CategoryTabView(),
                    CategoryTabView(),
                  ]))),
        ),
      ),
    );
  }
}
