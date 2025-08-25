import 'package:e_commerence/common/Widgets/app_bar/appbar.dart';
import 'package:e_commerence/common/Widgets/custome_shape/clipper/rounded_container.dart';
import 'package:e_commerence/common/Widgets/images/rounded_image.dart';
import 'package:e_commerence/common/Widgets/products/cart/cart_counter_icon.dart';
import 'package:e_commerence/common/Widgets/texts/brand_title_with_verify_icon.dart';
import 'package:e_commerence/common/Widgets/texts/section_heading.dart';
import 'package:e_commerence/features/shop/screens/store/widgets/store_primary_header.dart';
import 'package:e_commerence/utils/constant/colors.dart';
import 'package:e_commerence/utils/constant/enums.dart';
import 'package:e_commerence/utils/constant/images.dart';
import 'package:flutter/material.dart';

import '../../../../common/Widgets/brands/brand_cart.dart';
import '../../../../common/Widgets/textfields/search_bar.dart';
import '../../../../utils/constant/sizes.dart';
import '../home/widgets/home_app_bar.dart';
import '../home/widgets/home_category.dart';
import '../home/widgets/primary_header_container.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) {
          return [
            SliverAppBar(
              automaticallyImplyLeading: false,
              expandedHeight: 300,
              pinned: true,
              floating: true,
              flexibleSpace: Column(
                children: [
                  // ------------------- Primary Header -----------------
                  KStorePrimaryHeader(),
                  SizedBox(height: KSizes.spaceBtwItems),

                 Padding(
                   padding: const EdgeInsets.symmetric(horizontal: KSizes.defaultSpace),
                   child: Column(
                     children: [
                       // ------------------ Brand heading --------------------
                       KSectionHeading(title: 'Brands', onPressed: () {}),

                       // ------------- Brand Card -----------------
                       SizedBox(
                         height: KSizes.brandCardHeight,
                         child: ListView.separated(
                           itemBuilder: (context, index) => KBrandCart(),
                           itemCount: 10,
                           scrollDirection: Axis.horizontal,
                           shrinkWrap: true,
                           separatorBuilder: ( context,index)=> SizedBox(width: KSizes.spaceBtwItems),
                         ),
                       ),
                     ],
                   ),
                 )
                ],
              ),
            ),
          ];
        },
        body: Container(),
      ),
    );
  }
}
