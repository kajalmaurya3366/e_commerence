import 'package:flutter/material.dart';

import '../../../../../common/Widgets/brands/showcase.dart';
import '../../../../../common/Widgets/layouts/grid_layout.dart';
import '../../../../../common/Widgets/products/product_carts/product_cart_vertical.dart';
import '../../../../../common/Widgets/texts/section_heading.dart';
import '../../../../../utils/constant/images.dart';
import '../../../../../utils/constant/sizes.dart';

class KCatergoryTab extends StatelessWidget {
  const KCatergoryTab({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: KSizes.defaultSpace),
          child: Column(
            children: [
              // ----------- Brand show case 1 ---------------
              KBrandShowcase(
                images: [
                  KImages.productImage47,
                  KImages.productImage3,
                  KImages.productImage6,
                ],
              ),

              // ----------- Brand show case 2 ---------------
              KBrandShowcase(
                images: [
                  KImages.productImage47,
                  KImages.productImage3,
                  KImages.productImage6,
                ],
              ),

              // ----------- you might like ---------------
              KSectionHeading(title: 'You might like', onPressed: () {}),

              // ----------- grid layout products---------------
              KGridLayout(
                itemCount: 4,
                itemBuilder: (context, index) {
                  return KProductCartVertical();
                },
              ),

              SizedBox(height: KSizes.spaceBtwSections),
            ],
          ),
        ),
      ],
    );
  }
}
