import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:shopping_mall/common/widgets/appbar/appbar.dart';
import 'package:shopping_mall/common/widgets/products/cart_counter_icon.dart';
import 'package:shopping_mall/util/constant/colors.dart';

class THomeAppBar extends StatelessWidget {
  const THomeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TAppBar(
      showBackArrow: false,
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Good day for shopping',
              style: Theme.of(context)
                  .textTheme
                  .labelMedium!
                  .apply(color: IColors.grey)),
          Text('Taimoor Sikander',
              style: Theme.of(context)
                  .textTheme
                  .headlineMedium!
                  .apply(color: IColors.grey))
        ],
      ),
      actions: [TCartCounterIcon()],
    );
  }
}
