import 'package:flutter/material.dart';

import '../../../../utils/constant/colors.dart';

class KCircularContainer extends StatelessWidget {
  const KCircularContainer({
    super.key,
     this.height=400,
     this.width=400,
     this.radius=400,
     this.bgColor=KColors.white,
     this.padding,
     this.margin,
    this.child,
  });

  final double height, width, radius;
  final Color bgColor;
  final EdgeInsetsGeometry? padding, margin;
  final Widget? child;

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
      ),
      child: child,
    );
  }
}
