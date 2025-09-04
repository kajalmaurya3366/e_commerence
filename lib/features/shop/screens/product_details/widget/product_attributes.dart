import 'package:e_commerence/common/Widgets/chips/choice_chip.dart';
import 'package:e_commerence/common/Widgets/custome_shape/rounded_container.dart';
import 'package:e_commerence/common/Widgets/texts/product_price_text.dart';
import 'package:e_commerence/common/Widgets/texts/product_title_text.dart';
import 'package:e_commerence/common/Widgets/texts/section_heading.dart';
import 'package:e_commerence/utils/constant/colors.dart';
import 'package:e_commerence/utils/constant/sizes.dart';
import 'package:e_commerence/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';

class KProductAttributes extends StatelessWidget {
  const KProductAttributes({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = KHelperFunction.isDarkMode(context);
    return Column(
      children: [
        // ------------- SELECTED ATTRIBUTE PRICE AND DESCRIPTION -----------
        KRoundedContainer(
          padding: EdgeInsets.all(KSizes.md),
          bgColor: dark ? KColors.darkerGrey : KColors.grey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // --- Title price & stock -----
              Row(
                children: [
                  // ---- variation heading ----
                  KSectionHeading(title: 'Variation', showActionBtn: false),
                  SizedBox(width: KSizes.spaceBtwItems),

                  Column(
                    children: [
                      // -----------price, sale price, and actual price-----------
                      Row(
                        children: [
                          // ---- [TEXT ]  price ----
                          KProductTitleText(
                            title: 'Price : ',
                            smallSize: true,
                          ),

                          // =----- actual price ----
                          Text(
                            ' \$250',
                            style: Theme.of(context).textTheme.titleSmall!
                                .apply(
                                  decoration: TextDecoration.lineThrough,
                                ),
                          ),
                          SizedBox(width: KSizes.spaceBtwItems / 6),

                          // --- sale price ----
                          KProductPriceText(price: '200'),
                        ],
                      ),

                      //========== Stock status =======
                      Row(
                        children: [
                          KProductTitleText(
                            title: 'Stock : ',
                            smallSize: true,
                          ),
                          Text(
                            'In Stock',
                            style: Theme.of(context).textTheme.titleMedium,
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: KSizes.spaceBtwItems),

              // ========= Description =========
              KProductTitleText(
                title: 'The product is iphone 11 with 512 GB',
                smallSize: true,
                maxLines: 4,
              ),
            ],
          ),
        ),
        SizedBox(height: KSizes.spaceBtwItems),

        // ========== Colors ==============
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            KSectionHeading(title: 'Colors', showActionBtn: false),
            SizedBox(height: KSizes.spaceBtwItems/2),
            Wrap(
              spacing: KSizes.sm,
              children: [
                KChoiceChip(text: 'Red', selected: true, onSelected: (value) {}),
                KChoiceChip(text: 'Blue', selected: false, onSelected: (value) {}),
                KChoiceChip(text: 'Yellow', selected: false, onSelected: (value) {}),
              ],
            ),
          ],
        ),
        SizedBox(height: KSizes.spaceBtwItems*1.5),

        // ========== Sizes ==============
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            KSectionHeading(title: 'Sizes', showActionBtn: false),
            SizedBox(height: KSizes.spaceBtwItems/2),
            Wrap(
              spacing: KSizes.sm,
              children: [
                KChoiceChip(text: 'Small', selected: true, onSelected: (value) {}),
                KChoiceChip(text: 'Medium', selected: false, onSelected: (value) {}),
                KChoiceChip(text: 'Large', selected: false, onSelected: (value) {}),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
