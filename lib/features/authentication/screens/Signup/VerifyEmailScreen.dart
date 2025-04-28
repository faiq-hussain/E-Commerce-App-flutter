import 'package:ecommerce_app/common/widgets/SuccessScreen/SuccessScreen.dart';
import 'package:ecommerce_app/features/authentication/screens/Login/LoginScreen.dart';
import 'package:ecommerce_app/utils/constants/image_strings.dart';
import 'package:ecommerce_app/utils/constants/sizes.dart';
import 'package:ecommerce_app/utils/constants/text_strings.dart';
import 'package:ecommerce_app/utils/helpers/helper_functions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

class VerifyEmailScreen extends StatelessWidget {
  const VerifyEmailScreen({super.key});

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
          appBar: AppBar(
            automaticallyImplyLeading: false,
            actions: [
              IconButton(
                  onPressed: () {
                    Get.offAll(() => LoginScreen());
                  },
                  icon: const Icon(CupertinoIcons.clear))
            ],
          ),
          body: SingleChildScrollView(
            child: Padding(
                padding: const EdgeInsets.all(Sizes.defaultSpace),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image(
                        width: Get.width * 0.5,
                        height: Get.height * 0.3,
                        image:
                            const AssetImage(ImageStrings.emailVerification)),
                    const SizedBox(height: Sizes.spaceBtwItems),
                    Text(
                      "Verify your email address!",
                      style: Theme.of(context).textTheme.headlineMedium,
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: Sizes.spaceBtwItems),
                    Text(
                      "faiqhussain1203@gmail.com",
                      style: Theme.of(context).textTheme.labelLarge,
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: Sizes.spaceBtwItems),
                    Text(
                      TextStrings.confirmEmailSubTitle,
                      style: Theme.of(context).textTheme.labelMedium,
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: Sizes.spaceBtwSections),
                    SizedBox(
                        width: Get.width,
                        child: ElevatedButton(
                            onPressed: () {
                              Get.to(() => SuccessScreen(
                                  onPressed: () => Get.offAll(LoginScreen()),
                                  image: ImageStrings.verificationSuccessful,
                                  title: "Your Account Created Successfully",
                                  subTitle: TextStrings.emailAddressVerified,
                                  buttonTitle: "Continue"));
                            },
                            child: const Text("Continue"))),
                    TextButton(
                        onPressed: () {},
                        child: Text(
                          "Resend Email",
                          style: Theme.of(context).textTheme.labelSmall,
                        )),
                  ],
                )),
          ),
        )));
  }
}
