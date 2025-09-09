import 'package:flutter/material.dart';

import '../../../utils/constant/colors.dart';
import '../../../utils/constant/sizes.dart';
import '../../../utils/helpers/helper_function.dart';
import '../custome_shape/rounded_container.dart';

class KPromoCodeField extends StatelessWidget {
  const KPromoCodeField({
    super.key,

  });



  @override
  Widget build(BuildContext context) {
    final dark = KHelperFunction.isDarkMode(context);

    return KRoundedContainer(
      showBorder: true,
      bgColor: Colors.transparent,
      padding: EdgeInsets.only(
        left: KSizes.md,
        top: KSizes.sm,
        right: KSizes.sm,
        bottom: KSizes.sm,
      ),
      child: Row(
        children: [
          Flexible(
            child: TextFormField(
              decoration: InputDecoration(
                hintText: 'Have a promo code? Enter here..',
                border: InputBorder.none,
                focusedBorder: InputBorder.none,
                enabledBorder: InputBorder.none,
                errorBorder: InputBorder.none,
                disabledBorder: InputBorder.none,
              ),
            ),
          ),
          SizedBox(
            width: 80,
            child: ElevatedButton(
              onPressed: null,
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.grey.withValues(alpha: 0.2),
                foregroundColor: dark
                    ? KColors.white.withValues(alpha: 0.5)
                    : KColors.dark.withValues(alpha: 0.5),
                side: BorderSide(
                  color: KColors.grey.withValues(alpha: 0.1),
                ),
              ),
              child: Text('Apply'),
            ),
          ),
        ],
      ),
    );
  }
}