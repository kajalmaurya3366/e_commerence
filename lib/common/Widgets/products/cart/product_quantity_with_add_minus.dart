import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../utils/constant/colors.dart';
import '../../../../utils/constant/sizes.dart';
import '../../../../utils/helpers/helper_function.dart';
import '../../icons/circular_icon.dart';

class KProductQuantityWithAddMinus extends StatelessWidget {
  const KProductQuantityWithAddMinus({
    super.key,
  });



  @override
  Widget build(BuildContext context) {
    final dark = KHelperFunction.isDarkMode(context);

    return Row(
      children: [
        // ------ minus btns -------
        KCircularIcon(
          icon: Iconsax.minus,
          width: 32,
          height: 32,
          size: KSizes.md,
          bgColor: dark ? KColors.darkerGrey : KColors.light,
          color: dark ? KColors.white : KColors.black,
        ),
        SizedBox(width: KSizes.spaceBtwItems),

        // --------- text ----------
        Text('2', style: Theme.of(context).textTheme.titleSmall),
        SizedBox(width: KSizes.spaceBtwItems),


        // ------ add btn --------
        KCircularIcon(
          icon: Iconsax.add,
          width: 32,
          height: 32,
          size: KSizes.md,
          bgColor: KColors.primary,
          color: KColors.white,
        ),
      ],
    );
  }
}