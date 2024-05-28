import 'package:flutter/material.dart';
import 'package:shopping_mall/util/constant/colors.dart';
import 'package:shopping_mall/util/constant/sizes.dart';
import 'package:shopping_mall/util/helpers/helper_functions.dart';

class TVerticalImageText extends StatelessWidget {
  const TVerticalImageText({
    super.key,
    required this.image,
    required this.label,
    this.backgroudColor,
    this.onTap,
    this.textColor = IColors.white,
  });

  final String image, label;
  final Color? backgroudColor;
  final void Function()? onTap;
  final Color? textColor;

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);

    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: EdgeInsets.only(right: TSizes.spaceBtwItems),
        child: Column(
          children: [
            // ignore: sized_box_for_whitespace

            /// * Circular icon
            Container(
              width: 54,
              height: 54,
              padding: EdgeInsets.all(TSizes.sm),
              decoration: BoxDecoration(
                color: backgroudColor ?? (dark ? IColors.black : IColors.white),
                borderRadius: BorderRadius.circular(50),
              ),
              child: Center(
                child: Image(
                  image: AssetImage(image),
                  fit: BoxFit.contain,
                ),
              ),
            ),
            const SizedBox(height: TSizes.spaceBtwItems / 2),

            /// * Text
            SizedBox(
              width: 50,
              child: Text(
                label,
                style: Theme.of(context).textTheme.labelSmall!.apply(
                    color: textColor ?? (dark ? IColors.dark : IColors.white)),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            )
          ],
        ),
      ),
    );
  }
}
