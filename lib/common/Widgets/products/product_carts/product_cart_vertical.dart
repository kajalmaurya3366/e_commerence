import 'package:e_commerence/common/Widgets/icons/circular_icon.dart';
import 'package:e_commerence/common/Widgets/images/rounded_image.dart';
import 'package:e_commerence/utils/constant/colors.dart';
import 'package:e_commerence/utils/constant/images.dart';
import 'package:e_commerence/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../utils/constant/sizes.dart';
import '../../../style/shadow.dart';
import '../../custome_shape/clipper/rounded_container.dart';
import '../../texts/brand_title_text.dart';
import '../../texts/brand_title_with_verify_icon.dart';
import '../../texts/product_price_text.dart';
import '../../texts/product_title_text.dart';

class KProductCartVertical extends StatelessWidget {
  const KProductCartVertical({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = KHelperFunction.isDarkMode(context);
    return GestureDetector(
      onTap: () {},
      child: Container(
        width: 180,
        padding: EdgeInsets.all(1),
        decoration: BoxDecoration(
          boxShadow: KShadow.verticalProductShadow,
          borderRadius: BorderRadius.circular(KSizes.productImageRadius),
          color: dark ? KColors.darkerGrey : KColors.white,
        ),
        child: Column(
          children: [
            // -------- Thumbnail, Button and Discount Tag ---------------

            KRoundedContainer(
              width: 180,
              padding: EdgeInsets.all(KSizes.sm),
              bgColor: dark ? KColors.dark : KColors.light,
              child: Stack(
                children: [
                  // ------------ thumbnail -----------
                  KRoundedImage(imageUrl: KImages.productImage1),

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
                    child: KCircularIcon(
                      icon: Iconsax.heart5,
                      color: Colors.red,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: KSizes.spaceBtwItems / 2),

            //------------- product Details ---------------
            Padding(
              padding: const EdgeInsets.only(left: KSizes.sm),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // ------------- Product title --------------
                  KProductTitleText(title: 'Blue Bata Shoes', smallSize: true),
                  SizedBox(height: KSizes.spaceBtwItems / 2),

                  // ------------ product brand ------------
                  KBrandTitleWIthVerifyIcon(title: 'Bata',),
                ],
              ),
            ),

            Spacer(),
            // --------------- price & add btn  -------------
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // -------- product price ------------
                KProductPriceText(price: '65'),

                // ------------ add btn ----------------
                Container(
                  width: KSizes.iconLg * 1.2,
                  height: KSizes.iconLg * 1.2,
                  decoration: BoxDecoration(
                    color: KColors.primary,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(KSizes.cardRadiusMd),
                      bottomRight: Radius.circular(KSizes.productImageRadius),
                    ),
                  ),
                  child: Icon(Iconsax.add, color: KColors.white),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}




