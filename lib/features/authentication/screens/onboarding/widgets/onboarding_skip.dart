import 'package:flutter/material.dart';
import 'package:shopping_mall/features/authentication/controllers/onboarding/onboarding_controller.dart';
import 'package:shopping_mall/util/constant/sizes.dart';
import 'package:shopping_mall/util/device/device_utility.dart';

class OnBoardingSkip extends StatelessWidget {
  const OnBoardingSkip({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
        top: TDeviceUtils.getAppBarHeight(),
        right: TSizes.defaultSpacing,
        child: TextButton(
          onPressed: () => OnBoardingController.instance.skipPage(),
          child: const Text('Skip'),
        ));
  }
}
