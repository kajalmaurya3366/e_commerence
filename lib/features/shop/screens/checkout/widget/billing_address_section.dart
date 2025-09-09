import 'package:e_commerence/common/Widgets/texts/section_heading.dart';
import 'package:e_commerence/utils/constant/colors.dart';
import 'package:e_commerence/utils/constant/sizes.dart';
import 'package:flutter/material.dart';

class KBillingAddressSection extends StatelessWidget {
  const KBillingAddressSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        //------- title -----------
        KSectionHeading(title: 'Billing Address',buttonTitle: 'Change',onPressed: (){},),

        //-------- name ----------
        Text('Unknown pro',style: Theme.of(context).textTheme.titleLarge),
        SizedBox(height: KSizes.spaceBtwItems/2),

        //------- phone number ---------
        Row(
          children: [
            Icon(Icons.phone,size: KSizes.iconSm,color: KColors.darkGrey,),
            SizedBox(width: KSizes.spaceBtwItems,),
            Text('+91 1234567890')
          ],
        ),
        SizedBox(height: KSizes.spaceBtwItems/2),
        Row(
          children: [
            Icon(Icons.location_history,size: KSizes.iconSm,color: KColors.darkGrey,),
            SizedBox(width: KSizes.spaceBtwItems,),
            Expanded(child: Text('H.no 5 radha puram lucknow, UP',softWrap: true,))
          ],
        )

      ],
    );
  }
}
