import 'package:e_commerence/utils/constant/colors.dart';
import 'package:flutter/material.dart';

class KChipTheme {
  KChipTheme._();

  //=================== Light Theme ==============
  static ChipThemeData lightChipTheme = ChipThemeData(
    disabledColor: KColors.grey.withValues(alpha: 0.4),
    labelStyle: TextStyle(color: KColors.black),
    selectedColor: KColors.primary,
    padding: EdgeInsets.symmetric(horizontal: 12, vertical: 12),
    checkmarkColor: KColors.white,
  );

  // ======================== dark theme====================
  static ChipThemeData darkChipTheme = ChipThemeData(
    disabledColor: KColors.darkerGrey,
    labelStyle: TextStyle(color: KColors.white),
    selectedColor: KColors.primary,
    padding: EdgeInsets.symmetric(horizontal: 12, vertical: 12),
    checkmarkColor: KColors.white,
  );
}
