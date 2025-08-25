import 'package:e_commerence/utils/constant/enums.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../utils/constant/colors.dart';
import '../../../utils/constant/sizes.dart';
import 'brand_title_text.dart';

class KBrandTitleWIthVerifyIcon extends StatelessWidget {
  const KBrandTitleWIthVerifyIcon({
    super.key,
    required this.title,
    this.maxLines =1,
    this.textColor,
    this.iconColor =KColors.primary,
    this.textAlign =TextAlign.center,
    this.brandTextSizes =TextSizes.small,
  });

  final String title;
  final int maxLines;
  final Color? textColor, iconColor;
  final TextAlign? textAlign;
  final TextSizes brandTextSizes;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Flexible(
          child: KBrandTitleText(
            title: title,
            maxLines: maxLines,
            textAlign: textAlign,
            brandTextSize: brandTextSizes,
            color: textColor,
          ),
        ),
        SizedBox(width: KSizes.xs),
        Icon(Iconsax.verify5, color: iconColor, size: KSizes.iconXs),
      ],
    );
  }
}
