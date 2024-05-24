import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shopping_mall/features/authentication/controllers/onboarding/onboarding_controller.dart';
import 'package:shopping_mall/features/authentication/screens/onboarding/widgets/onboarding_dot_navigation.dart';
import 'package:shopping_mall/features/authentication/screens/onboarding/widgets/onboardiing_circular_button.dart';
import 'package:shopping_mall/features/authentication/screens/onboarding/widgets/onboarding_page.dart';
import 'package:shopping_mall/features/authentication/screens/onboarding/widgets/onboarding_skip.dart';
import 'package:shopping_mall/util/constant/colors.dart';
import 'package:shopping_mall/util/constant/image_strings.dart';
import 'package:shopping_mall/util/constant/sizes.dart';
import 'package:shopping_mall/util/constant/text_strings.dart';
import 'package:shopping_mall/util/device/device_utility.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:iconsax/iconsax.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnBoardingController());

    return Scaffold(
      body: Stack(
        children: [
          /// Horizontal Scrollable Pages
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.updatePageIndicator,
            children: [
              OnboardingPage(
                  image: IImages.onBoardingImage1,
                  title: ITexts.onBoardingTitle1,
                  subTitle: ITexts.onBoardingSubTitle1),
              OnboardingPage(
                  image: IImages.onBoardingImage2,
                  title: ITexts.onBoardingTitle2,
                  subTitle: ITexts.onBoardingSubTitle2),
              OnboardingPage(
                  image: IImages.onBoardingImage3,
                  title: ITexts.onBoardingTitle3,
                  subTitle: ITexts.onBoardingSubTitle3),
            ],
          ),

          /// Skip Button
          const OnBoardingSkip(),

          /// Dot Navigation SmoothPageIndicator
          OnBoardingDotNavigation(),

          /// Circular Button
          OnboardingCircularButton()
        ],
      ),
    );
  }
}
