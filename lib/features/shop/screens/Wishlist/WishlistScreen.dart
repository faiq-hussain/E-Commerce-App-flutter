import 'package:ecommerce_app/common/widgets/AppBar/Appbar.dart';
import 'package:ecommerce_app/common/widgets/Icons/CustomCircularIcon.dart';
import 'package:ecommerce_app/common/widgets/Layouts/CustomGridLayout.dart';
import 'package:ecommerce_app/common/widgets/Products/ProductCardVertical.dart';
import 'package:ecommerce_app/features/navigation_menu.dart';
import 'package:ecommerce_app/features/shop/screens/HomeScreen/HomeScreen.dart';
import 'package:ecommerce_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class WishlistScreen extends StatelessWidget {
  const WishlistScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        showBackArrow: false,
        actions: [
          CustomCircularIcon(
            icon: Iconsax.add,
            onPressed: () {
              Get.to(() => HomeScreen());
            },
          ),
        ],
        title: Text(
          "Wishlist",
          style: Theme.of(context).textTheme.headlineMedium,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(Sizes.defaultSpace),
          child: Column(
            children: [
              CustomGridLayout(
                  itemCount: 10,
                  itemBuilder: (_, index) => ProductCardVertical())
            ],
          ),
        ),
      ),
    );
  }
}
