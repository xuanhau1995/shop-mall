import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:iconsax/iconsax.dart';
import 'package:shopping_mall/common/widgets/login_signup/form_divider.dart';
import 'package:shopping_mall/common/widgets/login_signup/social_buttons.dart';
import 'package:shopping_mall/features/authentication/screens/signup/widgets/term_checkbox.dart';
import 'package:shopping_mall/features/authentication/screens/verify_email/verify_email.dart';
import 'package:shopping_mall/util/constant/sizes.dart';

class SignUpForm extends StatelessWidget {
  const SignUpForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
        child: Column(
      children: [
        Row(
          children: [
            /// * First Name
            Expanded(
              child: TextFormField(
                expands: false,
                decoration: const InputDecoration(
                  labelText: 'First Name',
                  prefixIcon: Icon(Iconsax.user),
                ),
              ),
            ),
            const SizedBox(width: TSizes.spaceBtwInputFields),

            /// * Last Name
            Expanded(
              child: TextFormField(
                expands: false,
                decoration: const InputDecoration(
                  labelText: 'Last Name',
                  prefixIcon: Icon(Iconsax.user),
                ),
              ),
            )
          ],
        ),
        const SizedBox(height: TSizes.spaceBtwInputFields),

        /// * Username
        TextFormField(
          expands: false,
          decoration: const InputDecoration(
            labelText: 'Username',
            prefixIcon: Icon(Iconsax.user_edit),
          ),
        ),
        const SizedBox(height: TSizes.spaceBtwInputFields),

        /// * Email
        TextFormField(
          expands: false,
          decoration: const InputDecoration(
            labelText: 'Email',
            prefixIcon: Icon(Iconsax.direct),
          ),
        ),
        const SizedBox(height: TSizes.spaceBtwInputFields),

        /// * Phone Number
        TextFormField(
          expands: false,
          decoration: const InputDecoration(
            labelText: 'Phone number',
            prefixIcon: Icon(Iconsax.call),
          ),
        ),
        const SizedBox(height: TSizes.spaceBtwInputFields),

        /// * Password
        TextFormField(
          expands: false,
          decoration: const InputDecoration(
              labelText: 'Email',
              prefixIcon: Icon(Iconsax.password_check),
              suffixIcon: Icon(Iconsax.eye_slash)),
        ),
        const SizedBox(height: TSizes.spaceBtwInputFields),

        /// * Terms&Condition Checkbox
        const TTermCheckbox(),
        const SizedBox(height: TSizes.spaceBtwSections),

        /// * Sign Up Button
        SizedBox(
            width: double.infinity,
            child: ElevatedButton(
                onPressed: () => Get.to(() => const VerifyEmailScreen()),
                child: const Text('Create Account'))),
        const SizedBox(height: TSizes.spaceBtwSections),

        /// * Divider
        TFormDivider(dividerText: 'Or Sign up With'),
        const SizedBox(height: TSizes.spaceBtwItems),

        /// * Signup social
        const TSocialButtons(),
      ],
    ));
  }
}
