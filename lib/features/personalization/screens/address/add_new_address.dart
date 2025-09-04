import 'package:e_commerence/common/Widgets/Button/elevated_button.dart';
import 'package:e_commerence/common/Widgets/app_bar/appbar.dart';
import 'package:e_commerence/common/style/padding.dart';
import 'package:e_commerence/utils/constant/sizes.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class AddNewAddress extends StatelessWidget {
  const AddNewAddress({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: KAppBar(
        showBackArrow: true,
        title: Text(
          'Add New Address',
          style: Theme.of(context).textTheme.headlineMedium,
        ),
      ),

      body: SingleChildScrollView(
        child: Padding(
          padding: KPadding.screenPadding,
          child: Column(
            children: [
              // ------- Name -----------
              TextFormField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Iconsax.user),
                  labelText: 'Name',
                ),
              ),
              SizedBox(height: KSizes.spaceBtwInputFields),

              // ------- number -----------
              TextFormField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Iconsax.call),
                  labelText: 'Phone Number',
                ),
              ),
              SizedBox(height: KSizes.spaceBtwInputFields),

              // -------- street and postal code --------
              Row(
                children: [
                  Expanded(
                    child: TextFormField(
                      decoration: InputDecoration(
                        prefixIcon: Icon(Iconsax.building_31),
                        labelText: 'Street',
                      ),
                    ),
                  ),
                  SizedBox(width: KSizes.spaceBtwInputFields/2),
                  Expanded(
                    child: TextFormField(
                      decoration: InputDecoration(
                        prefixIcon: Icon(Iconsax.code),
                        labelText: 'Postal Code',
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: KSizes.spaceBtwInputFields),

              // ----------- city and state -----------
              Row(
                children: [
                  Expanded(
                    child: TextFormField(
                      decoration: InputDecoration(
                        prefixIcon: Icon(Iconsax.building_31),
                        labelText: 'City',
                      ),
                    ),
                  ),
                  SizedBox(width: KSizes.spaceBtwInputFields/2),
                  Expanded(
                    child: TextFormField(
                      decoration: InputDecoration(
                        prefixIcon: Icon(Iconsax.code),
                        labelText: 'State',
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: KSizes.spaceBtwInputFields),

              // ------------ country --------
              TextFormField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Iconsax.global),
                  labelText: 'Country',
                ),
              ),
              SizedBox(height: KSizes.spaceBtwSections),

              // ----------- save btn -------
              KElevatedButton(onPressed: () {}, child: Text('Save')),
            ],
          ),
        ),
      ),
    );
  }
}
