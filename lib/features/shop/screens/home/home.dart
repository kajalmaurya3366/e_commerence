import 'package:e_commerence/features/shop/screens/home/widgets/home_app_bar.dart';
import 'package:e_commerence/features/shop/screens/home/widgets/home_category.dart';
import 'package:e_commerence/features/shop/screens/home/widgets/primary_header_container.dart';
import 'package:e_commerence/utils/constant/sizes.dart';
import 'package:flutter/material.dart';

import '../../../../common/Widgets/textfields/search_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(height: KSizes.homePrimaryHeaderHeight + 10),

          // --------- Primary Header ----------------
          KPrimaryHeaderContainer(
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
    );
  }
}


