import 'package:flutter/material.dart';
import 'package:shopping_mall/common/styles/spacing_styles.dart';
import 'package:shopping_mall/util/constant/image_strings.dart';
import 'package:shopping_mall/util/constant/sizes.dart';
import 'package:shopping_mall/util/helpers/helper_functions.dart';

class SuccessScreen extends StatelessWidget {
  const SuccessScreen(
      {super.key,
      required this.title,
      required this.subtitle,
      required this.image,
      required this.onPressed});

  final String title, subtitle, image;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: TSpacingStyle.paddingWithAppBarHeight * 2,
          child: Column(children: [
            /// * Image
            Image(
                image: AssetImage(IImages.verifyEmail),
                width: THelperFunctions.screenWidth() * 0.6),
            const SizedBox(height: TSizes.spaceBtwSections),

            /// * Title  & Subtitle
            Text(title,
                style: Theme.of(context).textTheme.headlineMedium,
                textAlign: TextAlign.center),
            const SizedBox(height: TSizes.spaceBtwItems),

            Text(
                "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s",
                style: Theme.of(context).textTheme.bodySmall,
                textAlign: TextAlign.center),
            const SizedBox(height: TSizes.spaceBtwSections),

            /// * Buttons
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: onPressed,
                child: Text('Continue'),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
