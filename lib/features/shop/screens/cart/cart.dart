import 'package:e_commerence/common/Widgets/Button/elevated_button.dart';
import 'package:e_commerence/common/Widgets/app_bar/appbar.dart';
import 'package:e_commerence/common/style/padding.dart';
import 'package:e_commerence/features/shop/screens/cart/widget/cart_items.dart';
import 'package:e_commerence/features/shop/screens/checkout/checkout.dart';
import 'package:e_commerence/utils/constant/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


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
        child: KCartItems(),
      ),

      // ----------- Bottom Navigation -------------
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(KSizes.defaultSpace),
        child: KElevatedButton(onPressed: ()=> Get.to(CheckoutScreen()), child: Text('Checkout \$2345')),
      ),
    );
  }
}


