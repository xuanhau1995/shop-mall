import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:shopping_mall/util/constant/colors.dart';
import 'package:shopping_mall/util/constant/sizes.dart';

class TProductPrice extends StatelessWidget {
  const TProductPrice({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: TSizes.sm),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          /// * Price
          Text(
            '\$35.5',
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: Theme.of(context).textTheme.headlineMedium,
          ),

          Container(
            decoration: BoxDecoration(
              color: IColors.black,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(TSizes.cardRadiusMd),
                bottomRight: Radius.circular(TSizes.cardRadiusLg),
              ),
            ),
            child: SizedBox(
              height: TSizes.iconLg * 1.2,
              width: TSizes.iconLg * 1.2,
              child: Center(child: Icon(Iconsax.add, color: IColors.white)),
            ),
          ),
        ],
      ),
    );
  }
}
