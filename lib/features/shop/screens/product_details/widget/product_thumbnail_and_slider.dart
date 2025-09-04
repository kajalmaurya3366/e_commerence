import 'package:e_commerence/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../common/Widgets/app_bar/appbar.dart';
import '../../../../../common/Widgets/icons/circular_icon.dart';
import '../../../../../common/Widgets/images/rounded_image.dart';
import '../../../../../utils/constant/colors.dart';
import '../../../../../utils/constant/images.dart';
import '../../../../../utils/constant/sizes.dart';

class KProductThumbnailAndSlider extends StatelessWidget {
  const KProductThumbnailAndSlider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = KHelperFunction.isDarkMode(context);
    return Container(
      color: dark? KColors.darkerGrey:KColors.light,
      child: Stack(
        children: [
          // ---------- Thumbnail img -------
          SizedBox(
            height: 400,
            child: Padding(
              padding: const EdgeInsets.all(
                KSizes.productImageRadius * 2,
              ),
              child: Center(
                child: Image(image: AssetImage(KImages.productImage4a)),
              ),
            ),
          ),

          // ----------  img Slider  -------
          Positioned(
            bottom: 30,
            left: KSizes.defaultSpace,
            right: 0,
            child: SizedBox(
              height: 80,
              child: ListView.separated(
                separatorBuilder: (context, index) =>
                    SizedBox(width: KSizes.spaceBtwItems),
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: 7,
                itemBuilder: (context, index) => KRoundedImage(
                  width: 80,
                  bgColor: dark ? KColors.dark : KColors.white,
                  padding: EdgeInsets.all(KSizes.sm),
                  border: Border.all(color: KColors.darkerGrey),
                  imageUrl: KImages.productImage4a,
                ),
              ),
            ),
          ),

          // -------- App Bar Back arrow and heart -------------
          KAppBar(
            showBackArrow: true,
            actions: [
              KCircularIcon(icon: Iconsax.heart5,color: Colors.red,)
            ],
          )
        ],
      ),
    );
  }
}
