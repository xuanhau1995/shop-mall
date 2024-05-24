import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:shopping_mall/common/styles/spacing_styles.dart';
import 'package:shopping_mall/util/constant/image_strings.dart';
import 'package:shopping_mall/util/constant/sizes.dart';
import 'package:shopping_mall/util/constant/text_strings.dart';
import 'package:shopping_mall/util/helpers/helper_functions.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);

    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: TSpacingStyle.paddingWithAppBarHeight,
          child: Column(
            children: [
              /// Logo, Title, Sub-Title
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image(
                    height: 150,
                    image: AssetImage(
                        dark ? IImages.lightAppLogo : IImages.darkAppLogo),
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
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),

                  /// Form
                  Form(
                      child: Column(
                    children: [
                      /// Email
                      TextFormField(
                        decoration: InputDecoration(
                          prefixIcon: Icon(Iconsax.direct_right),
                          labelText: 'Email',
                        ),
                      ),
                      SizedBox(height: TSizes.spaceBtwInputFields),

                      /// Password
                      TextFormField(
                        decoration: InputDecoration(
                            prefixIcon: Icon(Iconsax.password_check),
                            labelText: 'Password',
                            suffixIcon: Icon(Iconsax.eye_slash)),
                      ),

                      SizedBox(height: TSizes.spaceBtwInputFields / 2),

                      /// Remmember Me & Forget Passwords
                      Row(
                        children: [
                          /// Remmember Me
                          Row(children: [
                            Checkbox(
                              value: true,
                              onChanged: (value) {},
                            ),
                            const Text('Remmember Me'),
                          ]),

                          /// Forget Passwords
                          TextButton(
                              onPressed: () {}, child: Text('Forget Passwords'))
                        ],
                      ),

                      const SizedBox(
                        height: TSizes.spaceBtwSections,
                      )
                    ],
                  ))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
