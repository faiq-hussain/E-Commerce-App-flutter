import 'package:ecommerce_app/common/widgets/CustomShapes/CurvedEdgeWidgets.dart';
import 'package:ecommerce_app/utils/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

//Home Screen Header

class PrimaryHomeHeader extends StatelessWidget {
  const PrimaryHomeHeader({
    required this.child,
    super.key,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return CurvedEdgeWidget(
      child: Container(
        color: AppColors.primaryColor,
        child: Stack(
          children: [
            Positioned(
              top: -50,
              right: -160,
              child: Container(
                width: 300,
                height: 300,
                padding: const EdgeInsets.all(0),
                decoration: BoxDecoration(
                  color: AppColors.textWhite.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(200),
                ),
              ),
            ),
            Positioned(
              bottom: -50,
              right: -200,
              child: Container(
                width: 300,
                height: 300,
                padding: const EdgeInsets.all(0),
                decoration: BoxDecoration(
                  color: AppColors.textWhite.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(200),
                ),
              ),
            ),
            child
          ],
        ),
      ),
    );
  }
}
