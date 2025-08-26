import 'package:flutter/material.dart';

import '../../../utils/constant/colors.dart';
import '../../../utils/constant/sizes.dart';
import '../custome_shape/circular_container.dart';

class KVerticalImageText extends StatelessWidget {
  const KVerticalImageText({
    super.key,
    required this.image,
    required this.title,
    required this.textColor,
    this.backgroundColor,
    this.onTap,
  });

  final String image, title;
  final Color textColor;
  final Color? backgroundColor;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: [
          // ----------- Circular Image ---------------
          KCircularContainer(
            height: 56,
            width: 56,
            bgColor: backgroundColor ?? KColors.white,
            padding: EdgeInsets.all(KSizes.sm),
            child: Image(image: AssetImage(image), fit: BoxFit.cover),
          ),
          SizedBox(height: KSizes.spaceBtwItems / 2),

          // -------------- Title --------------------
          SizedBox(
            width: 55,
            child: Text(
              title,
              style: Theme.of(
                context,
              ).textTheme.labelMedium!.apply(color: textColor),
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
