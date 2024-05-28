import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:shopping_mall/common/styles/shadows.dart';
import 'package:shopping_mall/common/widgets/container/rounded_container.dart';
import 'package:shopping_mall/common/widgets/icons/t_circular_icon.dart';
import 'package:shopping_mall/common/widgets/images/rounded_image.dart';
import 'package:shopping_mall/common/widgets/products/product_price.dart';
import 'package:shopping_mall/common/widgets/products/product_title_text.dart';
import 'package:shopping_mall/common/widgets/products/brand_title_text.dart';
import 'package:shopping_mall/util/constant/colors.dart';
import 'package:shopping_mall/util/constant/image_strings.dart';
import 'package:shopping_mall/util/constant/sizes.dart';
import 'package:shopping_mall/util/helpers/helper_functions.dart';

class TProductCardVertical extends StatelessWidget {
  const TProductCardVertical({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);

    return GestureDetector(
      onTap: () {},
      child: Container(
        width: 180,
        padding: EdgeInsets.all(1),
        decoration: BoxDecoration(
          boxShadow: [TShadowStyle.verticalProductShadow],
          borderRadius: BorderRadius.circular(TSizes.productImageRadius),
          color: dark ? IColors.darkerGrey : IColors.white,
        ),
        child: Column(
          children: [
            /// * Thumbnail, Wishlist Button,...
            TRoundedContainer(
              height: 180,
              padding: const EdgeInsets.all(TSizes.sm),
              backgroundColor: dark ? IColors.dark : IColors.light,
              showBorder: false,
              radius: TSizes.productImageRadius,
              child: Stack(
                children: [
                  /// * Thumbnail
                  TRoundedImage(
                      imageUrl: IImages.shose, applyImageRadius: true),

                  /// * Sale Tag
                  Positioned(
                    top: 2,
                    child: TRoundedContainer(
                      radius: TSizes.sm,
                      backgroundColor: IColors.secondary.withOpacity(0.8),
                      showBorder: false,
                      padding: const EdgeInsets.symmetric(
                          horizontal: TSizes.sm, vertical: TSizes.xs),
                      child: Text(
                        '25%',
                        style: Theme.of(context)
                            .textTheme
                            .labelLarge!
                            .apply(color: IColors.black),
                      ),
                    ),
                  ),

                  /// * Favorites icon
                  Positioned(
                    top: 0,
                    right: 0,
                    child: TCircularIcon(
                      icon: Iconsax.heart5,
                      color: Colors.red,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: TSizes.spaceBtwItems / 2),

            /// * Details
            Padding(
              padding: const EdgeInsets.only(left: TSizes.sm),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TProductTitleText(
                    title: 'Green Nike air shose',
                  ),
                  const SizedBox(height: TSizes.spaceBtwItems / 2),

                  /// * Label
                  TBrandTitleText(
                    brandTitle: 'Nike',
                  ),
                ],
              ),
            ),

            const Spacer(),

            /// * Price
            TProductPrice()
          ],
        ),
      ),
    );
  }
}
