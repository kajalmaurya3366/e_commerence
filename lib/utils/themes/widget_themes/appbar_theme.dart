import 'package:e_commerence/utils/constant/colors.dart';
import 'package:e_commerence/utils/constant/sizes.dart';
import 'package:flutter/material.dart';

class KAppBarTheme {
  KAppBarTheme._();

  static AppBarTheme lightAppBarTheme = AppBarTheme(
    elevation: 0,
    centerTitle: false,
    scrolledUnderElevation: 0,
    backgroundColor: Colors.transparent,
    surfaceTintColor: Colors.transparent,
    iconTheme: IconThemeData(color: KColors.black,size: KSizes.iconMd,),
    actionsIconTheme: IconThemeData(color: KColors.black,size: KSizes.iconMd,),
    titleTextStyle: TextStyle(fontSize: 18,fontWeight: FontWeight.w600,color: KColors.black)

  );
  static AppBarTheme darkAppBarTheme = AppBarTheme(
      elevation: 0,
      centerTitle: false,
      scrolledUnderElevation: 0,
      backgroundColor: Colors.transparent,
      surfaceTintColor: Colors.transparent,
      iconTheme: IconThemeData(color: KColors.black,size: KSizes.iconMd,),
      actionsIconTheme: IconThemeData(color: KColors.black,size: KSizes.iconMd,),
      titleTextStyle: TextStyle(fontSize: 18,fontWeight: FontWeight.w600,color: KColors.black));
}
