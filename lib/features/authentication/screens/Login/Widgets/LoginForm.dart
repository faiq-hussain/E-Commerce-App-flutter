import 'package:ecommerce_app/features/authentication/controllers/LoginScreenController.dart';
import 'package:ecommerce_app/features/navigation_menu.dart';
import 'package:ecommerce_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = LoginScreenController.instance;
    return Form(
        child: Column(
      children: [
        TextFormField(
          decoration: const InputDecoration(
              prefixIcon: Icon(Iconsax.direct_right), labelText: "E-mail"),
        ),
        const SizedBox(
          height: Sizes.spaceBtwInputFields,
        ),
        TextFormField(
          decoration: const InputDecoration(
              suffixIcon: Icon(Iconsax.eye),
              prefixIcon: Icon(Iconsax.password_check),
              labelText: "Password"),
        ),
        const SizedBox(
          height: Sizes.spaceBtwInputFields / 2,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Checkbox(value: true, onChanged: (value) {}),
                const Text("Remember me"),
              ],
            ),
            TextButton(
                onPressed: () {
                  controller.ForgotPasswordButton();
                },
                child: Text(
                  "Forgot Password",
                  style: Theme.of(context).textTheme.labelLarge,
                )),
          ],
        ),
        const SizedBox(
          height: Sizes.spaceBtwInputFields / 2,
        ),
        SizedBox(
            width: Get.width,
            child: ElevatedButton(
                onPressed: () {
                  Get.offAll(() => BottomNavigationBarScreen());
                },
                child: const Text("Sign in"))),
        const SizedBox(
          height: Sizes.spaceBtwInputFields / 2,
        ),
        SizedBox(
            width: Get.width,
            child: OutlinedButton(
                onPressed: () {
                  controller.CreateAccountButtonTap();
                },
                child: const Text("Create Account"))),
        const SizedBox(
          height: Sizes.spaceBtwSections,
        )
      ],
    ));
  }
}
