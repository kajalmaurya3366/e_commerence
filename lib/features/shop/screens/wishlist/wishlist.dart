import 'package:e_commerence/common/Widgets/app_bar/appbar.dart';
import 'package:e_commerence/common/Widgets/icons/circular_icon.dart';
import 'package:e_commerence/common/Widgets/layouts/grid_layout.dart';
import 'package:e_commerence/common/Widgets/products/product_carts/product_cart_vertical.dart';
import 'package:e_commerence/utils/constant/sizes.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../navigation_menu.dart';

class WishListScreen extends StatelessWidget {
  const WishListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // ------------ APP BAR -------------
      appBar: KAppBar(
        title: Text(
          'Wishlist',
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        actions: [
          KCircularIcon(
            icon: Iconsax.add,
            onPressed: () =>
                NavigationController.instance.selectIndex.value = 0,
          ),
        ],
      ),

      // ----------------- Body -----------------
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(KSizes.defaultSpace),
          child: KGridLayout(
            itemCount: 10,
            itemBuilder: (context, index) => KProductCartVertical(),
          ),
        ),
      ),
    );
  }
}
