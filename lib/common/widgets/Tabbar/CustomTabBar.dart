import 'package:flutter/material.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/device/device_utility.dart';
import '../../../utils/helpers/helper_functions.dart';

class CustomTabBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomTabBar({
    required this.tabs,
    this.labelColor,
    this.indicatorColor,
    this.unselectedLabelColor,
    this.isScrollable = false,
    this.padding,
    super.key,
  });

  final List<Widget> tabs;
  final Color? indicatorColor, labelColor, unselectedLabelColor;
  final EdgeInsetsGeometry? padding;
  final bool isScrollable;

  @override
  Widget build(BuildContext context) {
    final dark = helperFunctions.isDarkMode(context);
    return Material(
      color: dark ? AppColors.black : AppColors.white,
      child: TabBar(
          tabAlignment: TabAlignment.start,
          padding: padding,
          indicatorColor: AppColors.primaryColor,
          labelColor: labelColor,
          isScrollable: isScrollable,
          unselectedLabelColor: unselectedLabelColor,
          tabs: tabs),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(DeviceUtils.getAppBarHeight());
}
