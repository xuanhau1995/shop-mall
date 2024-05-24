import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:shopping_mall/features/authentication/screens/signup/widgets/signup-form.dart';
import 'package:shopping_mall/util/constant/colors.dart';
import 'package:shopping_mall/util/constant/sizes.dart';
import 'package:shopping_mall/util/constant/text_strings.dart';
import 'package:shopping_mall/util/helpers/helper_functions.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpacing),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              /// * Title
              Text("Let's create account",
                  style: Theme.of(context).textTheme.headlineMedium),
              const SizedBox(height: TSizes.spaceBtwSections),

              /// * Form
              const SignUpForm()
            ],
          ),
        ),
      ),
    );
  }
}
