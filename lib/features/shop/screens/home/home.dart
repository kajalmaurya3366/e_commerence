import 'package:e_commerence/features/shop/controllers/home/home_controller.dart';
import 'package:e_commerence/features/shop/screens/home/widgets/home_app_bar.dart';
import 'package:e_commerence/features/shop/screens/home/widgets/home_category.dart';
import 'package:e_commerence/features/shop/screens/home/widgets/primary_header_container.dart';
import 'package:e_commerence/features/shop/screens/home/widgets/promo_slider.dart';
import 'package:e_commerence/utils/constant/images.dart';
import 'package:e_commerence/utils/constant/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../common/Widgets/layouts/grid_layout.dart';
import '../../../../common/Widgets/products/product_carts/product_cart_vertical.dart';
import '../../../../common/Widgets/textfields/search_bar.dart';
import '../../../../common/Widgets/texts/section_heading.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(HomeController());

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            // --------------- Upper Part ------------------
            Stack(
              children: [
                SizedBox(height: KSizes.homePrimaryHeaderHeight + 10),

                // --------- Primary Header ----------------
                KPrimaryHeaderContainer(
                  height: KSizes.homePrimaryHeaderHeight,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // --------------- APP BAR -------------------
                      KHomeAppBar(),
                      SizedBox(height: KSizes.spaceBtwSections),

                      // -------- Home Catergories --------------
                      KHomeCategories(),
                    ],
                  ),
                ),

                // ---------------- Search Bar ---------------
                KSearchBar(),
              ],
            ),

            // -------------- Lower Part ------------------
            Padding(
              padding: EdgeInsets.all(KSizes.defaultSpace),
              child: Column(
                children: [
                  // ---------- Promo Slider ----------------
                  KPromoSlider(
                    banners: [
                      KImages.homeBanner1,
                      KImages.homeBanner2,
                      KImages.homeBanner3,
                      KImages.homeBanner5,
                      KImages.homeBanner6,
                    ],
                  ),

                  // ---------- Section Heading ----------------
                  SizedBox(height: KSizes.spaceBtwSections / 2),
                  KSectionHeading(title: 'Popular Products', onPressed: () {}),
                  SizedBox(height: KSizes.spaceBtwItems),

                  // --------------- Vertical card ---------------
                  KGridLayout(
                    itemCount: 6,
                    itemBuilder: (context, index) => KProductCartVertical(),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
