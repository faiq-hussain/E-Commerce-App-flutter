import 'package:ecommerce_app/common/widgets/Login-Signup/FormDivider.dart';
import 'package:ecommerce_app/common/widgets/Login-Signup/IconsRow.dart';
import 'package:ecommerce_app/features/authentication/screens/Signup/Widgets/SignupForm.dart';
import 'package:ecommerce_app/utils/constants/sizes.dart';
import 'package:ecommerce_app/utils/constants/text_strings.dart';
import 'package:ecommerce_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

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
              icon: const Icon(Icons.arrow_back),
              color: dark ? Colors.white : Colors.black,
            ),
          ),
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                  vertical: Sizes.defaultSpace - 15,
                  horizontal: Sizes.defaultSpace),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    TextStrings.signuptitle,
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                  const SizedBox(
                    height: Sizes.spaceBtwSections,
                  ),
                  SignupForm(dark: dark),
                  const SizedBox(
                    height: Sizes.spaceBtwSections,
                  ),
                  FormDivider(dark: dark),
                  const IconsRow()
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
