import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:shopping_mall/common/widgets/appbar/appbar.dart';
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
      actions: [
        Stack(
          children: [
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Iconsax.shopping_bag,
                color: IColors.white,
              ),
            ),
            Positioned(
                right: 0,
                child: Container(
                  width: 18,
                  height: 18,
                  decoration: BoxDecoration(
                    color: IColors.black.withOpacity(0.6),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(
                    child: Text(
                      '2',
                      style: Theme.of(context)
                          .textTheme
                          .labelLarge!
                          .apply(color: IColors.white),
                    ),
                  ),
                ))
          ],
        )
      ],
    );
  }
}
