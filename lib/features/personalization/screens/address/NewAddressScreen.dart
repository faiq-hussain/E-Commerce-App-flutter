import 'package:ecommerce_app/common/widgets/AppBar/Appbar.dart';
import 'package:ecommerce_app/utils/constants/sizes.dart';
import 'package:ecommerce_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import '../../../../utils/constants/colors.dart';

class AddNewAddressScreen extends StatelessWidget {
  const AddNewAddressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = helperFunctions.isDarkMode(context);
    return AnnotatedRegion(
      value: SystemUiOverlayStyle(
          statusBarColor: dark ? AppColors.black : AppColors.white,
          statusBarIconBrightness: dark ? Brightness.light : Brightness.dark),
      child: SafeArea(
        child: Scaffold(
          appBar: CustomAppBar(
            title: Text("Add New Address"),
          ),
          body: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.all(Sizes.defaultSpace),
              child: Form(
                child: Column(
                  children: [
                    TextFormField(
                      decoration: InputDecoration(
                        prefixIcon: Icon(Iconsax.user),
                        labelText: "Name",
                      ),
                    ),
                    SizedBox(
                      height: Sizes.spaceBtwInputFields,
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                        prefixIcon: Icon(Iconsax.mobile),
                        labelText: "Phone Number",
                      ),
                    ),
                    SizedBox(
                      height: Sizes.spaceBtwInputFields,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: TextFormField(
                            decoration: InputDecoration(
                              prefixIcon: Icon(Iconsax.building_31),
                              labelText: "Street",
                            ),
                          ),
                        ),
                        SizedBox(
                          width: Sizes.spaceBtwInputFields,
                        ),
                        Expanded(
                          child: TextFormField(
                            decoration: InputDecoration(
                              prefixIcon: Icon(Iconsax.code),
                              labelText: "Postal Code",
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: Sizes.spaceBtwInputFields,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: TextFormField(
                            decoration: InputDecoration(
                              prefixIcon: Icon(Iconsax.building),
                              labelText: "City",
                            ),
                          ),
                        ),
                        SizedBox(
                          width: Sizes.spaceBtwInputFields,
                        ),
                        Expanded(
                          child: TextFormField(
                            decoration: InputDecoration(
                              prefixIcon: Icon(Iconsax.activity),
                              labelText: "State",
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: Sizes.spaceBtwInputFields,
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                        prefixIcon: Icon(Iconsax.global),
                        labelText: "Country",
                      ),
                    ),
                    SizedBox(
                      height: Sizes.defaultSpace,
                    ),
                    SizedBox(
                      width: Get.width,
                      child: ElevatedButton(
                        onPressed: () {},
                        child: Text("Save"),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
