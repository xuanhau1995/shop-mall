import 'package:flutter/material.dart';
import 'package:shopping_mall/common/styles/spacing_styles.dart';
import 'package:shopping_mall/common/widgets/login_signup/form_divider.dart';
import 'package:shopping_mall/common/widgets/login_signup/social_buttons.dart';
import 'package:shopping_mall/features/authentication/screens/login/widgets/login_form.dart';
import 'package:shopping_mall/features/authentication/screens/login/widgets/login_header.dart';
import 'package:shopping_mall/util/constant/sizes.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: TSpacingStyle.paddingWithAppBarHeight,
          child: Column(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  /// * Logo, Title, Sub-Title
                  const ILoginHeader(),

                  /// *Form
                  const ILoginForm(),

                  /// *Divider
                  TFormDivider(dividerText: 'Or Sign in With'),
                  const SizedBox(
                    height: TSizes.spaceBtwItems,
                  ),

                  /// *Footer
                  const TSocialButtons(),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
