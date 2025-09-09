import 'package:e_commerence/common/Widgets/custome_shape/rounded_container.dart';
import 'package:e_commerence/utils/constant/colors.dart';
import 'package:e_commerence/utils/constant/sizes.dart';
import 'package:e_commerence/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class KOrdersListItem extends StatelessWidget {
  const KOrdersListItem({super.key});

  @override
  Widget build(BuildContext context) {
    bool dark = KHelperFunction.isDarkMode(context);
    return ListView.separated(
      itemCount: 6,
      separatorBuilder: (context, index) => SizedBox(height: KSizes.spaceBtwItems,),
      itemBuilder: (context, index) {
        return KRoundedContainer(
          showBorder: true,
          bgColor: dark ? KColors.dark : KColors.light,
          padding: EdgeInsets.all(KSizes.md),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              // ----- row 1 ------------

              //--- shipping ------
              Row(
                children: [
                  Icon(Iconsax.ship),
                  SizedBox(width: KSizes.spaceBtwItems),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Processing',
                          style: Theme.of(context).textTheme.bodyLarge!.apply(
                            color: KColors.primary,
                            fontWeightDelta: 1,
                          ),
                        ),
                        Text(
                          '1 Jan 2025',
                          style: Theme.of(context).textTheme.headlineSmall,
                        ),
                      ],
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Iconsax.arrow_right_34, size: KSizes.iconSm),
                  ),
                ],
              ),
              SizedBox(height: KSizes.spaceBtwItems),

              //----------- row2----------
              Row(
                children: [
                  //-------- tag --------
                  Expanded(
                    child: Row(
                      children: [
                        Icon(Iconsax.tag),
                        SizedBox(width: KSizes.spaceBtwItems),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Order',
                                style: Theme.of(context).textTheme.labelMedium,
                              ),
                              Text(
                                '7899357',
                                style: Theme.of(context).textTheme.titleMedium,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),

                  //-------- shipping date ------
                  Expanded(
                    child: Row(
                      children: [
                        Icon(Iconsax.calendar),
                        SizedBox(width: KSizes.spaceBtwItems),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Shipping Date',
                                style: Theme.of(context).textTheme.labelMedium,
                              ),
                              Text(
                                '06 Jan 2025',
                                style: Theme.of(context).textTheme.titleMedium,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }
}
