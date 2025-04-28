import 'package:get/get.dart';

class HomeScreenController extends GetxController {
  static HomeScreenController get instance => Get.find();

  final carouselCurrentIndex = 0.obs;

  void updatePage(index) {
    carouselCurrentIndex.value = index;
  }
}
