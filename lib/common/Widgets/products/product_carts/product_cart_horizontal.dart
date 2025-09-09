import 'package:e_commerence/common/Widgets/texts/brand_title_with_verify_icon.dart';
import 'package:e_commerence/common/Widgets/texts/product_price_text.dart';
import 'package:e_commerence/common/Widgets/texts/product_title_text.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../utils/constant/colors.dart';
import '../../../../utils/constant/images.dart';
import '../../../../utils/constant/sizes.dart';
import '../../../../utils/helpers/helper_function.dart';
import '../../custome_shape/rounded_container.dart';
import '../../icons/circular_icon.dart';
import '../../images/rounded_image.dart';

class KProductCartHorizontal extends StatelessWidget {
  const KProductCartHorizontal({super.key});

  @override
  Widget build(BuildContext context) {
    bool dark = KHelperFunction.isDarkMode(context);
    return Container(
      width: 310,
      padding: EdgeInsets.all(1),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(KSizes.productImageRadius),
        color: dark ? KColors.darkerGrey : KColors.light,
      ),
      child: Row(
        children: [
          // ----------- left portion -------------
          KRoundedContainer(
            padding: EdgeInsets.all(KSizes.sm),
            height: 120,
            bgColor: dark ? KColors.dark : KColors.light,
            child: Stack(
              children: [
                // ---- thumbnail ---
                SizedBox(
                  width: 120,
                  height: 120,
                  child: KRoundedImage(imageUrl: KImages.productImage15),
                ),

                // ------------ Discount Tag ---------------
                Positioned(
                  top: 12,
                  child: KRoundedContainer(
                    radius: KSizes.sm,
                    bgColor: KColors.yellow.withValues(alpha: 0.8),
                    padding: EdgeInsets.symmetric(
                      horizontal: KSizes.sm,
                      vertical: KSizes.xs,
                    ),
                    child: Text(
                      '29%',
                      style: Theme.of(
                        context,
                      ).textTheme.labelLarge!.apply(color: KColors.black),
                    ),
                  ),
                ),
                // ----------- Fav Button --------------
                Positioned(
                  right: 0,
                  top: 0,
                  child: KCircularIcon(icon: Iconsax.heart5, color: Colors.red),
                ),
              ],
            ),
          ),

          //-----------right portion ----------
          SizedBox(
            width: 170,
            child: Padding(
              padding: const EdgeInsets.only(left: KSizes.sm, top: KSizes.sm),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      //----- product title -----------
                      KProductTitleText(
                        title: 'Blue Bata Shoes',
                        smallSize: true,
                      ),
                      SizedBox(height: KSizes.spaceBtwItems / 2),

                      //----------- product brand ------------
                      KBrandTitleWIthVerifyIcon(title: 'Bata'),
                    ],
                  ),
                  Spacer(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Flexible(child: KProductPriceText(price: '56')),
                      // ------------ add btn ----------------
                      Container(
                        width: KSizes.iconLg * 1.2,
                        height: KSizes.iconLg * 1.2,
                        decoration: BoxDecoration(
                          color: KColors.primary,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(KSizes.cardRadiusMd),
                            bottomRight: Radius.circular(
                              KSizes.productImageRadius,
                            ),
                          ),
                        ),
                        child: Icon(Iconsax.add, color: KColors.white),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
