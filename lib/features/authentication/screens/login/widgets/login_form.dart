import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:iconsax/iconsax.dart';
import 'package:shopping_mall/features/authentication/screens/password_configuration/forget_password.dart';
import 'package:shopping_mall/features/authentication/screens/signup/signup.dart';
import 'package:shopping_mall/navigation_menu.dart';
import 'package:shopping_mall/util/constant/sizes.dart';

class ILoginForm extends StatelessWidget {
  const ILoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
        child: Padding(
      padding: const EdgeInsets.symmetric(vertical: TSizes.spaceBtwSections),
      child: Column(
        children: [
          /// * Email
          TextFormField(
            decoration: const InputDecoration(
              prefixIcon: Icon(Iconsax.direct_right),
              labelText: 'Email',
            ),
          ),
          SizedBox(height: TSizes.spaceBtwInputFields),

          /// * Password
          TextFormField(
            decoration: const InputDecoration(
                prefixIcon: Icon(Iconsax.password_check),
                labelText: 'Password',
                suffixIcon: Icon(Iconsax.eye_slash)),
          ),

          SizedBox(height: TSizes.spaceBtwInputFields / 2),

          /// * Remmember Me & Forget Passwords
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              /// * Remmember Me
              Row(children: [
                Checkbox(
                  value: true,
                  onChanged: (value) {},
                ),
                const Text('Remmember Me'),
              ]),

              /// * Forget Passwords
              TextButton(
                  onPressed: () => Get.to(() => const ForgetPasswordScreen()),
                  child: Text('Forget Passwords?'))
            ],
          ),

          const SizedBox(
            height: TSizes.spaceBtwSections,
          ),

          /// * Sign in Button
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
                onPressed: () => Get.to(() => const NavigationMenuScreen()),
                child: Text('Sign in')),
          ),

          const SizedBox(
            height: TSizes.spaceBtwItems,
          ),

          SizedBox(
            width: double.infinity,
            child: OutlinedButton(
                onPressed: () => Get.to(() => const SignupScreen()),
                child: Text('Create a new account')),
          ),

          const SizedBox(
            height: TSizes.spaceBtwSections,
          ),
        ],
      ),
    ));
  }
}
