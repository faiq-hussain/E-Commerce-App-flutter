import 'package:ecommerce_app/utils/constants/colors.dart';
import 'package:flutter/material.dart';

class SettingsMenutile extends StatelessWidget {
  const SettingsMenutile(
      {super.key,
      required this.title,
      required this.subtitle,
      required this.icon,
      this.onTap,
      this.trailing});

  final String title, subtitle;
  final IconData icon;
  final Widget? trailing;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(
        icon,
        size: 28,
        color: AppColors.primaryColor,
      ),
      title: Text(
        title,
        style: Theme.of(context).textTheme.titleMedium,
      ),
      subtitle: Text(
        subtitle,
        style: Theme.of(context).textTheme.labelMedium,
      ),
      trailing: trailing,
      onTap: onTap,
    );
  }
}
