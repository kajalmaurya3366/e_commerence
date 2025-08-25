import 'package:e_commerence/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';

import '../../../utils/constant/colors.dart';

import '../../../utils/constant/sizes.dart';
import '../custome_shape/clipper/rounded_container.dart';
import 'brand_cart.dart';

class KBrandShowcase extends StatelessWidget {
  const KBrandShowcase({super.key, required this.images});

  final List<String> images;

  @override
  Widget build(BuildContext context) {
    bool dark = KHelperFunction.isDarkMode(context);
    return KRoundedContainer(
      showBorder: true,
      borderColor: KColors.darkGrey,
      bgColor: Colors.transparent,
      padding: EdgeInsets.all(KSizes.md),
      margin: EdgeInsets.only(bottom: KSizes.spaceBtwItems),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          KBrandCart(showBorder: false),
          Row(
            children: images
                .map((image) => buildBrandImage(dark, image))
                .toList(),
          ),
        ],
      ),
    );
  }

  Widget buildBrandImage(bool dark, String image) {
    return Expanded(
      child: KRoundedContainer(
        height: 100,
        padding: EdgeInsets.all(KSizes.md),
        margin: EdgeInsets.only(right: KSizes.sm),
        bgColor: dark ? KColors.darkGrey : KColors.light,
        child: Image(image: AssetImage(image), fit: BoxFit.contain),
      ),
    );
  }
}
