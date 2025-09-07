import 'package:e_commerence/features/shop/screens/cart/cart.dart';
import 'package:e_commerence/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../utils/constant/colors.dart';

class KCartCounterIcon extends StatelessWidget {
  const KCartCounterIcon({super.key});

  @override
  Widget build(BuildContext context) {
    bool dark = KHelperFunction.isDarkMode(context);
    return Stack(
      children: [
        // ------------- BAG ICON -----------------
        IconButton(
          onPressed: () => Get.to(CartScreen()),
          icon: Icon(Iconsax.shopping_bag),
          color: KColors.white,
        ),

        // -------------- COUNTER TEXT -----------------
        Positioned(
          top: 6,
          right: 6,
          child: Container(
            height: 18,
            width: 18,
            decoration: BoxDecoration(
              color: dark ? KColors.dark : KColors.light,
              shape: BoxShape.circle,
            ),
            child: Center(
              child: Text(
                '2',
                style: Theme.of(context).textTheme.labelLarge!.apply(
                  fontSizeFactor: 0.8,
                  color: dark ? KColors.light : KColors.dark,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
