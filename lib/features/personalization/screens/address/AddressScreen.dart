import 'package:ecommerce_app/common/widgets/AppBar/Appbar.dart';
import 'package:ecommerce_app/common/widgets/CustomShapes/CustomRoundedContainer.dart';
import 'package:ecommerce_app/features/personalization/screens/address/NewAddressScreen.dart';
import 'package:ecommerce_app/features/personalization/screens/address/Widgets/SingleAddress.dart';
import 'package:ecommerce_app/utils/constants/colors.dart';
import 'package:ecommerce_app/utils/constants/sizes.dart';
import 'package:ecommerce_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class AddressScreen extends StatelessWidget {
  const AddressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = helperFunctions.isDarkMode(context);
    return AnnotatedRegion(
      value: SystemUiOverlayStyle(
          statusBarColor: dark ? AppColors.black : AppColors.white,
          statusBarIconBrightness: dark ? Brightness.light : Brightness.dark),
      child: SafeArea(
        child: Scaffold(
          floatingActionButton: FloatingActionButton(
              mini: true,
              backgroundColor: AppColors.primaryColor,
              child: Icon(
                Iconsax.add,
                color: AppColors.white,
              ),
              onPressed: () => Get.to(() => AddNewAddressScreen())),
          appBar: CustomAppBar(
            title: Text(
              "Addresses",
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ),
          body: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.all(Sizes.defaultSpace),
              child: Column(
                children: [
                  CustomSingleAddress(selectedAddress: true),
                  CustomSingleAddress(selectedAddress: false),
                  CustomSingleAddress(selectedAddress: false)
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
