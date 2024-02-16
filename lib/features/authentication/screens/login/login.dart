import 'package:e_commerce_app/common/styles/spacing_style.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../utils/constants/text_strings.dart';
import '../../../../common/widgets/login_signup/form_divider.dart';
import 'widgets/login_form.dart';
import 'widgets/login_form_header.dart';
import '../../../../common/widgets/login_signup/social_buttons.dart';

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
                const SizedBox(height: TSizes.spaceBtwSections,),
                /// Logo, title and subtitle
                const TLoginHeader(),

                /// Form
                const TLoginForm(),

                ///Divider
                TFormDivider(dividerText: TTexts.orSignInWith.capitalize!,),

                const SizedBox(height: TSizes.spaceBtwSections,),

                /// Footer
                const TSocialsButton()
              ],
            ),
      ),
    ));
  }
}

