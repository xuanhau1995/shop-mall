import 'package:flutter/material.dart';
import 'package:shopping_mall/util/constant/colors.dart';
import 'package:shopping_mall/util/constant/sizes.dart';
import 'package:shopping_mall/util/constant/text_strings.dart';
import 'package:shopping_mall/util/helpers/helper_functions.dart';

class TTermCheckbox extends StatelessWidget {
  const TTermCheckbox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);

    return Row(
      children: [
        SizedBox(
            width: 24,
            height: 24,
            child: Checkbox(value: true, onChanged: (value) {})),
        const SizedBox(width: TSizes.spaceBtwItems),
        Text.rich(TextSpan(children: [
          TextSpan(
              text: '${ITexts.isAgreeTo} ',
              style: Theme.of(context).textTheme.bodySmall),
          TextSpan(
              text: '${ITexts.privacyPolicy} ',
              style: Theme.of(context).textTheme.bodyMedium!.apply(
                    color: dark ? IColors.white : IColors.primary,
                    decoration: TextDecoration.underline,
                    decorationColor: dark ? IColors.white : IColors.primary,
                  )),
          TextSpan(text: "and ", style: Theme.of(context).textTheme.bodySmall),
          TextSpan(
              text: ' ${ITexts.termsAndCondition}',
              style: Theme.of(context).textTheme.bodyMedium!.apply(
                    color: dark ? IColors.white : IColors.primary,
                    decoration: TextDecoration.underline,
                    decorationColor: dark ? IColors.white : IColors.primary,
                  ))
        ])),
      ],
    );
  }
}
