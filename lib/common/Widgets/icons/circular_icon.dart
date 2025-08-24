import 'package:e_commerence/utils/constant/colors.dart';
import 'package:e_commerence/utils/constant/sizes.dart';
import 'package:e_commerence/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';

class KCircularIcon extends StatelessWidget {
  const KCircularIcon({
    super.key,
    this.width,
    this.height,
    this.size = KSizes.iconMd,
    required this.icon,
    this.color,
    this.bgColor,
    this.onPressed,
  });

  final double? width, height, size;
  final IconData? icon;
  final Color? color, bgColor;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    final dark=KHelperFunction.isDarkMode(context);
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: (bgColor!=null)?bgColor:dark?KColors.dark.withValues(alpha: 0.9):KColors.light.withValues(alpha: 0.9),
        borderRadius: BorderRadius.circular(100)
      ),
      child: IconButton(onPressed: onPressed, icon: Icon(icon,color: color,size: size,)),
    );
  }
}
