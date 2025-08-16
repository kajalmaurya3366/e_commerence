import 'package:e_commerence/common/style/padding.dart';
import 'package:e_commerence/features/authentication/screen/forget_password/reset_password.dart';
import 'package:e_commerence/utils/constant/sizes.dart';
import 'package:e_commerence/utils/constant/texts.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../common/Widgets/Button/elevated_button.dart';

class ForgetPasswordScreen extends StatelessWidget {
  const ForgetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: KPadding.screenPadding,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // ------------- HEADER ----------
              Text(
                KTexts.passwordForgetTitle,
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              SizedBox(height: KSizes.spaceBtwItems),
              Text(
                KTexts.passwordForgetSubTitle,
                style: Theme.of(context).textTheme.labelMedium,
              ),

              // ------------- FORM ----------
              SizedBox(height: KSizes.spaceBtwSections),
              Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: KTexts.email,
                      prefixIcon: Icon(Iconsax.direct_right),
                    ),
                  ),
                  SizedBox(height: KSizes.spaceBtwItems),
                  KElevatedButton(
                    onPressed: () => Get.to(ResetPasswordScreen()),
                    child: Text(KTexts.submit),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
