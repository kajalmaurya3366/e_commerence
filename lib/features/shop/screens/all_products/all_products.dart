import 'package:e_commerence/common/Widgets/app_bar/appbar.dart';
import 'package:e_commerence/common/Widgets/layouts/grid_layout.dart';
import 'package:e_commerence/common/Widgets/products/product_carts/product_cart_vertical.dart';
import 'package:e_commerence/common/style/padding.dart';
import 'package:e_commerence/utils/constant/sizes.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class AllProductsScreen extends StatelessWidget {
  const AllProductsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: KAppBar(
        showBackArrow: true,
        title: Text(
          'Popular Products',
          style: Theme
              .of(context)
              .textTheme
              .headlineMedium,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: KPadding.screenPadding,
          child: KShortableProducts(),
        ),
      ),
    );
  }
}

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
