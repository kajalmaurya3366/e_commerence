import 'package:e_commerence/common/Widgets/app_bar/appbar.dart';
import 'package:e_commerence/common/style/padding.dart';
import 'package:e_commerence/features/personalization/screens/address/add_new_address.dart';
import 'package:e_commerence/features/personalization/screens/address/widget/single_address.dart';
import 'package:e_commerence/utils/constant/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class AddressScreen extends StatelessWidget {
  const AddressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: KAppBar(
        showBackArrow: true,
        title: Text(
          'Addresses',
          style: Theme.of(context).textTheme.headlineMedium,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: KPadding.screenPadding,
          child: Column(
            children: [
              KSingleAddress(isSelected: true),
              KSingleAddress(isSelected: true),
              KSingleAddress(isSelected: false),
              KSingleAddress(isSelected: false),
              KSingleAddress(isSelected: true),
              KSingleAddress(isSelected: true),
              KSingleAddress(isSelected: true),
              KSingleAddress(isSelected: true),
            ],
          ),
        ),
      ),

      // ----------- Floating Action Btn ----------
      floatingActionButton: FloatingActionButton(
        onPressed: () => Get.to(AddNewAddress()),
        backgroundColor: KColors.primary,
        child: Icon(  Iconsax.add,color: KColors.white,),
      ),
    );
  }
}
