import 'package:e_commerence/common/Widgets/app_bar/appbar.dart';
import 'package:e_commerence/common/Widgets/brands/brand_cart.dart';
import 'package:e_commerence/common/Widgets/layouts/grid_layout.dart';
import 'package:e_commerence/common/Widgets/texts/section_heading.dart';
import 'package:e_commerence/common/style/padding.dart';
import 'package:e_commerence/features/shop/screens/brands/brand_products.dart';
import 'package:e_commerence/utils/constant/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BrandScreen extends StatelessWidget {
  const BrandScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: KAppBar(
        showBackArrow: true,
        title: Text('Brand', style: Theme.of(context).textTheme.headlineSmall),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: KPadding.screenPadding,
          child: Column(children: [
            //--------- text -----------
            KSectionHeading(title: 'Brands',showActionBtn: false),
            SizedBox(height: KSizes.spaceBtwItems),

            //----- list of brands ---------
            KGridLayout(itemCount: 10, itemBuilder: (context, index) => KBrandCart(onTap: ()=>Get.to(BrandProductScreen()),),mainAxisExtent: 80,)

          ]),
        ),
      ),
    );
  }
}
