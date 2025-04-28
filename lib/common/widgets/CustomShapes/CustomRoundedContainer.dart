import 'package:ecommerce_app/utils/constants/colors.dart';
import 'package:ecommerce_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class CustomRoundedContainer extends StatelessWidget {
  const CustomRoundedContainer(
      {super.key,
      this.width,
      this.height,
      this.borderRadius = Sizes.cardRadiusLg,
      this.child,
      this.showBorder = false,
      this.borderColor = AppColors.borderPrimary,
      this.backgroundColor = AppColors.white,
      this.margin,
      this.padding});

  final double? width;
  final double? height;
  final double borderRadius;
  final Widget? child;
  final bool showBorder;
  final Color borderColor;
  final Color backgroundColor;
  final EdgeInsetsGeometry? margin;
  final EdgeInsetsGeometry? padding;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      padding: padding,
      margin: margin,
      decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(borderRadius),
          border: showBorder ? Border.all(color: borderColor) : null),
      child: child,
    );
  }
}
