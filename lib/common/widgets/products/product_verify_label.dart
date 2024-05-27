import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:shopping_mall/util/constant/colors.dart';
import 'package:shopping_mall/util/constant/sizes.dart';

class TProductVerifyLabel extends StatelessWidget {
  const TProductVerifyLabel({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'Nike',
          overflow: TextOverflow.ellipsis,
          maxLines: 1,
          style: Theme.of(context)
              .textTheme
              .labelLarge!
              .apply(color: IColors.darkGrey),
        ),
        const SizedBox(width: TSizes.xs),
        const Icon(Iconsax.verify5, color: IColors.primary, size: TSizes.iconXs)
      ],
    );
  }
}
