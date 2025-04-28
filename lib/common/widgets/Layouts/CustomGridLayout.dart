import 'package:flutter/material.dart';

import '../../../utils/constants/sizes.dart';
import '../Products/ProductCardVertical.dart';

class CustomGridLayout extends StatelessWidget {
  const CustomGridLayout({
    super.key,
    required this.itemCount,
    this.mainAxisExtent = 275,
    required this.itemBuilder,
  });

  final int itemCount;
  final double? mainAxisExtent;
  final Widget? Function(BuildContext, int) itemBuilder;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: itemCount,
        shrinkWrap: true,
        padding: EdgeInsets.zero,
        physics: const NeverScrollableScrollPhysics(),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: Sizes.gridViewSpacing,
            crossAxisSpacing: Sizes.gridViewSpacing,
            mainAxisExtent: mainAxisExtent),
        itemBuilder: itemBuilder);
  }
}
