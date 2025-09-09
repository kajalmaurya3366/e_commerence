import 'package:e_commerence/features/shop/screens/sub_catergory/sub_category.dart';
import 'package:e_commerence/utils/constant/images.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../common/Widgets/img_text/vertical_img_text.dart';
import '../../../../../utils/constant/colors.dart';
import '../../../../../utils/constant/sizes.dart';
import '../../../../../utils/constant/texts.dart';

class KHomeCategories extends StatelessWidget {
  const KHomeCategories({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: KSizes.defaultSpace),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // ----------- TEXT -------------
          Text(
            KTexts.popularCategory,
            style: Theme.of(
              context,
            ).textTheme.headlineMedium!.apply(color: KColors.white),
          ),
          SizedBox(height: KSizes.spaceBtwItems),

          // ------------ icon & text -----------------
          SizedBox(
            height: 80,
            child: ListView.separated(
              separatorBuilder: (context, index) => SizedBox(width: KSizes.spaceBtwItems),
              scrollDirection: Axis.horizontal,
              itemCount: 10,
              itemBuilder: (context, index) {
                return KVerticalImageText(
                  title: 'Sports Category',
                  image: KImages.sportsIcon,
                  textColor: KColors.white,
                  onTap: () => Get.to(SubCategoryScreen()),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
