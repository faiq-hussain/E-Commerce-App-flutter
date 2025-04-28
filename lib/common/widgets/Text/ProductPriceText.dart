import 'package:flutter/material.dart';

class ProductPriceText extends StatelessWidget {
  const ProductPriceText({
    this.currency = "\$",
    required this.price,
    this.maxLines = 1,
    this.overflow = TextOverflow.ellipsis,
    this.isLarge = false,
    this.islineThrough = false,
    super.key,
  });

  final String currency, price;
  final int maxLines;
  final TextOverflow? overflow;
  final bool isLarge;
  final bool islineThrough;

  @override
  Widget build(BuildContext context) {
    return Text(
      currency + price,
      maxLines: 1,
      overflow: TextOverflow.ellipsis,
      style: isLarge
          ? Theme.of(context).textTheme.headlineMedium!.apply(
              decoration: islineThrough ? TextDecoration.lineThrough : null)
          : Theme.of(context).textTheme.titleLarge!.apply(
              decoration: islineThrough ? TextDecoration.lineThrough : null),
    );
  }
}
