import 'package:ecommerce_app/common/widgets/AppBar/Appbar.dart';
import 'package:ecommerce_app/common/widgets/Images/CustomCircularImage.dart';
import 'package:ecommerce_app/common/widgets/ListTiles/SettingMenuTile.dart';
import 'package:ecommerce_app/common/widgets/Text/SectionHeading.dart';
import 'package:ecommerce_app/features/personalization/screens/address/AddressScreen.dart';
import 'package:ecommerce_app/features/personalization/screens/profile/ProfileScreen.dart';
import 'package:ecommerce_app/features/shop/screens/HomeScreen/Widgets/PrimaryHeaderWidget.dart';
import 'package:ecommerce_app/utils/constants/colors.dart';
import 'package:ecommerce_app/utils/constants/sizes.dart';
import 'package:ecommerce_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../common/widgets/ListTiles/UserProfileTile.dart';

class ProfileSettingsScreen extends StatelessWidget {
  const ProfileSettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            // header
            PrimaryHomeHeader(
                child: Column(
              children: [
                CustomAppBar(
                  showBackArrow: false,
                  title: Text(
                    "Account",
                    style: Theme.of(context)
                        .textTheme
                        .headlineMedium!
                        .apply(color: AppColors.white),
                  ),
                ),
                UserProfileTile(
                    onTap: () => Get.to(() => const ProfileScreen())),
                const SizedBox(
                  height: Sizes.spaceBtwSections,
                ),
              ],
            )),

            //body

            Padding(
              padding: const EdgeInsets.all(Sizes.defaultSpace),
              child: Column(
                children: [
                  // Account Settings
                  const SectionHeading(
                      showButton: false, title: "Account Settings"),
                  const SizedBox(
                    height: Sizes.spaceBtwItems,
                  ),
                  SettingsMenutile(
                      onTap: () => Get.to(() => AddressScreen()),
                      title: "My Addresses",
                      subtitle: "Set shopping delivery address",
                      icon: Iconsax.safe_home),
                  const SettingsMenutile(
                      title: "My Cart",
                      subtitle: "Add, remove products and move to checkout",
                      icon: Iconsax.shopping_cart),
                  const SettingsMenutile(
                      title: "My Orders",
                      subtitle: "In progress and completed orders",
                      icon: Iconsax.bag_tick),
                  const SettingsMenutile(
                      title: "Bank Account",
                      subtitle: "Withdraw balance to registered bank account",
                      icon: Iconsax.bank),
                  const SettingsMenutile(
                      title: "My Coupons",
                      subtitle: "List of all the discounted coupons",
                      icon: Iconsax.discount_shape),
                  const SettingsMenutile(
                      title: "Notifications",
                      subtitle: "Set any kind of notification messages",
                      icon: Iconsax.notification),
                  const SettingsMenutile(
                      title: "Account Privacy",
                      subtitle: "Manage dats usage and connected accounts",
                      icon: Iconsax.security_card),

                  // App Settings

                  const SizedBox(
                    height: Sizes.spaceBtwSections,
                  ),
                  const SectionHeading(
                      showButton: false, title: "App Settings"),
                  const SizedBox(
                    height: Sizes.spaceBtwItems,
                  ),
                  const SettingsMenutile(
                      title: "Load Data",
                      subtitle: "Upload data to your cloud Firebase",
                      icon: Iconsax.document_upload),
                  SettingsMenutile(
                      trailing: Switch(
                          activeColor: helperFunctions.isDarkMode(context)
                              ? AppColors.black
                              : AppColors.white,
                          activeTrackColor: AppColors.primaryColor,
                          value: false,
                          onChanged: (value) {}),
                      title: "Geolocation",
                      subtitle: "Get recommendations based on location",
                      icon: Iconsax.location),
                  SettingsMenutile(
                      trailing: Switch(
                          activeColor: helperFunctions.isDarkMode(context)
                              ? AppColors.black
                              : AppColors.white,
                          activeTrackColor: AppColors.primaryColor,
                          value: false,
                          onChanged: (value) {}),
                      title: "Safe Mode",
                      subtitle: "Search result is safe for all ages",
                      icon: Iconsax.security_user),
                  SettingsMenutile(
                      trailing: Switch(
                          activeColor: helperFunctions.isDarkMode(context)
                              ? AppColors.black
                              : AppColors.white,
                          activeTrackColor: AppColors.primaryColor,
                          value: true,
                          onChanged: (value) {}),
                      title: "HD Image Quality",
                      subtitle: "Set image quality to be seen",
                      icon: Iconsax.image),

                  const SizedBox(
                    height: Sizes.spaceBtwSections,
                  ),
                  SizedBox(
                    width: Get.width,
                    child: OutlinedButton(
                        onPressed: () {}, child: const Text("Logout")),
                  ),
                  const SizedBox(
                    height: Sizes.spaceBtwSections,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
