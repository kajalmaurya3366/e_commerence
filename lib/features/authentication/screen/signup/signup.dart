
import 'package:e_commerence/common/Widgets/Button/social_buttons.dart';
import 'package:e_commerence/common/Widgets/login_signup/form_divider.dart';
import 'package:e_commerence/common/style/padding.dart';
import 'package:e_commerence/features/authentication/screen/signup/widgets/signup_form.dart';

import 'package:e_commerence/utils/constant/sizes.dart';
import 'package:e_commerence/utils/constant/texts.dart';
import 'package:flutter/material.dart';

import '../../../../utils/helpers/helper_function.dart';


class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = KHelperFunction.isDarkMode(context);
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: KPadding.screenPadding,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // ================== Header ==================
              Text(
                KTexts.signTitle,
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              SizedBox(height: KSizes.spaceBtwSections),

              //================ Form =======================
              KSignUpForm(),
              //================== Divider ===================
              SizedBox(height: KSizes.spaceBtwSections),
              KFormDivider(isDark: isDark, title:KTexts.orSignUpWith),
              //====================== Footer ================
              SizedBox(height: KSizes.spaceBtwSections),
              KSocialButtons()
            ],
          ),
        ),
      ),
    );
  }
}


