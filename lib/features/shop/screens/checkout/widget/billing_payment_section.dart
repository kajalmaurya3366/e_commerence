import 'package:e_commerence/common/Widgets/custome_shape/rounded_container.dart';
import 'package:e_commerence/common/Widgets/texts/section_heading.dart';
import 'package:e_commerence/utils/constant/colors.dart';
import 'package:e_commerence/utils/constant/images.dart';
import 'package:e_commerence/utils/constant/sizes.dart';
import 'package:e_commerence/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';

class KBillingPaymentSection extends StatelessWidget {
  const KBillingPaymentSection({super.key});

  @override
  Widget build(BuildContext context) {
    bool dark=KHelperFunction.isDarkMode(context);
    return Column(
      children: [

        // ------ text payment method -----------
        KSectionHeading(
          title: 'Payment Method',
          buttonTitle: 'Change',
          onPressed: () {},
        ),

        SizedBox(height: KSizes.spaceBtwItems/2),

        Row(
          children: [
            //---------- logo ---------------
            KRoundedContainer(
              width: 60,
              height: 35,
              bgColor: dark?KColors.light:KColors.white,
              padding: EdgeInsets.all(KSizes.sm),
              child: Image(image: AssetImage(KImages.googlePay),fit: BoxFit.contain,),
            ),
            SizedBox(width: KSizes.spaceBtwItems,),

            //------------ logo name ---------------
            Text('Google Pay',style: Theme.of(context).textTheme.bodyLarge),
          ],
        )
      ],
    );
  }
}
