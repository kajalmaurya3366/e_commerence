import 'package:e_commerence/common/Widgets/Button/elevated_button.dart';
import 'package:e_commerence/common/Widgets/app_bar/appbar.dart';
import 'package:e_commerence/common/Widgets/texts/product_price_text.dart';
import 'package:e_commerence/common/style/padding.dart';
import 'package:e_commerence/utils/constant/sizes.dart';
import 'package:flutter/material.dart';

import '../../../../common/Widgets/products/cart/cart_item.dart';
import '../../../../common/Widgets/products/cart/product_quantity_with_add_minus.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: KAppBar(
        showBackArrow: true,
        title: Text('Cart', style: Theme.of(context).textTheme.headlineMedium),
      ),

      body: Padding(
        padding: KPadding.screenPadding,
        child: ListView.separated(
          separatorBuilder: (context, index) =>
              SizedBox(height: KSizes.spaceBtwSections),
          itemCount: 10,
          itemBuilder: (context, index) {
            return Column(
              children: [
                // ------- cart Item ---------
                KCartItem(),
                SizedBox(height: KSizes.spaceBtwItems),

                // -------- counter Item and price ---------
                Row(
                  children: [
                    SizedBox(width: 60),
                    //-------- Quantity ----------
                    KProductQuantityWithAddMinus(),
                    Spacer(),


                    // -------- price ----------
                    KProductPriceText(price: '220'),
                  ],
                ),
              ],
            );
          },
        ),
      ),

      // ----------- Bottom Navigation -------------
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(KSizes.defaultSpace),
        child: KElevatedButton(onPressed: (){}, child: Text('Checkout \$2345')),
      ),
    );
  }
}
