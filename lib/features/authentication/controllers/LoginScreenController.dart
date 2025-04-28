import 'package:ecommerce_app/features/authentication/screens/Login/ForgetPasswordScreen1.dart';
import 'package:ecommerce_app/features/authentication/screens/Signup/SignupScreen.dart';
import 'package:get/get.dart';

class LoginScreenController extends GetxController {
  static LoginScreenController get instance => Get.find();
  void CreateAccountButtonTap() {
    Get.to(() => SignupScreen(), transition: Transition.rightToLeftWithFade);
  }

  void ForgotPasswordButton() {
    Get.to(() => ForgetPassword());
  }
}
