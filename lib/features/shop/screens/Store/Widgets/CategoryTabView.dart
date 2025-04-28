import 'package:ecommerce_app/common/widgets/Layouts/CustomGridLayout.dart';
import 'package:ecommerce_app/common/widgets/Products/ProductCardVertical.dart';
import 'package:ecommerce_app/common/widgets/Text/SectionHeading.dart';
import 'package:flutter/material.dart';

import '../../../../../common/widgets/Brands/BrandShowcaseWidget.dart';
import '../../../../../utils/constants/image_strings.dart';
import '../../../../../utils/constants/sizes.dart';

class CategoryTabView extends StatelessWidget {
  const CategoryTabView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        children: [
          Padding(
            padding: const EdgeInsets.all(Sizes.defaultSpace),
            child: Column(
              children: [
                // brands
                const CustomBrandShowcaseContainer(
                  brandLogo: ImageStrings.sportIcon,
                  brandName: "Heskol",
                  products: 250,
                  images: [
                    ImageStrings.product1,
                    ImageStrings.product4,
                    ImageStrings.product3
                  ],
                ),
                const CustomBrandShowcaseContainer(
                  brandLogo: ImageStrings.sportIcon,
                  brandName: "Heskol",
                  products: 250,
                  images: [
                    ImageStrings.product1,
                    ImageStrings.product4,
                    ImageStrings.product3
                  ],
                ),
                const SizedBox(
                  height: Sizes.spaceBtwItems,
                ),

                // Products

                const SectionHeading(
                  title: "You might like",
                  showButton: true,
                  buttonTitle: "View all",
                ),
                const SizedBox(
                  height: Sizes.spaceBtwItems,
                ),
                CustomGridLayout(
                    itemCount: 4,
                    itemBuilder: (_, index) => const ProductCardVertical())
              ],
            ),
          ),
        ]);
  }
}
