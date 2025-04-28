import 'package:ecommerce_app/common/widgets/AppBar/Appbar.dart';
import 'package:ecommerce_app/common/widgets/Images/CustomCircularImage.dart';
import 'package:ecommerce_app/common/widgets/Text/SectionHeading.dart';
import 'package:ecommerce_app/utils/constants/colors.dart';
import 'package:ecommerce_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';
import 'package:iconsax/iconsax.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title:
            Text("Profile", style: Theme.of(context).textTheme.headlineMedium),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(Sizes.defaultSpace),
          child: Column(
            children: [
              //Profile Picture
              SizedBox(
                width: Get.width,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CustomCircularImage(
                        height: 80,
                        width: 80,
                        fit: BoxFit.contain,
                        padding: 0,
                        isNetworkImage: true,
                        image:
                            "https://media.licdn.com/dms/image/v2/D4D03AQGpraJvt5Dj7Q/profile-displayphoto-shrink_400_400/profile-displayphoto-shrink_400_400/0/1704352070580?e=1730937600&v=beta&t=05N0m2-wK0NpBOT5gbo9ecpk_4tgn9tqUN9ys19iRXA"),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        "Change Profile Picture",
                        style: Theme.of(context).textTheme.labelSmall!.apply(
                              fontSizeDelta: 3,
                            ),
                      ),
                    ),
                  ],
                ),
              ),

              // Details

              SizedBox(
                height: Sizes.spaceBtwItems / 2,
              ),
              Divider(),
              SizedBox(
                height: Sizes.spaceBtwItems,
              ),
              SectionHeading(
                title: "Profile Information",
                showButton: F,
              ),
              SizedBox(
                height: Sizes.spaceBtwItems,
              ),
              ProfileMenu(
                title: "Name",
                value: "Faiq Hussain",
                onPressed: () {},
              ),
              ProfileMenu(
                title: "Username",
                value: "faiq_hussain12",
                onPressed: () {},
              ),
              SizedBox(
                height: Sizes.spaceBtwItems,
              ),
              Divider(),
              SizedBox(
                height: Sizes.spaceBtwItems,
              ),
              SectionHeading(
                title: "Personal Information",
                showButton: F,
              ),
              SizedBox(
                height: Sizes.spaceBtwItems,
              ),
              ProfileMenu(
                icon: Iconsax.copy,
                title: "User ID",
                value: "12345",
                onPressed: () {},
              ),
              ProfileMenu(
                title: "E-mail",
                value: "faiqhussain@gmail.com",
                onPressed: () {},
              ),
              ProfileMenu(
                title: "Phone Number",
                value: "+92-123-4567890",
                onPressed: () {},
              ),
              ProfileMenu(
                title: "Gender",
                value: "Male",
                onPressed: () {},
              ),
              ProfileMenu(
                title: "Date Of Birth",
                value: "04 Dec, 2003",
                onPressed: () {},
              ),

              Divider(),
              SizedBox(
                height: Sizes.spaceBtwItems / 2 ,
              ),
              TextButton(
                  onPressed: () {},
                  child: Text(
                    "Close Account",
                    style: Theme.of(context).textTheme.labelSmall!.apply(
                          color: Colors.red,
                          fontSizeDelta: 3,
                        ),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}

class ProfileMenu extends StatelessWidget {
  const ProfileMenu({
    super.key,
    this.icon = Iconsax.arrow_right_34,
    required this.onPressed,
    required this.title,
    required this.value,
  });

  final IconData? icon;
  final VoidCallback onPressed;
  final String title, value;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: Sizes.spaceBtwItems / 2),
        child: Row(
          children: [
            Expanded(
              flex: 3,
              child: Text(
                title,
                style: Theme.of(context).textTheme.bodySmall,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            Expanded(
              flex: 5,
              child: Text(
                value,
                style: Theme.of(context).textTheme.bodyLarge,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            Expanded(
              child: Icon(
                icon,
                size: 18,
              ),
            )
          ],
        ),
      ),
    );
  }
}
