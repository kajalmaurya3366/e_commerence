import 'package:e_commerence/common/Widgets/brands/brand_cart.dart';
import 'package:e_commerence/common/style/padding.dart';
import 'package:e_commerence/features/shop/screens/all_products/all_products.dart';
import 'package:e_commerence/utils/constant/sizes.dart';
import 'package:flutter/material.dart';

import '../../../../common/Widgets/app_bar/appbar.dart';

class BrandProductScreen extends StatelessWidget {
  const BrandProductScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: KAppBar(
        showBackArrow: true,
        title: Text('Bata', style: Theme.of(context).textTheme.headlineSmall),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: KPadding.screenPadding,
          child: Column(
              children: [
                //-------- Brand ---------
                KBrandCart(),
                SizedBox(height: KSizes.spaceBtwSections),

                //---------- Brand products ------------
                KShortableProducts()
              ]
          ),
        ),
      ),
    );
  }
}
