import 'package:e_commerence/utils/constant/colors.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../common/Widgets/custome_shape/rounded_container.dart';
import '../../../../../utils/constant/sizes.dart';

class KSingleAddress extends StatelessWidget {
  const KSingleAddress({super.key, required this.isSelected});

  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return KRoundedContainer(
      margin: EdgeInsets.only(bottom: KSizes.spaceBtwItems),
      width: double.infinity,
      showBorder: true,
      bgColor: isSelected
          ? KColors.primary.withValues(alpha: 0.3)
          : Colors.transparent,
      borderColor: isSelected ? Colors.transparent : KColors.primary,
      padding: EdgeInsets.all(KSizes.md),
      child: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Unknown Pro',
                style: Theme.of(context).textTheme.titleLarge,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),

              SizedBox(height: KSizes.spaceBtwItems/4),
              Text(
                '+91 23456565',
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              SizedBox(height: KSizes.spaceBtwItems/4),

              Text('House no 2 radha rkish sfksjdf sofjs sjdfkjsdfkj sdifji'),
            ],
          ),
          if (isSelected)
            Positioned(
              top: 0,
              right: 6,
              bottom: 0,
              child: Icon(Iconsax.tick_circle5),
            ),
        ],
      ),
    );
  }
}
