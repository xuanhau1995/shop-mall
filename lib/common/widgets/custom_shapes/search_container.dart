import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:shopping_mall/util/constant/colors.dart';
import 'package:shopping_mall/util/constant/sizes.dart';
import 'package:shopping_mall/util/device/device_utility.dart';
import 'package:shopping_mall/util/helpers/helper_functions.dart';

class TSearchContainer extends StatelessWidget {
  const TSearchContainer({
    super.key,
    this.text = '',
    this.icon = Iconsax.search_normal,
    this.showBackgroud = true,
    this.showBorder = true,
    this.onTap,
    this.padding =
        const EdgeInsets.symmetric(horizontal: TSizes.defaultSpacing),
  });

  final String text;
  final IconData? icon;
  final bool showBackgroud, showBorder;
  final EdgeInsetsGeometry padding;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);

    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: padding,
        child: Container(
          width: TDeviceUtils.getScreenWidth(),
          padding: EdgeInsets.all(TSizes.md),
          decoration: BoxDecoration(
            color: showBackgroud
                ? dark
                    ? IColors.dark
                    : IColors.light
                : Colors.transparent,
            borderRadius: BorderRadius.circular(TSizes.cardRadiusMd),
            border: showBorder ? Border.all(color: IColors.grey) : null,
          ),
          child: Row(
            children: [
              Icon(icon, color: dark ? IColors.white : IColors.black),
              const SizedBox(width: TSizes.spaceBtwItems),
              Text(
                text,
                style: Theme.of(context).textTheme.headlineSmall,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
