import 'dart:developer';


import 'package:ecommerce_app/features/authentication/screens/Login/LoginScreen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnBoardingController extends GetxController {
  static OnBoardingController get instance => Get.find();

  final pageController = PageController();
  RxInt currentPageIndex = 0.obs;
  RxInt newIndex = 0.obs;
  final percentage = 0.33.obs;

  void changeLoaderValue() {
    if (currentPageIndex.value == 0) {
      percentage.value = 0.33;
    } else if (currentPageIndex.value == 1) {
      percentage.value = 0.66;
    } else if (currentPageIndex.value == 2) {
      percentage.value = 1;
    }
  }

  void updatePageIndicator(index) {
    newIndex.value = index;
    currentPageIndex.value = index;
    changeLoaderValue();
  }

  void nextButton(index) {
    if (currentPageIndex.value == 2) {
      Get.offAll(() => LoginScreen());
    } else {
      int page = currentPageIndex.value + 1;
      pageController.jumpToPage(page);
      log("${currentPageIndex.value}");
    }
    changeLoaderValue();
  }

  void skipButton() {
    currentPageIndex.value = 2;
    pageController.jumpToPage(2);
    log("${currentPageIndex.value}");
  }
}
