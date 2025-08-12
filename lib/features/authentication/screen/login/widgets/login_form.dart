
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../common/Widgets/Button/elevated_button.dart';
import '../../../../../utils/constant/sizes.dart';
import '../../../../../utils/constant/texts.dart';

class KLoginForm extends StatelessWidget {
  const KLoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        //------- EMAIL ---------
        TextFormField(
          decoration: InputDecoration(
            prefixIcon: Icon(Iconsax.direct_right),
            labelText: KTexts.email,
          ),
        ),
        SizedBox(height: KSizes.spaceBtwInputFields),

        // --------- PASSWORD ----------
        TextFormField(
          decoration: InputDecoration(
            prefixIcon: Icon(Iconsax.password_check),
            labelText: KTexts.password,
            suffixIcon: Icon(Iconsax.eye),
          ),
        ),
        SizedBox(height: KSizes.spaceBtwInputFields / 2),

        // --------- REMEMBER ME && Forget Pwd ----------
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // ---- remeber Me----
            Row(
              children: [
                Checkbox(value: true, onChanged: (value) {}),
                Text(KTexts.rememberMe),
              ],
            ),
            // ------- Forget Pwd ------
            TextButton(onPressed: () {}, child: Text(KTexts.forgetPassword)),
          ],
        ),
        SizedBox(height: KSizes.spaceBtwItems),

        // --------- SIGN IN  ----------
        KElevatedButton(onPressed: () {}, child: Text(KTexts.signIn)),
        SizedBox(height: KSizes.spaceBtwItems / 2),
        // --------- CREATE ACCOUNT  ----------
        SizedBox(
          width: double.infinity,
          child: OutlinedButton(
            onPressed: () {},
            child: Text(KTexts.createAccount)
          ),
        ),
      ],
    );
  }
}
