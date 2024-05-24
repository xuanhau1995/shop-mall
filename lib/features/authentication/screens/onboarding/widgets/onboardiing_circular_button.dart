import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:iconsax/iconsax.dart';
import 'package:shopping_mall/features/authentication/controllers/onboarding/onboarding_controller.dart';
import 'package:shopping_mall/util/constant/colors.dart';
import 'package:shopping_mall/util/constant/sizes.dart';
import 'package:shopping_mall/util/device/device_utility.dart';
import 'package:shopping_mall/util/helpers/helper_functions.dart';

class OnboardingCircularButton extends StatelessWidget {
  const OnboardingCircularButton({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);

    return Positioned(
        bottom: TDeviceUtils.getBottomNavigationBarHeight(),
        right: TSizes.defaultSpacing,
        child: ElevatedButton(
            onPressed: () => OnBoardingController.instance.nextPage(),
            style: ElevatedButton.styleFrom(
                shape: CircleBorder(side: BorderSide.none),
                backgroundColor: dark ? IColors.primary : IColors.black),
            child: Icon(Iconsax.arrow_right_3)));
  }
}
