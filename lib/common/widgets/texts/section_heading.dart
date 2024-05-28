import 'package:flutter/material.dart';
import 'package:shopping_mall/util/constant/colors.dart';
import 'package:shopping_mall/util/helpers/helper_functions.dart';

class TSectionHeading extends StatelessWidget {
  const TSectionHeading({
    super.key,
    this.textColor = IColors.textWhite,
    this.onPressed,
    this.showActionButton = true,
    required this.title,
    this.buttonTitle = 'View All',
    this.titleColor,
  });

  final Color? textColor;
  final bool showActionButton;
  final String title, buttonTitle;
  final Color? titleColor;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: Theme.of(context)
              .textTheme
              .headlineSmall!
              .copyWith(color: textColor, fontWeight: FontWeight.w700),
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
        if (showActionButton)
          TextButton(
            onPressed: onPressed,
            child: Text(
              buttonTitle,
              style: TextStyle(
                color: titleColor ?? (dark ? IColors.white : IColors.info),
              ),
            ),
          ),
      ],
    );
  }
}
