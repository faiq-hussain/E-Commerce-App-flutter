import 'package:ecommerce_app/utils/constants/image_strings.dart';
import 'package:flutter/material.dart';

import '../../../../../common/widgets/Imagetext/verticalImageTextWidget.dart';

class CategoryListScrollableWidget extends StatelessWidget {
  const CategoryListScrollableWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView.builder(
          shrinkWrap: true,
          itemCount: 6,
          scrollDirection: Axis.horizontal,
          itemBuilder: (_, index) {
            return VerticalImageText(
              onTap: () {},
              title: "Animals",
              image: ImageStrings.animalIcon,
            );
          }),
    );
  }
}
