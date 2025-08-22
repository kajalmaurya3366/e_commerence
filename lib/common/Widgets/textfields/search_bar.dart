import 'package:e_commerence/common/style/shadow.dart';
import 'package:e_commerence/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../utils/constant/colors.dart';
import '../../../utils/constant/sizes.dart';
import '../../../utils/constant/texts.dart';

class KSearchBar extends StatelessWidget {
  const KSearchBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    bool dark = KHelperFunction.isDarkMode(context);
    return Positioned(
      bottom: 0,
      right: KSizes.spaceBtwSections,
      left: KSizes.spaceBtwSections,
      child: Container(
        height: KSizes.searchBarHeight,
        padding: EdgeInsets.symmetric(horizontal: KSizes.md),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(KSizes.borderRadiusLg),
            color: dark? KColors.black:KColors.light,
            border: Border.all(color: dark?KColors.darkerGrey:KColors.light),
            boxShadow:KShadow.searchBarShadow
        ),
        child: Row(
          children: [
            // ---------- search Icon -------------
            Icon(Iconsax.search_normal, color: KColors.darkerGrey,),
            SizedBox(width: KSizes.spaceBtwItems,),

            // ------------ search Title -----------------
            Text(KTexts.searchBarTitle,style: Theme.of(context).textTheme.bodyMedium,)
          ],
        ),
      ),
    );
  }
}