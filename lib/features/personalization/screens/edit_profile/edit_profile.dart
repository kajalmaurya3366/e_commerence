import 'package:e_commerence/common/Widgets/app_bar/appbar.dart';
import 'package:e_commerence/common/Widgets/texts/section_heading.dart';
import 'package:e_commerence/common/style/padding.dart';
import 'package:e_commerence/features/personalization/screens/edit_profile/widget/user_detail_row.dart';
import 'package:e_commerence/features/personalization/screens/edit_profile/widget/user_profile_with_edit_icon.dart';
import 'package:e_commerence/utils/constant/sizes.dart';
import 'package:flutter/material.dart';

class EditProfileScreen extends StatelessWidget {
  const EditProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: KAppBar(
        showBackArrow: true,
        title: Text(
          'Edit Profile',
          style: Theme.of(context).textTheme.headlineMedium,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: KPadding.screenPadding,
          child: Column(
            children: [
              // ======== Profile with Edit icon ===================
              UserProfileWithEditIcon(),
              SizedBox(height: KSizes.spaceBtwSections),

              //================ Divider ========================
              Divider(),
              SizedBox(height: KSizes.spaceBtwSections),

              // ================= Account setting heading ==================
              KSectionHeading(title: "Account Settings",showActionBtn: false),
              SizedBox(height: KSizes.spaceBtwItems),

              // =============== User details Row ===================
              UserDetailRow(title: 'Name',value: 'Unknown Pro',onTab: (){},),
              UserDetailRow(title: 'Username',value: 'Unknownpro12',onTab: (){}),

              //================ Divider ========================
              Divider(),
              SizedBox(height: KSizes.spaceBtwSections),

              // ================= Profile section heading ==================
              KSectionHeading(title: "Profile Settings",showActionBtn: false),
              SizedBox(height: KSizes.spaceBtwItems),

              // =============== profile settings ===================
              UserDetailRow(title: 'User ID',value: '123456',onTab: (){},),
              UserDetailRow(title: 'Email',value: 'kajalmaurya@gmail.com',onTab: (){}),
              UserDetailRow(title: 'Phone Number',value: '1234567890',onTab: (){}),
              UserDetailRow(title: 'Gender',value: 'Male',onTab: (){}),
              SizedBox(height: KSizes.spaceBtwItems),

              //================ Divider ========================
              Divider(),
              SizedBox(height: KSizes.spaceBtwSections),

              TextButton(onPressed: (){}, child: Text('Close Account',style: TextStyle(color: Colors.red),))


            ],
          ),
        ),
      ),
    );
  }
}


