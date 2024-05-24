import 'package:flutter/material.dart';
import 'package:shopping_mall/util/constant/colors.dart';
import 'package:shopping_mall/util/constant/image_strings.dart';
import 'package:shopping_mall/util/constant/sizes.dart';
import 'package:shopping_mall/util/helpers/helper_functions.dart';

class TSocialButtons extends StatelessWidget {
  const TSocialButtons({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          decoration: BoxDecoration(
              border: Border.all(color: dark ? IColors.darkGrey : IColors.grey),
              borderRadius: BorderRadius.circular(100)),
          child: IconButton(
            icon: const Image(
              width: TSizes.iconSm,
              height: TSizes.iconSm,
              image: AssetImage(IImages.google),
            ),
            onPressed: () {},
          ),
        ),
        const SizedBox(width: TSizes.spaceBtwItems),
        Container(
          decoration: BoxDecoration(
              border: Border.all(color: dark ? IColors.darkGrey : IColors.grey),
              borderRadius: BorderRadius.circular(100)),
          child: IconButton(
            icon: const Image(
              width: TSizes.iconSm,
              height: TSizes.iconSm,
              image: AssetImage(IImages.facebook),
            ),
            onPressed: () {},
          ),
        ),
      ],
    );
  }
}
