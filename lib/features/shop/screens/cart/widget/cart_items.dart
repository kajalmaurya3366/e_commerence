import 'package:flutter/material.dart';

import '../../../../../common/Widgets/products/cart/cart_item.dart';
import '../../../../../common/Widgets/products/cart/product_quantity_with_add_minus.dart';
import '../../../../../common/Widgets/texts/product_price_text.dart';
import '../../../../../utils/constant/sizes.dart';

class KCartItems extends StatelessWidget {
  const KCartItems({
    super.key,
    this.showAddMinusButtons=true,

  });

  final bool showAddMinusButtons;


  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      separatorBuilder: (context, index) =>
          SizedBox(height: KSizes.spaceBtwSections),
      itemCount: 2,
      itemBuilder: (context, index) {
        return Column(
          children: [
            // ------- cart Item ---------
            KCartItem(),
            if(showAddMinusButtons)SizedBox(height: KSizes.spaceBtwItems),

            // -------- counter Item and price ---------
           if(showAddMinusButtons) Row(
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
    );
  }
}
