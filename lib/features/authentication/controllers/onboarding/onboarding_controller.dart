import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shopping_mall/features/authentication/screens/login/login.dart';

class OnBoardingController extends GetxController {
  static OnBoardingController get instance => Get.find();

  /// Variables
  final pageController = PageController();
  Rx<int> currentIndex = 0.obs;

  /// Update Current Index when page Scroll
  void updatePageIndicator(index) => currentIndex = index;

  /// Jump to specific dot selected page.
  void dotNavigationClick(index) {
    currentIndex.value = index;
    pageController.jumpTo(index);
  }

  /// Update Current Index & jump to next page
  void nextPage() {
    if (currentIndex.value == 2) {
      Get.to(LoginScreen());
    } else {
      int page = currentIndex.value + 1;
      pageController.jumpToPage(page);
    }
  }

  ///  Update Current Index & jump to the last page
  void skipPage() {
    currentIndex.value = 2;
    pageController.jumpToPage(2);
  }
}
