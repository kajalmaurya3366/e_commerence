

import 'package:flutter/material.dart';

import '../../../utils/constant/enums.dart';
import '../../../utils/constant/images.dart';
import '../../../utils/constant/sizes.dart';
import '../custome_shape/clipper/rounded_container.dart';
import '../images/rounded_image.dart';
import '../texts/brand_title_with_verify_icon.dart';

class KBrandCart extends StatelessWidget {
  const KBrandCart({
    super.key, this.showBorder=true,
  });

  final bool showBorder;
  @override
  Widget build(BuildContext context) {
    return KRoundedContainer(
      height: KSizes.brandCardHeight,
      width: KSizes.brandCardWidth,
      showBorder: showBorder,
      padding: EdgeInsets.all(KSizes.sm),
      bgColor: Colors.transparent,
      child: Row(
        children: [
          // ----Brand Image ----
          Flexible(child: KRoundedImage(imageUrl: KImages.bataIcon,bgColor: Colors.transparent,)),
          SizedBox(width: KSizes.spaceBtwItems/2),


          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                //---- brand Name & Icon -----
                KBrandTitleWIthVerifyIcon(title: 'Bata' , brandTextSizes: TextSizes.large),
            
                //---- Product count -----
                Text('123 Products',style: Theme.of(context).textTheme.labelMedium, overflow: TextOverflow.ellipsis)
              ],
            ),
          ),


        ],
      ),

    );
  }
}