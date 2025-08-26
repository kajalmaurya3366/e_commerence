import 'package:e_commerence/utils/constant/colors.dart';
import 'package:e_commerence/utils/constant/sizes.dart';
import 'package:flutter/material.dart';

class KRoundedContainer extends StatelessWidget {
  const KRoundedContainer({
    super.key,
    this.width,
    this.height,
    this.radius=KSizes.cardRadiusLg,
    this.child,
    this.showBorder=false,
    this.borderColor= KColors.borderPrimary,
    this.bgColor=KColors.white,
    this.padding,
    this.margin,
  });

  final double? width, height;
  final double radius;
  final Widget? child;
  final bool showBorder;
  final Color borderColor, bgColor;
  final EdgeInsets? padding, margin;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      padding: padding,
      margin: margin,
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(radius),
        border: showBorder?Border.all(color: borderColor):null,
      ),
      child: child,
    );
  }
}
