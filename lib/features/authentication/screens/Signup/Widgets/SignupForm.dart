import 'package:ecommerce_app/features/authentication/screens/Signup/VerifyEmailScreen.dart';
import 'package:ecommerce_app/utils/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import '../../../../../utils/constants/sizes.dart';

class SignupForm extends StatelessWidget {
  const SignupForm({
    super.key,
    required this.dark,
  });

  final bool dark;

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: TextFormField(
                  expands: false,
                  decoration: const InputDecoration(
                      labelText: "First Name", prefixIcon: Icon(Iconsax.user)),
                ),
              ),
              const SizedBox(
                width: Sizes.spaceBtwInputFields,
              ),
              Expanded(
                child: TextFormField(
                  expands: false,
                  decoration: const InputDecoration(
                      labelText: "First Name", prefixIcon: Icon(Iconsax.user)),
                ),
              )
            ],
          ),
          const SizedBox(
            height: Sizes.spaceBtwInputFields,
          ),
          TextFormField(
            expands: false,
            decoration: const InputDecoration(
                labelText: "Username", prefixIcon: Icon(Iconsax.user_edit)),
          ),
          const SizedBox(
            height: Sizes.spaceBtwInputFields,
          ),
          TextFormField(
            expands: false,
            decoration: const InputDecoration(
                labelText: "E-mail", prefixIcon: Icon(Iconsax.direct_right)),
          ),
          const SizedBox(
            height: Sizes.spaceBtwInputFields,
          ),
          TextFormField(
            expands: false,
            decoration: const InputDecoration(
                labelText: "Phone Number", prefixIcon: Icon(Iconsax.call)),
          ),
          const SizedBox(
            height: Sizes.spaceBtwInputFields,
          ),
          TextFormField(
            expands: false,
            decoration: const InputDecoration(
                labelText: "Password",
                suffixIcon: Icon(Iconsax.eye),
                prefixIcon: Icon(Iconsax.password_check)),
          ),
          const SizedBox(
            height: Sizes.spaceBtwItems,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                  width: 24,
                  height: 24,
                  child: Checkbox(value: true, onChanged: (value) {})),
              Text.rich(TextSpan(children: [
                TextSpan(
                    text: " I agree to ",
                    style: Theme.of(context).textTheme.bodySmall),
                TextSpan(
                    text: "Privacy Policy",
                    style: Theme.of(context).textTheme.bodyMedium!.apply(
                        color: dark ? Colors.white : AppColors.primaryColor,
                        decoration: TextDecoration.underline,
                        decorationColor:
                            dark ? Colors.white : AppColors.primaryColor)),
                TextSpan(
                    text: " and ",
                    style: Theme.of(context).textTheme.bodySmall),
                TextSpan(
                    text: "Terms of use",
                    style: Theme.of(context).textTheme.bodyMedium!.apply(
                        color: dark ? Colors.white : AppColors.primaryColor,
                        decoration: TextDecoration.underline,
                        decorationColor:
                            dark ? Colors.white : AppColors.primaryColor)),
              ])),
            ],
          ),
          const SizedBox(
            height: Sizes.spaceBtwItems,
          ),
          SizedBox(
              width: Get.width,
              child: ElevatedButton(
                  onPressed: () {
                    Get.to(() => VerifyEmailScreen());
                  },
                  child: const Text("Create Account"))),
        ],
      ),
    );
  }
}
