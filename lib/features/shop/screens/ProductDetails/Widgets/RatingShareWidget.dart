import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../utils/constants/sizes.dart';

class RatingAndShare extends StatelessWidget {
  const RatingAndShare({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        //Rating
        Row(
          children: [
            Icon(
              Iconsax.star5,
              color: Colors.amber,
            ),
            SizedBox(
              width: Sizes.spaceBtwItems / 2,
            ),
            Text.rich(TextSpan(children: [
              TextSpan(
                text: "5.0 ",
                style: Theme.of(context).textTheme.bodyLarge,
              ),
              TextSpan(text: "(120)")
            ]))
          ],
        ),
        //Share Button
        IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.share,
              size: Sizes.iconMd,
            ))
      ],
    );
  }
}
