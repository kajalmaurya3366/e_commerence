import 'package:e_commerence/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';

import '../../../../../utils/constant/colors.dart';
import '../../../../../utils/constant/texts.dart';

class PrivacyPolicyCheckbox extends StatelessWidget {
  const PrivacyPolicyCheckbox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = KHelperFunction.isDarkMode(context);


    return Row(
      children: [
        Checkbox(value: true, onChanged: (value) {}),
        RichText(
          text: TextSpan(
            style: Theme.of(context).textTheme.bodyMedium,
            children: [
              TextSpan(text: '${KTexts.iAgreeTo} '),
              TextSpan(
                text: '${KTexts.privacyPolicy} ',
                style: Theme.of(context).textTheme.bodyMedium
                    ?.copyWith(
                  color: dark?KColors.white:KColors.primary,
                  decoration: TextDecoration.underline,
                  decorationColor: dark?KColors.white:KColors.primary,
                ),
              ),
              TextSpan(text: '${KTexts.and} '),
              TextSpan(
                text: '${KTexts.termsOfUse} ',
                style: Theme.of(context).textTheme.bodyMedium
                    ?.copyWith(
                  color: dark?KColors.white:KColors.primary,
                  decoration: TextDecoration.underline,
                  decorationColor: dark?KColors.white:KColors.primary,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}