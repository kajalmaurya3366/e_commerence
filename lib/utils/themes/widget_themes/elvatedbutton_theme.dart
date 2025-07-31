import 'package:e_commerence/utils/constant/colors.dart';
import 'package:e_commerence/utils/constant/sizes.dart';
import 'package:flutter/material.dart';

class KElevatedButtonTheme {
  KElevatedButtonTheme._();

  // ======================== light theme =============================
  static ElevatedButtonThemeData lightElevatedButtonTheme =
      ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          elevation: 0,
          foregroundColor: KColors.light,
          backgroundColor: KColors.primary,
          disabledForegroundColor: KColors.darkGrey,
          disabledBackgroundColor: KColors.buttonDisabled,
          side: BorderSide(color: KColors.light),
          padding: EdgeInsets.symmetric(vertical: KSizes.buttonHeight),
          textStyle: TextStyle(
            fontSize: 16,
            color: KColors.white,
            fontWeight: FontWeight.w600,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(KSizes.buttonRadius),
          ),
        ),
      );

  // ================================= dark theme==========================
  static ElevatedButtonThemeData darkElevatedButtonTheme =
      ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          elevation: 0,
          foregroundColor: KColors.light,
          backgroundColor: KColors.primary,
          disabledForegroundColor: KColors.darkGrey,
          disabledBackgroundColor: KColors.buttonDisabled,
          side: BorderSide(color: KColors.light),
          padding: EdgeInsets.symmetric(vertical: KSizes.buttonHeight),
          textStyle: TextStyle(
            fontSize: 16,
            color: KColors.white,
            fontWeight: FontWeight.w600,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(KSizes.buttonRadius),
          ),
        ),
      );
}
