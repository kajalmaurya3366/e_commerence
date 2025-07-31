import 'package:e_commerence/utils/constant/colors.dart';
import 'package:e_commerence/utils/constant/sizes.dart';
import 'package:flutter/material.dart';

class KOutlinedButtonTheme {
  KOutlinedButtonTheme._();

  //======================= Light Theme ======================
  static OutlinedButtonThemeData lightOutlinedButtonTheme =
      OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          elevation: 0,
          foregroundColor: KColors.dark,
          side: const BorderSide(color: KColors.borderPrimary),
          textStyle: const TextStyle(
            fontSize: 16,
            color: KColors.black,
            fontWeight: FontWeight.w600,
          ),
          padding: const EdgeInsets.symmetric(
            vertical: KSizes.buttonHeight,
            horizontal: 20,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(KSizes.buttonRadius),
          ),
        ),
      );

  // ========================== dark theme ==========================
  static OutlinedButtonThemeData darkOutlinedButtonTheme =
      OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          elevation: 0,
          foregroundColor: KColors.light,
          side: const BorderSide(color: KColors.borderPrimary),
          textStyle: const TextStyle(
            fontSize: 16,
            color: KColors.textWhite,
            fontWeight: FontWeight.w600,
          ),
          padding: const EdgeInsets.symmetric(
            vertical: KSizes.buttonHeight,
            horizontal: 20,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(KSizes.buttonRadius),
          ),
        ),
      );
}
