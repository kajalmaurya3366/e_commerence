import 'package:e_commerence/features/authentication/screen/signup/verify_email.dart';
import 'package:e_commerence/features/authentication/screen/signup/widgets/privacy_policy_checkbox.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../common/Widgets/Button/elevated_button.dart';

import '../../../../../utils/constant/sizes.dart';
import '../../../../../utils/constant/texts.dart';

class KSignUpForm extends StatelessWidget {
  const KSignUpForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // ---------- F & L name
        Row(
          children: [
            // first name
            Expanded(
              child: TextFormField(
                decoration: InputDecoration(
                  labelText: KTexts.firstName,
                  prefixIcon: Icon(Iconsax.user),
                ),
              ),
            ),
            SizedBox(width: KSizes.spaceBtwInputFields),
            // last name
            Expanded(
              child: TextFormField(
                decoration: InputDecoration(
                  labelText: KTexts.lastName,
                  prefixIcon: Icon(Iconsax.user),
                ),
              ),
            ),
          ],
        ),

        SizedBox(height: KSizes.spaceBtwInputFields),

        // ------ Email ----------
        TextFormField(
          decoration: InputDecoration(
            labelText: KTexts.email,
            prefixIcon: Icon(Iconsax.direct_right),
          ),
        ),

        SizedBox(height: KSizes.spaceBtwInputFields),
        // ---------- Phone Number --------
        TextFormField(
          decoration: InputDecoration(
            labelText: KTexts.phoneNumber,
            prefixIcon: Icon(Iconsax.call),
          ),
        ),
        SizedBox(height: KSizes.spaceBtwInputFields),

        // --------- pwd ------------
        TextFormField(
          decoration: InputDecoration(
            labelText: KTexts.password,
            prefixIcon: Icon(Iconsax.password_check),
            suffixIcon: Icon(Iconsax.eye),
          ),
        ),
        SizedBox(height: KSizes.spaceBtwItems),

        // privacy policy check box
        PrivacyPolicyCheckbox(),
        SizedBox(height: KSizes.spaceBtwItems),
        // -----------create account btn----------
        KElevatedButton(
          onPressed: () => Get.to(VerifyEmailScreen()),
          child: Text(KTexts.createAccount),
        ),
      ],
    );
  }
}
