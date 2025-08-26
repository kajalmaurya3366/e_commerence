import 'package:e_commerence/features/shop/screens/home/home.dart';
import 'package:e_commerence/features/shop/screens/store/store.dart';
import 'package:e_commerence/features/shop/screens/wishlist/wishlist.dart';
import 'package:e_commerence/utils/constant/colors.dart';
import 'package:e_commerence/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import 'features/personalization/screens/profile/profile.dart';

class NavigationMenu extends StatelessWidget {
  const NavigationMenu({super.key});

  @override
  Widget build(BuildContext context) {
    bool dark = KHelperFunction.isDarkMode(context);
    final controller = Get.put(NavigationController());


    return Scaffold(
      body: Obx(() => controller.screens[controller.selectIndex.value]),
      bottomNavigationBar: Obx(
        () => NavigationBar(
          elevation: 0,
          backgroundColor: dark? KColors.dark:KColors.light,
          indicatorColor: dark?KColors.light.withValues(alpha: 0.1):KColors.black.withValues(alpha: 0.1),
          selectedIndex: controller.selectIndex.value,
          onDestinationSelected: (index) {
            controller.selectIndex.value = index;
          },
          destinations: [
            NavigationDestination(icon: Icon(Iconsax.home), label: 'Home'),
            NavigationDestination(icon: Icon(Iconsax.shop), label: 'Store'),
            NavigationDestination(icon: Icon(Iconsax.heart), label: 'Wishlist'),
            NavigationDestination(icon: Icon(Iconsax.user), label: 'Profile'),
          ],
        ),
      ),
    );
  }
}

class NavigationController extends GetxController {
  static NavigationController get instance =>  Get.find();
  RxInt selectIndex = 0.obs;
  List<Widget> screens = [
    HomeScreen(),
    StoreScreen(),
    WishListScreen(),
    ProfileScreen(),
  ];
}
