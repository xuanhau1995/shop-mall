import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:shopping_mall/features/authentication/screens/login/login.dart';
import 'package:shopping_mall/util/constant/image_strings.dart';
import 'package:shopping_mall/util/constant/sizes.dart';

class VerifyEmailScreen extends StatelessWidget {
  const VerifyEmailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () => Get.offAll(() => LoginScreen()),
            icon: const Icon(CupertinoIcons.clear),
          ),
        ],
      ),
      body: const SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(TSizes.defaultSpacing),
          child: Column(
            children: [
              /// * Image
              Image(image: AssetImage(IImages.verifyEmail)),

              /// * Title  & Subtitle

              /// * Buttons
            ],
          ),
        ),
      ),
    );
  }
}
