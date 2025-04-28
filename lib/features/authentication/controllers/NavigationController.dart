import 'package:ecommerce_app/features/personalization/screens/settings/ProfileSettingsScreen.dart';
import 'package:ecommerce_app/features/shop/screens/HomeScreen/HomeScreen.dart';
import 'package:ecommerce_app/features/shop/screens/Store/StoreScreen.dart';
import 'package:ecommerce_app/features/shop/screens/Wishlist/WishlistScreen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NavigationController extends GetxController {
  RxInt selectedIndex = 0.obs;

  final screens = [
    HomeScreen(),
    StoreScreen(),
    WishlistScreen(),
    ProfileSettingsScreen()
  ];
}
