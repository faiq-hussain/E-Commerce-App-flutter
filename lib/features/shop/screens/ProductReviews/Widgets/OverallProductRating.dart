import 'package:ecommerce_app/features/shop/screens/ProductReviews/Widgets/CustomLinearProgressIndicator.dart';
import 'package:flutter/material.dart';

class OverallProductRating extends StatelessWidget {
  const OverallProductRating({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 3,
          child: Text(
            "4.7",
            style: Theme.of(context).textTheme.displayLarge,
          ),
        ),
        Expanded(
          flex: 7,
          child: Column(
            children: [
              CustomLinearProgressIndicator(
                value: 0.8,
                text: "5",
              ),
              CustomLinearProgressIndicator(
                value: 0.3,
                text: "4",
              ),
              CustomLinearProgressIndicator(
                value: 0.2,
                text: "3",
              ),
              CustomLinearProgressIndicator(
                value: 0.1,
                text: "2",
              ),
              CustomLinearProgressIndicator(
                value: 0.05,
                text: "1",
              ),
            ],
          ),
        )
      ],
    );
  }
}
