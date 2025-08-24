import 'package:flutter/cupertino.dart';

import '../../utils/constant/colors.dart';

class KShadow {
  KShadow._();

  static List<BoxShadow> searchBarShadow = [
    BoxShadow(
      color: KColors.black.withValues(alpha: 0.1),
      spreadRadius: 2.0,
      blurRadius: 4.0,
    ),
  ];

  static List<BoxShadow> verticalProductShadow = [
    BoxShadow(
      color: KColors.darkGrey.withValues(alpha: 0.1),
      blurRadius: 50,
      spreadRadius: 7,
      offset: Offset(0, 2),
    ),
  ];
}
