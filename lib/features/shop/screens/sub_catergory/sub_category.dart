import 'package:e_commerence/common/Widgets/texts/section_heading.dart';
import 'package:e_commerence/common/style/padding.dart';

import 'package:e_commerence/utils/constant/sizes.dart';
import 'package:e_commerence/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';

import '../../../../common/Widgets/app_bar/appbar.dart';

import '../../../../common/Widgets/products/product_carts/product_cart_horizontal.dart';

class SubCategoryScreen extends StatelessWidget {
  const SubCategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    bool dark = KHelperFunction.isDarkMode(context);
    return Scaffold(
      appBar: KAppBar(
        showBackArrow: true,
        title: Text('Sports', style: Theme.of(context).textTheme.headlineSmall),
      ),

      body: SingleChildScrollView(
        child: Padding(
          padding: KPadding.screenPadding,
          child: Column(
            children: [
              KSectionHeading(title: 'Sports shoes', onPressed: () {}),
              SizedBox(height: KSizes.spaceBtwItems),

              //---------- horizontal product cart -------
              SizedBox(
                height: 120,
                child: ListView.separated(
                  separatorBuilder: (context, index) =>
                      SizedBox(width: KSizes.spaceBtwItems),
                  itemCount: 10,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return KProductCartHorizontal();
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
