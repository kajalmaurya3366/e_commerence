import 'package:e_commerence/common/Widgets/Button/elevated_button.dart';
import 'package:e_commerence/common/Widgets/texts/section_heading.dart';
import 'package:e_commerence/common/style/padding.dart';
import 'package:e_commerence/features/shop/screens/product_details/widget/bottom_add_to_cart.dart';
import 'package:e_commerence/features/shop/screens/product_details/widget/product_attributes.dart';
import 'package:e_commerence/features/shop/screens/product_details/widget/product_meta_data.dart';
import 'package:e_commerence/features/shop/screens/product_details/widget/product_thumbnail_and_slider.dart';
import 'package:e_commerence/utils/constant/sizes.dart';

import 'package:e_commerence/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';

class ProductDetailsScreen extends StatelessWidget {
  const ProductDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = KHelperFunction.isDarkMode(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            // ======== Product image with slider ============
            KProductThumbnailAndSlider(),

          Padding(
            padding: KPadding.screenPadding,
            child: Column(
              children: [
                // ========= price ,title , stock and Brand =======
                KProductMetaData(),

                // ============ Attributes ============
                KProductAttributes(),
                SizedBox(height: KSizes.spaceBtwSections),

                //================= CheckOut Btn ===========
                KElevatedButton(onPressed: () {}, child: Text('Checkout')),
                SizedBox(height: KSizes.spaceBtwSections),

                //============= Description ==========
                KSectionHeading(title: 'Description', showActionBtn: false),
                SizedBox(height: KSizes.spaceBtwItems),
                ReadMoreText(
                  'This is a product of iphone 11 with 512GB.This is a product of iphone 11 with 512GB.This is a product of iphone 11 with 512GB.This is a product of iphone 11 with 512GB.This is a product of iphone 11 with 512GB.This is a product of iphone 11 with 512GB.',
                  trimLines: 2,
                  trimMode: TrimMode.Line,
                  trimCollapsedText: ' Show more',
                  trimExpandedText: ' show less',
                  moreStyle: TextStyle(fontSize: 14,color: Colors.blue,fontWeight: FontWeight.w800),
                  lessStyle: TextStyle(fontSize: 14,color: Colors.blue,fontWeight: FontWeight.w800),
                ),
                SizedBox(height: KSizes.spaceBtwSections),

              ],
            ),
          )
          ],
        ),
      ),

      // ============ Body Navigation =======
      bottomNavigationBar: BottomAddToCart(),
    );
  }
}
