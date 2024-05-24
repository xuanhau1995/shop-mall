import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:get/utils.dart';
import 'package:iconsax/iconsax.dart';
import 'package:shopping_mall/features/authentication/screens/password_configuration/reset_password.dart';
import 'package:shopping_mall/util/constant/sizes.dart';

class ForgetPasswordScreen extends StatelessWidget {
  const ForgetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
          padding: EdgeInsets.all(TSizes.defaultSpacing),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              /// * Headings
              Text('Forget password',
                  style: Theme.of(context).textTheme.headlineMedium),
              const SizedBox(height: TSizes.spaceBtwItems),
              Text('Enter your email address to reset your password',
                  style: Theme.of(context).textTheme.labelLarge),

              const SizedBox(height: TSizes.spaceBtwSections * 2),

              /// * Text Fields
              TextFormField(
                decoration: const InputDecoration(
                  prefixIcon: Icon(Iconsax.direct_right),
                  labelText: 'Email',
                ),
              ),
              const SizedBox(height: TSizes.spaceBtwItems),

              /// * Submit Button
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: () => Get.off(() => const ResetPasswordScreen()),
                    child: Text('Submit')),
              )
            ],
          )),
    );
  }
}
