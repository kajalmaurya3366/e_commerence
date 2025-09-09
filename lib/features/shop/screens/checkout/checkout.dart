import 'package:e_commerence/common/Widgets/app_bar/appbar.dart';
import 'package:e_commerence/common/Widgets/custome_shape/rounded_container.dart';
import 'package:e_commerence/common/screens/success_screen.dart';
import 'package:e_commerence/common/style/padding.dart';
import 'package:e_commerence/features/shop/screens/cart/widget/cart_items.dart';
import 'package:e_commerence/features/shop/screens/checkout/widget/billing_address_section.dart';
import 'package:e_commerence/features/shop/screens/checkout/widget/billing_amount_section.dart';
import 'package:e_commerence/features/shop/screens/checkout/widget/billing_payment_section.dart';
import 'package:e_commerence/navigation_menu.dart';
import 'package:e_commerence/utils/constant/images.dart';
import 'package:e_commerence/utils/constant/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../common/Widgets/Button/elevated_button.dart';
import '../../../../common/Widgets/textfields/promo_code.dart';

class CheckoutScreen extends StatelessWidget {
  const CheckoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: KAppBar(
        showBackArrow: true,
        title: Text(
          'Order Review',
          style: Theme.of(context).textTheme.headlineSmall,
        ),
      ),

      // ------------ BODY -----------------
      body: SingleChildScrollView(
        child: Padding(
          padding: KPadding.screenPadding,
          child: Column(
            children: [
              KCartItems(showAddMinusButtons: false),
              SizedBox(height: KSizes.spaceBtwSections),

              // ---------- promo code ---------------
              KPromoCodeField(),
              SizedBox(height: KSizes.spaceBtwSections),

              //-------- Billing section -------
              KRoundedContainer(
                showBorder: true,
                padding: EdgeInsets.all(KSizes.md),
                bgColor: Colors.transparent,
                child: Column(
                  children: [
                    // ---------- amount ---------
                    KBillingAmountSection(),
                    Divider(),

                    //----------- payment -------
                    KBillingPaymentSection(),
                    Divider(),

                    //-------- address ---------
                    KBillingAddressSection(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),

      //---------------- Bottom Navigation ------------
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(KSizes.defaultSpace),
        child: KElevatedButton(
          onPressed: () => Get.to(
            SuccessScreen(
              image: KImages.successfulImage,
              title: 'Payment Success!',
              subtitle: 'Your Item will be shipped soon!',
              onTap: () => Get.offAll(NavigationMenu()),
            ),
          ),
          child: Text('Checkout \$2345'),
        ),
      ),
    );
  }
}
