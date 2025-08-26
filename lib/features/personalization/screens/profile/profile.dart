
import 'package:e_commerence/common/Widgets/texts/section_heading.dart';
import 'package:e_commerence/features/personalization/screens/profile/widgets/profile_primary_header.dart';
import 'package:e_commerence/features/personalization/screens/profile/widgets/setting_menu_tile.dart';
import 'package:e_commerence/features/personalization/screens/profile/widgets/user_profile_tile.dart';
import 'package:e_commerence/utils/constant/sizes.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          // ================ Header ====================
          KProfilePrimaryHeader(),

          Padding(
            padding: const EdgeInsets.all(KSizes.defaultSpace),
            child: Column(
              children: [
                // ================ User profile details ====================
                UserProfileTitle(),
                SizedBox(height: KSizes.spaceBtwSections),

                // ================ Account setting heading  ====================
                KSectionHeading(
                  title: 'Account Settings',
                  showActionBtn: false,
                ),

                // ================ Setting menu ====================
                SettingMenuTile(
                  title: 'My Address',
                  subtitle: 'Set shopping delivery addresses',
                  icon: Iconsax.safe_home,
                ),
                SettingMenuTile(
                  title: 'My Cart',
                  subtitle: 'Add, remove products and move to checkout.',
                  icon: Iconsax.shopping_cart,
                ),
                SettingMenuTile(
                  title: 'My Orders',
                  subtitle: 'In-progress and completed orders.',
                  icon: Iconsax.bag_tick,
                ),

                //================ Logout Btn ================
                SizedBox(height: KSizes.spaceBtwSections),
                SizedBox(
                  width: double.infinity,
                  child: OutlinedButton(
                    onPressed: () {},
                    child: Text('Logout'),
                  ),
                ),
                SizedBox(height: KSizes.spaceBtwSections),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
