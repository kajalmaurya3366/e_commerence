import 'package:flutter/material.dart';

import '../../../../../utils/constant/sizes.dart';

class KBillingAmountSection extends StatelessWidget {
  const KBillingAmountSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [

        // -------- subtotal -----------
        Row(
          children: [
            Expanded(child: Text('Subtotal',style: Theme.of(context).textTheme.bodyMedium)),
            Text('\$343',style: Theme.of(context).textTheme.labelLarge),
          ],
        ),
        SizedBox(height: KSizes.spaceBtwItems/2,),

        // ------------ shipping fee -----------
        Row(
          children: [
            Expanded(child: Text('Shipping Fee',style: Theme.of(context).textTheme.bodyMedium)),
            Text('\$34',style: Theme.of(context).textTheme.labelLarge),
          ],
        ),
        SizedBox(height: KSizes.spaceBtwItems/2,),

        //------------ tax fee --------------
        Row(
          children: [
            Expanded(child: Text('Tax Fee',style: Theme.of(context).textTheme.bodyMedium)),
            Text('\$34',style: Theme.of(context).textTheme.labelLarge),
          ],
        ),
        SizedBox(height: KSizes.spaceBtwItems/2,),

        //---------- order total ----------------
        Row(
          children: [
            Expanded(child: Text('Order Total',style: Theme.of(context).textTheme.bodyMedium)),
            Text('\$34',style: Theme.of(context).textTheme.titleMedium),
          ],
        ),
      ],
    );
  }
}
