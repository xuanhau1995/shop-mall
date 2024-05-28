import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:shopping_mall/util/constant/colors.dart';
import 'package:shopping_mall/util/constant/enums.dart';
import 'package:shopping_mall/util/constant/sizes.dart';

class TBrandTitleText extends StatelessWidget {
  const TBrandTitleText({
    super.key,
    required this.brandTitle,
    this.maxLines = 1,
    this.textColor = IColors.darkGrey,
    this.iconColor = IColors.primary,
    this.textAlign = TextAlign.center,
    this.brandTextSize = TextSizes.small,
  });

  final String brandTitle;
  final int maxLines;
  final Color? textColor, iconColor;
  final TextAlign? textAlign;
  final TextSizes? brandTextSize;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          brandTitle,
          overflow: TextOverflow.ellipsis,
          maxLines: 1,

          // Style
          style: brandTextSize == TextSizes.small
              ? Theme.of(context).textTheme.labelLarge!.apply(color: textColor)
              : brandTextSize == TextSizes.medium
                  ? Theme.of(context)
                      .textTheme
                      .bodyLarge!
                      .apply(color: textColor)
                  : brandTextSize == TextSizes.large
                      ? Theme.of(context)
                          .textTheme
                          .titleLarge!
                          .apply(color: textColor)
                      : Theme.of(context)
                          .textTheme
                          .bodyMedium!
                          .apply(color: textColor),
        ),
        const SizedBox(width: TSizes.xs),
        Icon(Iconsax.verify5, color: iconColor, size: TSizes.iconXs)
      ],
    );
  }
}
