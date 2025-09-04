import 'package:flutter/material.dart';

import '../../../../../common/Widgets/custome_shape/rounded_container.dart';
import '../../../../../common/Widgets/images/circular_image.dart';
import '../../../../../common/Widgets/texts/brand_title_with_verify_icon.dart';
import '../../../../../common/Widgets/texts/product_price_text.dart';
import '../../../../../common/Widgets/texts/product_title_text.dart';
import '../../../../../utils/constant/colors.dart';
import '../../../../../utils/constant/images.dart';
import '../../../../../utils/constant/sizes.dart';

class KProductMetaData extends StatelessWidget {
  const KProductMetaData({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // =========== Sale tag, sale price , actual price and share btn =========
        Row(
          children: [
            // ---------- discount tag ----------
            KRoundedContainer(
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
            SizedBox(width: KSizes.spaceBtwItems),

            // -------- sale price -----------
            Text(
              '\$250',
              style: Theme.of(context).textTheme.titleSmall!.apply(
                decoration: TextDecoration.lineThrough,
              ),
            ),
            SizedBox(width: KSizes.spaceBtwItems / 3),

            // ------------ actual price -------------
            KProductPriceText(price: '220', isLarge: true),
            Spacer(),

            // --------- shared icon ------------
            IconButton(onPressed: () {}, icon: Icon(Icons.share)),
          ],
        ),
        SizedBox(height: KSizes.spaceBtwItems / 2),

        // ========= Product name ============
        KProductTitleText(title: 'Apple iphone11'),
        SizedBox(height: KSizes.spaceBtwItems / 2),

        // ============ Stock status =============
        Row(
          children: [
            KProductTitleText(title: 'Status - '),
            SizedBox(width: KSizes.spaceBtwItems / 2),
            Text('In Stock', style: Theme.of(context).textTheme.titleMedium),
          ],
        ),
        SizedBox(height: KSizes.spaceBtwItems / 2),

        // ========== Brand ==============
        Row(
          children: [
            KCircularImage(image: KImages.appleLogo, width: 32, height: 32),
            SizedBox(width: KSizes.spaceBtwItems / 2),
            KBrandTitleWIthVerifyIcon(title: 'Apple'),
          ],
        ),
      ],
    );
  }
}
