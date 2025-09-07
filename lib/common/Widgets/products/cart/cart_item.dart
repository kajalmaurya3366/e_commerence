import 'package:flutter/material.dart';

import '../../../../utils/constant/colors.dart';
import '../../../../utils/constant/images.dart';
import '../../../../utils/constant/sizes.dart';
import '../../../../utils/helpers/helper_function.dart';
import '../../images/rounded_image.dart';
import '../../texts/brand_title_with_verify_icon.dart';
import '../../texts/product_title_text.dart';

class KCartItem extends StatelessWidget {
  const KCartItem({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = KHelperFunction.isDarkMode(context);

    return Row(
      children: [
        // -------- Image ---------
        KRoundedImage(
          imageUrl: KImages.productImage2,
          height: 60,
          width: 60,
          padding: EdgeInsets.all(KSizes.sm),
          bgColor: dark ? KColors.darkerGrey : KColors.light,
        ),

        // ------- Brand , Name and Variation
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // ---------- Brand -----
              KBrandTitleWIthVerifyIcon(title: 'Baski'),
              SizedBox(width: KSizes.spaceBtwItems),

              // -------- product title ---------
              KProductTitleText(title: 'BasketBall', maxLines: 1),

              // -------- variation ---------------
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: 'Color ',
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                    TextSpan(
                      text: 'Green ',
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),
                    TextSpan(
                      text: 'Storage ',
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                    TextSpan(
                      text: '512GB ',
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
