import 'package:flutter/material.dart';
import 'package:shopping_mall/common/widgets/custom_shapes/primary_header_container.dart';
import 'package:shopping_mall/common/widgets/custom_shapes/search_container.dart';
import 'package:shopping_mall/common/widgets/layouts/grid_layout.dart';
import 'package:shopping_mall/common/widgets/products/product_card_vertical.dart';
import 'package:shopping_mall/common/widgets/texts/section_heading.dart';
import 'package:shopping_mall/features/shop/screens/home/widgets/home_app_bar.dart';
import 'package:shopping_mall/features/shop/screens/home/widgets/home_categories.dart';
import 'package:shopping_mall/features/shop/screens/home/widgets/home_promo_slider.dart';
import 'package:shopping_mall/util/constant/colors.dart';
import 'package:shopping_mall/util/constant/image_strings.dart';
import 'package:shopping_mall/util/constant/sizes.dart';
import 'package:shopping_mall/util/helpers/helper_functions.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            TPrimaryHeaderContainer(
              child: Column(
                children: [
                  /// * Header
                  const THomeAppBar(),
                  const SizedBox(height: TSizes.spaceBtwSections),

                  /// * Search Bar
                  TSearchContainer(
                    text: 'Search in store',
                    onTap: () {},
                  ),
                  const SizedBox(height: TSizes.spaceBtwSections),

                  /// * Categories
                  Padding(
                    padding: const EdgeInsets.only(left: TSizes.defaultSpacing),
                    child: Column(
                      children: [
                        /// * Heading
                        TSectionHeading(
                            title: 'Popular Categories',
                            showActionButton: false),
                        const SizedBox(height: TSizes.spaceBtwItems),

                        /// * Categories
                        THomeCategories()
                      ],
                    ),
                  ),
                ],
              ),
            ),

            /// * Body
            Padding(
              padding: const EdgeInsets.all(TSizes.spaceBtwItems),
              child: Column(
                children: [
                  TPromoSlider(
                    banners: [
                      IImages.banner1,
                      IImages.banner2,
                      IImages.banner3,
                    ],
                  ),
                  const SizedBox(height: TSizes.spaceBtwItems),

                  /// * Heading
                  TSectionHeading(
                    title: 'Popular Products',
                    textColor: dark ? IColors.white : IColors.dark,
                    buttonTitle: 'View all',
                  ),
                  const SizedBox(height: TSizes.xs),

                  /// * Product lists
                  TGridLayout(
                    itemBuilder: (_, index) => TProductCardVertical(),
                    itemCount: 10,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
