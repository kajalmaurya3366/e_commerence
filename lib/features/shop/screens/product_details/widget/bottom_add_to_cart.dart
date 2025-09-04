import 'package:e_commerence/common/Widgets/Button/elevated_button.dart';
import 'package:e_commerence/common/Widgets/icons/circular_icon.dart';
import 'package:e_commerence/utils/constant/colors.dart';
import 'package:e_commerence/utils/constant/sizes.dart';
import 'package:e_commerence/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class BottomAddToCart extends StatelessWidget {
  const BottomAddToCart({super.key});

  @override
  Widget build(BuildContext context) {
    bool dark = KHelperFunction.isDarkMode(context);
    return Container(
      padding: EdgeInsets.symmetric(
        vertical: KSizes.defaultSpace / 2,
        horizontal: KSizes.defaultSpace,
      ),
      decoration: BoxDecoration(
        color: dark ? KColors.darkerGrey : KColors.light,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(KSizes.cardRadiusLg),
          topRight: Radius.circular(KSizes.cardRadiusLg),
        ),
      ),
      child: Row(
        children: [
          // -------- minus btn -----------
          KCircularIcon(
            icon: Iconsax.minus,
            bgColor: KColors.darkerGrey,
            width: 40,
            height: 40,
            color: KColors.white,
          ),
          SizedBox(width: KSizes.spaceBtwItems),

          // ------------ counter ---------------
          Text('1', style: Theme.of(context).textTheme.titleSmall),
          SizedBox(width: KSizes.spaceBtwItems),

          // ---------- plus btn ------------
          KCircularIcon(
            icon: Iconsax.add,
            bgColor: KColors.black,
            width: 40,
            height: 40,
            color: KColors.white,
          ),
          SizedBox(width: KSizes.spaceBtwItems),


          // -------------- Add to cart btn -------------
          Expanded(
            child: SizedBox(
              width: 120,
              child: KElevatedButton(
                  onPressed: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Iconsax.shopping_bag),
                      SizedBox(width: KSizes.spaceBtwItems),
                      Text('Add to Cart'),
                    ],
                  ),

              ),
            ),
          ),
        ],
      ),
    );
  }
}
