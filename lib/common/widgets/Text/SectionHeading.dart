import 'package:flutter/material.dart';

import '../../../utils/constants/colors.dart';

class SectionHeading extends StatelessWidget {
  const SectionHeading({
    this.onPressed,
    required this.title,
    this.showButton = true,
    this.textColor,
    this.buttonTitle = "View all",
    super.key,
  });
  final String title;
  final Color? textColor;
  final String buttonTitle;
  final bool showButton;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: Theme.of(context)
              .textTheme
              .headlineSmall!
              .apply(color: textColor),
        ),
        if (showButton)
          TextButton(
              onPressed: onPressed,
              child: Text(
                buttonTitle.toString(),
                style: Theme.of(context)
                    .textTheme
                    .labelLarge!
                    .apply(color: AppColors.darkgrey, fontSizeFactor: 1.1),
              ))
      ],
    );
  }
}
