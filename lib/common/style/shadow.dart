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
}
