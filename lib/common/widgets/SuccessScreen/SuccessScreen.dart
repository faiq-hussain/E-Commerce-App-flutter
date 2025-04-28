import 'package:ecommerce_app/utils/constants/sizes.dart';
import 'package:ecommerce_app/utils/device/device_utility.dart';
import 'package:ecommerce_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

//Success screen

class SuccessScreen extends StatelessWidget {
  String image, title, subTitle, buttonTitle;
  final VoidCallback onPressed;
  SuccessScreen({
    required this.onPressed,
    required this.image,
    required this.title,
    required this.subTitle,
    required this.buttonTitle,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = helperFunctions.isDarkMode(context);
    return AnnotatedRegion(
      value: SystemUiOverlayStyle(
        statusBarIconBrightness: dark ? Brightness.light : Brightness.dark,
        systemNavigationBarColor: dark ? Colors.black : Colors.white,
        statusBarColor: dark ? Colors.black : Colors.white,
      ),
      child: SafeArea(
        child: Scaffold(
          body: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.only(
                  top: DeviceUtils.getAppBarHeight(),
                  left: Sizes.defaultSpace,
                  right: Sizes.defaultSpace,
                  bottom: Sizes.defaultSpace),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image(
                    width: Get.width * 0.5,
                    height: Get.height * 0.3,
                    image: AssetImage(image),
                  ),
                  const SizedBox(height: Sizes.spaceBtwItems),
                  Text(
                    title,
                    style: Theme.of(context).textTheme.headlineMedium,
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: Sizes.spaceBtwItems),
                  Text(
                    subTitle,
                    style: Theme.of(context).textTheme.labelMedium,
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: Sizes.spaceBtwSections),
                  SizedBox(
                      width: Get.width,
                      child: ElevatedButton(
                          onPressed: onPressed, child: Text(buttonTitle))),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
