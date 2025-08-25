import 'package:e_commerence/common/Widgets/texts/section_heading.dart';
import 'package:e_commerence/features/shop/screens/store/widgets/store_primary_header.dart';

import 'package:flutter/material.dart';

import '../../../../common/Widgets/brands/brand_cart.dart';
import '../../../../utils/constant/sizes.dart';

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
