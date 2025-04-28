import 'package:ecommerce_app/features/authentication/controllers/OnBoardingController.dart';
import 'package:ecommerce_app/features/authentication/screens/OnBoardings/Widgets/DottedPageChanger.dart';
import 'package:ecommerce_app/features/authentication/screens/OnBoardings/Widgets/OnBoardingNextButton.dart';
import 'package:ecommerce_app/features/authentication/screens/OnBoardings/Widgets/OnBoardingPage.dart';
import 'package:ecommerce_app/utils/constants/image_strings.dart';
import 'package:ecommerce_app/utils/constants/sizes.dart';
import 'package:ecommerce_app/utils/constants/text_strings.dart';
import 'package:ecommerce_app/utils/device/device_utility.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

class OnBoardingScreen extends StatelessWidget {
  OnBoardingController controller = Get.put(OnBoardingController());
  OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion(
      value: const SystemUiOverlayStyle(
          systemNavigationBarColor: Colors.white,
          statusBarColor: Colors.white,
          statusBarIconBrightness: Brightness.dark),
      child: Scaffold(
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(
                left: Sizes.defaultSpace, right: Sizes.defaultSpace),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              // crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //SkipButton
                Padding(
                  padding:
                      EdgeInsets.only(top: DeviceUtils.getAppBarHeight() - 50),
                  child: Align(
                    alignment: Alignment.topRight,
                    child: TextButton(
                        onPressed: () {
                          controller.skipButton();
                        },
                        child: Text("Skip",
                            style: Theme.of(context).textTheme.labelSmall )),
                  ),
                ),
                const SizedBox(
                  height: Sizes.spaceBtwSections + 20,
                ),

                //swipable images and texts
                Expanded(
                  child: PageView(
                    controller: controller.pageController,
                    onPageChanged: controller.updatePageIndicator,
                    children: const [
                      OnBoardingPageViewWidget(
                        image: ImageStrings.onBoarding1Image,
                        title: TextStrings.onBoardingTitle1,
                        subtitle: TextStrings.onBoardingSubTitle1,
                      ),
                      OnBoardingPageViewWidget(
                        image: ImageStrings.onBoarding2Image,
                        title: TextStrings.onBoardingTitle2,
                        subtitle: TextStrings.onBoardingSubTitle2,
                      ),
                      OnBoardingPageViewWidget(
                        image: ImageStrings.onBoarding3Image,
                        title: TextStrings.onBoardingTitle3,
                        subtitle: TextStrings.onBoardingSubTitle3,
                      )
                    ],
                  ),
                ),
                Padding(
                    padding: EdgeInsets.only(
                        bottom: DeviceUtils.getBottomNavigationBarHeight()),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const DottedPageChanger(),
                        GestureDetector(
                            onTap: () {
                              controller.nextButton(controller.newIndex.value);
                            },
                            child: const OnBoardingNextButton()),
                      ],
                    ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
