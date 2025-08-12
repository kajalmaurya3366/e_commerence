import 'package:flutter/material.dart';

import '../../../utils/constant/colors.dart';
import '../../../utils/constant/images.dart';
import '../../../utils/constant/sizes.dart';

class KSocialButtons extends StatelessWidget {
  const KSocialButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        // google btn
        buildButton(KImages.logoGoogle,(){}),

        SizedBox(width: KSizes.spaceBtwItems),

        // facebook btn
        buildButton(KImages.logoFacebook,(){}),

      ],
    );
  }

  Container buildButton( String image,VoidCallback onPressed) {
    return Container(
        decoration: BoxDecoration(
          border: Border.all(color: KColors.grey),
          borderRadius: BorderRadius.circular(100),
        ),
        child: IconButton(onPressed: onPressed, icon: Image.asset(image,height: KSizes.iconMd,width: KSizes.iconMd,)),
      );
  }
}