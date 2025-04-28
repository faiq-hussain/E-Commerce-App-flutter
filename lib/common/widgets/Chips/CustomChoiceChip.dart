import 'package:ecommerce_app/common/widgets/CustomShapes/CustomRoundedContainer.dart';
import 'package:ecommerce_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

import '../../../utils/constants/colors.dart';

class CustomChoiceChip extends StatelessWidget {
  const CustomChoiceChip({
    required this.text,
    required this.selected,
    this.onSelected,
    super.key,
  });
  final String text;
  final bool selected;
  final void Function(bool)? onSelected;

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(canvasColor: Colors.transparent),
      child: ChoiceChip(
          label:
              helperFunctions.getColor(text) != null ? SizedBox() : Text(text),
          labelStyle: TextStyle(color: selected ? AppColors.white : null),
          selected: selected,
          avatar: helperFunctions.getColor(text) != null
              ? CustomRoundedContainer(
                  width: 50,
                  height: 50,
                  backgroundColor: helperFunctions.getColor(text)!)
              : null,
          shape: helperFunctions.getColor(text) != null ? CircleBorder() : null,
          labelPadding:
              helperFunctions.getColor(text) != null ? EdgeInsets.zero : null,
          padding:
              helperFunctions.getColor(text) != null ? EdgeInsets.zero : null,
          backgroundColor: helperFunctions.getColor(text) != null
              ? helperFunctions.getColor(text)
              : null,
          onSelected: onSelected),
    );
  }
}
