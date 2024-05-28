import 'package:flutter/material.dart';
import 'package:shopping_mall/common/widgets/appbar/appbar.dart';
import 'package:shopping_mall/common/widgets/container/rounded_container.dart';
import 'package:shopping_mall/common/widgets/custom_shapes/search_container.dart';
import 'package:shopping_mall/common/widgets/images/circular_icon_image.dart';
import 'package:shopping_mall/common/widgets/layouts/grid_layout.dart';
import 'package:shopping_mall/common/widgets/products/brand_title_text.dart';
import 'package:shopping_mall/common/widgets/products/cart_counter_icon.dart';
import 'package:shopping_mall/common/widgets/texts/section_heading.dart';
import 'package:shopping_mall/util/constant/colors.dart';
import 'package:shopping_mall/util/constant/enums.dart';
import 'package:shopping_mall/util/constant/image_strings.dart';
import 'package:shopping_mall/util/constant/sizes.dart';
import 'package:shopping_mall/util/helpers/helper_functions.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);

    return Scaffold(
      appBar: TAppBar(
        title: Text('Store', style: Theme.of(context).textTheme.headlineMedium),
        showBackArrow: false,
        backgroundColor: dark ? IColors.dark : IColors.white,
        actions: [TCartCounterIcon()],
      ),

      /// * Body
      body: NestedScrollView(
        headerSliverBuilder: (_, innerBoxIsScrolled) {
          return [
            SliverAppBar(
              automaticallyImplyLeading: false,
              pinned: true,
              floating: true,
              backgroundColor: THelperFunctions.isDarkMode(context)
                  ? IColors.dark
                  : IColors.white,
              expandedHeight: 440,

              ///*
              flexibleSpace: Padding(
                padding: const EdgeInsets.all(TSizes.defaultSpacing),
                child: ListView(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  children: [
                    /// * Search Bar
                    SizedBox(
                      height: TSizes.spaceBtwItems,
                    ),
                    TSearchContainer(
                      text: "Search in store",
                      showBorder: true,
                      showBackgroud: false,
                      padding: EdgeInsets.zero,
                    ),
                    SizedBox(
                      height: TSizes.spaceBtwItems,
                    ),

                    /// * Features Brand
                    TSectionHeading(
                      title: 'Features Brand',
                      textColor: dark ? IColors.white : IColors.dark,
                      onPressed: () {},
                    ),
                    const SizedBox(height: TSizes.defaultSpacing / 2),

                    TGridLayout(
                        itemCount: 4,
                        mainAxisExtent: 80,
                        itemBuilder: (_, index) {
                          return GestureDetector(
                            onTap: () {},
                            child: TRoundedContainer(
                              padding: EdgeInsets.all(TSizes.sm),
                              showBorder: true,
                              backgroundColor: Colors.transparent,
                              child: Row(
                                children: [
                                  /// * Icon
                                  Flexible(
                                    child: const TCircularIconImage(
                                      imageURL: IImages.clother,
                                      backgroudColor: Colors.transparent,
                                    ),
                                  ),

                                  /// * Text
                                  Expanded(
                                    child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          TBrandTitleText(
                                            brandTitle: 'Nike',
                                            brandTextSize: TextSizes.large,
                                            textColor: dark
                                                ? IColors.white
                                                : IColors.dark,
                                          ),
                                          Text(
                                            '250 Products adgjhgsdjh',
                                            overflow: TextOverflow.ellipsis,
                                            style: Theme.of(context)
                                                .textTheme
                                                .labelLarge!
                                                .apply(color: IColors.darkGrey),
                                          )
                                        ]),
                                  )
                                ],
                              ),
                            ),
                          );
                        })
                  ],
                ),
              ),
            )
          ];
        },
        body: Container(),
      ),
    );
  }
}
