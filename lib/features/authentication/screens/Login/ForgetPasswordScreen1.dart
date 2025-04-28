import 'package:ecommerce_app/features/authentication/screens/Login/ForgetPasswordScreen2.dart';
import 'package:ecommerce_app/utils/constants/sizes.dart';
import 'package:ecommerce_app/utils/constants/text_strings.dart';
import 'package:ecommerce_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

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
          leading: IconButton(
              onPressed: () => Get.back(),
              icon: Icon(
                Icons.arrow_back,
                color: dark ? Colors.white : Colors.black,
              )),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(Sizes.defaultSpace),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Forget Password",
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
                const SizedBox(
                  height: Sizes.spaceBtwItems,
                ),
                Text(
                  TextStrings.forgetPasswordScreenSubtitle,
                  textAlign: TextAlign.left,
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
                const SizedBox(
                  height: Sizes.spaceBtwSections,
                ),
                TextFormField(
                  decoration: const InputDecoration(
                      prefixIcon: Icon(Iconsax.direct_right),
                      labelText: "email"),
                ),
                const SizedBox(
                  height: Sizes.spaceBtwSections,
                ),
                SizedBox(
                    width: Get.width,
                    child: ElevatedButton(
                        onPressed: () {
                          Get.to(() => ForgetPasswordConfirmation());
                        },
                        child: const Text("Send Email"))),
              ],
            ),
          ),
        ),
      )),
    );
  }
}
