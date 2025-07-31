
import 'package:e_commerence/utils/constant/colors.dart';
import 'package:e_commerence/utils/constant/sizes.dart';
import 'package:flutter/material.dart';



class KTextFormFieldTheme{
  KTextFormFieldTheme._();

  static InputDecorationTheme lightInputDecorationTheme = InputDecorationTheme(
    errorMaxLines: 3,
    prefixIconColor: KColors.darkGrey,
    suffixIconColor: KColors.darkGrey,
    labelStyle:  TextStyle().copyWith(fontSize: KSizes.fontSizeMd, color: KColors.black),
    hintStyle:  TextStyle().copyWith(fontSize: KSizes.fontSizeSm, color: KColors.black),
    errorStyle:  TextStyle().copyWith(fontStyle: FontStyle.normal),
    floatingLabelStyle:  TextStyle().copyWith(color: KColors.black.withValues(alpha: 0.8)),
    border:  OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(KSizes.inputFieldRadius),
      borderSide:  BorderSide(width: 1, color: KColors.grey),
    ),
    enabledBorder:  OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(KSizes.inputFieldRadius),
      borderSide:  BorderSide(width: 1, color: KColors.grey),
    ),
    focusedBorder: OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(KSizes.inputFieldRadius),
      borderSide:  BorderSide(width: 1, color: KColors.dark),
    ),
    errorBorder:  OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(KSizes.inputFieldRadius),
      borderSide:  BorderSide(width: 1, color: KColors.warning),
    ),
    focusedErrorBorder:  OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(KSizes.inputFieldRadius),
      borderSide:  BorderSide(width: 2, color: KColors.warning),
    ),
  );
  static InputDecorationTheme darkInputDecorationTheme = InputDecorationTheme(
    errorMaxLines: 2,
    prefixIconColor: KColors.darkGrey,
    suffixIconColor: KColors.darkGrey,
    labelStyle:  TextStyle().copyWith(fontSize: KSizes.fontSizeMd, color: KColors.white),
    hintStyle:  TextStyle().copyWith(fontSize: KSizes.fontSizeSm, color: KColors.white),
    floatingLabelStyle:  TextStyle().copyWith(color: KColors.white.withValues(alpha: 0.8)),
    border:  OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(KSizes.inputFieldRadius),
      borderSide:  BorderSide(width: 1, color: KColors.darkGrey),
    ),
    enabledBorder:  OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(KSizes.inputFieldRadius),
      borderSide:  BorderSide(width: 1, color: KColors.darkGrey),
    ),
    focusedBorder:  OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(KSizes.inputFieldRadius),
      borderSide:  BorderSide(width: 1, color: KColors.white),
    ),
    errorBorder:  OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(KSizes.inputFieldRadius),
      borderSide:  BorderSide(width: 1, color: KColors.warning),
    ),
    focusedErrorBorder:  OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(KSizes.inputFieldRadius),
      borderSide:  BorderSide(width: 2, color: KColors.warning),
    ),
  );
}