import 'package:ecommerce_app/features/authentication/controllers/NavigationController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';
import 'package:iconsax/iconsax.dart';

class BottomNavigationBarScreen extends StatelessWidget {
  NavigationController controller = Get.put(NavigationController());
  BottomNavigationBarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // final dark = helperFunctions.isDarkMode(context);
    return Scaffold(
      extendBodyBehindAppBar: F,
      bottomNavigationBar: Obx(
        () => NavigationBar(
          height: 80,
          indicatorColor: Colors.grey.withOpacity(0.2),

          // indicatorShape: ,
          backgroundColor: Colors.transparent,
          elevation: 0,
          selectedIndex: controller.selectedIndex.value,
          onDestinationSelected: (index) =>
              controller.selectedIndex.value = index,
          destinations: const [
            NavigationDestination(
                icon: Icon(
                  Iconsax.home,
                ),
                label: "Home"),
            NavigationDestination(icon: Icon(Iconsax.shop), label: "Store"),
            NavigationDestination(icon: Icon(Iconsax.heart), label: "Wishlist"),
            NavigationDestination(icon: Icon(Iconsax.user), label: "Profile"),
          ],
        ),
      ),
      body: Obx(() => controller.screens[controller.selectedIndex.value]),
    );
  }
}
