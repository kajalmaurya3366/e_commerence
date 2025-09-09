import 'package:e_commerence/common/Widgets/products/product_carts/product_cart_vertical.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../utils/constant/sizes.dart';
import '../layouts/grid_layout.dart';

class KShortableProducts extends StatelessWidget {
  const KShortableProducts({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //-------- filter ----------
        DropdownButtonFormField(
            decoration: InputDecoration(
              prefixIcon: Icon(Iconsax.sort),
            ),
            items: [
              'Name',
              'Lower Price',
              'Higher Price',
              'sales',
              'Newest'
            ].map((filter) {
              return DropdownMenuItem(value: filter, child: Text(filter),);
            },).toList(),
            onChanged: (value) {}),
        SizedBox(height: KSizes.spaceBtwSections,),

        KGridLayout(itemCount: 10, itemBuilder: (context, index) => KProductCartVertical(),)
      ],
    );
  }
}