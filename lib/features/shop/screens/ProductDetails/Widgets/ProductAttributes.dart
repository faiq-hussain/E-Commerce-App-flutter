import 'package:ecommerce_app/common/widgets/CustomShapes/CustomRoundedContainer.dart';
import 'package:ecommerce_app/common/widgets/Text/ProductPriceText.dart';
import 'package:ecommerce_app/common/widgets/Text/ProductTitle.dart';
import 'package:ecommerce_app/common/widgets/Text/SectionHeading.dart';
import 'package:ecommerce_app/utils/constants/colors.dart';
import 'package:ecommerce_app/utils/constants/sizes.dart';
import 'package:ecommerce_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';

import '../../../../../common/widgets/Chips/CustomChoiceChip.dart';

class ProductAttributes extends StatelessWidget {
  const ProductAttributes({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = helperFunctions.isDarkMode(context);
    return Column(
      children: [
        // Selected attribute prices and description
        CustomRoundedContainer(
          padding: EdgeInsets.all(Sizes.md),
          backgroundColor: dark ? AppColors.darkergrey : AppColors.grey,
          child: Column(
            children: [
              Row(
                children: [
                  const SectionHeading(
                    title: "Variation",
                    showButton: false, // Change 'F' to 'false'
                  ),
                  SizedBox(
                    width: Sizes.spaceBtwItems / 2,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          ProductTitleText(
                            title: "Price:  ",
                            smallSize: true,
                          ),
                          // Actual Price
                          Text(
                            "\$25",
                            style: Theme.of(context)
                                .textTheme
                                .titleSmall!
                                .apply(decoration: TextDecoration.lineThrough),
                          ),
                          SizedBox(
                            width: Sizes.spaceBtwItems / 2,
                          ),
                          // Sale Price
                          ProductPriceText(
                            price: "\$20",
                          )
                        ],
                      ),
                      Row(
                        children: [
                          ProductTitleText(
                            title: "Stock: ",
                            smallSize: T,
                          ),
                          Text(" In Stock",
                              style: Theme.of(context)
                                  .textTheme
                                  .titleMedium!
                                  .apply(fontWeightDelta: 1)),
                        ],
                      )
                    ],
                  )
                ],
              ),
              //Variation Description
              ProductTitleText(
                title:
                    "This is the description of product and it can be of max 4 lines hdasyuaohfyahgyrgaoeygayrgya",
                smallSize: true,
                maxLines: 4,
              ),
            ],
          ),
        ),
        SizedBox(
          height: Sizes.spaceBtwItems,
        ),

        //Attributes
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Wrap(
              spacing: -4,
              children: [
                SectionHeading(
                  title: "Colors",
                  showButton: false,
                ),
                SizedBox(
                  height: Sizes.spaceBtwItems / 2,
                ),
                CustomChoiceChip(
                  onSelected: (Value) {},
                  text: "Green",
                  selected: false,
                ),
                CustomChoiceChip(
                  onSelected: (Value) {},
                  text: "Blue",
                  selected: true,
                ),
                CustomChoiceChip(
                  onSelected: (Value) {},
                  text: "Purple",
                  selected: false,
                ),
                CustomChoiceChip(
                  onSelected: (Value) {},
                  text: "Yellow",
                  selected: false,
                ),
              ],
            ),
          ],
        ),
        Column(
          children: [
            Wrap(
              spacing: 2,
              children: [
                SectionHeading(
                  title: "Size",
                  showButton: false,
                  buttonTitle: "View all",
                ),
                SizedBox(
                  height: Sizes.spaceBtwItems / 2,
                ),
                CustomChoiceChip(
                  onSelected: (Value) {},
                  text: "EU 28",
                  selected: false,
                ),
                CustomChoiceChip(
                  onSelected: (Value) {},
                  text: "EU 30",
                  selected: false,
                ),
                CustomChoiceChip(
                  onSelected: (Value) {},
                  text: "EU 32",
                  selected: true,
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
