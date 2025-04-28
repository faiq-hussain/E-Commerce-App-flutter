import 'package:ecommerce_app/common/widgets/Login-Signup/FormDivider.dart';
import 'package:ecommerce_app/common/widgets/Login-Signup/IconsRow.dart';
import 'package:ecommerce_app/features/authentication/controllers/LoginScreenController.dart';
import 'package:ecommerce_app/features/authentication/screens/Login/Widgets/LoginForm.dart';
import 'package:ecommerce_app/features/authentication/screens/Login/Widgets/LoginHeader.dart';
import 'package:ecommerce_app/utils/constants/sizes.dart';
import 'package:ecommerce_app/utils/device/device_utility.dart';
import 'package:ecommerce_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

class LoginScreen extends StatelessWidget {
  LoginScreenController controller = Get.put(LoginScreenController());
  LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = helperFunctions.isDarkMode(context);
    return SafeArea(
      child: AnnotatedRegion(
        value: SystemUiOverlayStyle(
          statusBarIconBrightness: dark ? Brightness.light : Brightness.dark,
          systemNavigationBarColor: dark ? Colors.black : Colors.white,
          statusBarColor: dark ? Colors.black : Colors.white,
        ),
        child: Scaffold(
          body: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.only(
                  top: DeviceUtils.getAppBarHeight() - 20,
                  bottom: Sizes.defaultSpace,
                  right: Sizes.defaultSpace,
                  left: Sizes.defaultSpace),
              child: Column(
                children: [
                  const LoginHeader(),
                  const LoginForm(),
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
