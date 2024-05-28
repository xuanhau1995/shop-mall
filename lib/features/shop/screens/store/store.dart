import 'package:flutter/material.dart';
import 'package:shopping_mall/common/widgets/appbar/appbar.dart';
import 'package:shopping_mall/common/widgets/custom_shapes/search_container.dart';
import 'package:shopping_mall/common/widgets/products/cart_counter_icon.dart';
import 'package:shopping_mall/common/widgets/texts/section_heading.dart';
import 'package:shopping_mall/util/constant/colors.dart';
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
