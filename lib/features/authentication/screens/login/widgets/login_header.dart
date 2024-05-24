import 'package:flutter/material.dart';
import 'package:shopping_mall/util/constant/image_strings.dart';
import 'package:shopping_mall/util/constant/sizes.dart';
import 'package:shopping_mall/util/constant/text_strings.dart';
import 'package:shopping_mall/util/helpers/helper_functions.dart';

class ILoginHeader extends StatelessWidget {
  const ILoginHeader({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Image(
          height: 150,
          image: AssetImage(dark ? IImages.lightAppLogo : IImages.darkAppLogo),
        ),
        Text(
          ITexts.loginTitle,
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        SizedBox(
          height: TSizes.sm,
        ),
        Text(
          ITexts.loginSubTitle,
          style: Theme.of(context).textTheme.bodyLarge,
        ),
      ],
    );
  }
}
