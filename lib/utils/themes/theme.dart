import 'package:e_commerence/utils/constant/colors.dart';
import 'package:e_commerence/utils/themes/widget_themes/TextFormField_theme.dart';
import 'package:e_commerence/utils/themes/widget_themes/appBar_theme.dart';
import 'package:e_commerence/utils/themes/widget_themes/bottomSheet_theme.dart';
import 'package:e_commerence/utils/themes/widget_themes/checkBox_theme.dart';
import 'package:e_commerence/utils/themes/widget_themes/chip_theme.dart';
import 'package:e_commerence/utils/themes/widget_themes/elvatedButton_theme.dart';
import 'package:e_commerence/utils/themes/widget_themes/outlinedButton_theme.dart';
import 'package:e_commerence/utils/themes/widget_themes/text_theme.dart';
import 'package:flutter/material.dart';

class KThemes {
  // private constructor or Singleton
  KThemes._();

  // ================== light theme======================
  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Nunito',
    brightness: Brightness.light,
    primaryColor: KColors.primary,
    disabledColor: KColors.grey,
    textTheme: KTextTheme.lightTextTheme,
    scaffoldBackgroundColor: KColors.white,
    chipTheme: KChipTheme.lightChipTheme,
    appBarTheme: KAppBarTheme.lightAppBarTheme,
    checkboxTheme: KCheckBoxTheme.lightCheckBoxTheme,
    bottomSheetTheme: KBottomSheetTheme.lightBottomSheetTheme,
    elevatedButtonTheme: KElevatedButtonTheme.lightElevatedButtonTheme,
    outlinedButtonTheme: KOutlinedButtonTheme.lightOutlinedButtonTheme,
    inputDecorationTheme:KTextFormFieldTheme.lightInputDecorationTheme,
  );

  // ====================== dark theme========================
  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Nunito',
    brightness: Brightness.dark,
    primaryColor: KColors.primary,
    disabledColor: KColors.grey,
    textTheme: KTextTheme.darkTextTheme,
    scaffoldBackgroundColor: KColors.black,
    chipTheme: KChipTheme.darkChipTheme,
    appBarTheme: KAppBarTheme.darkAppBarTheme,
    checkboxTheme: KCheckBoxTheme.darkCheckBoxTheme,
    bottomSheetTheme: KBottomSheetTheme.darkBottomSheetTheme,
    elevatedButtonTheme: KElevatedButtonTheme.darkElevatedButtonTheme,
    outlinedButtonTheme: KOutlinedButtonTheme.darkOutlinedButtonTheme,
    inputDecorationTheme: KTextFormFieldTheme.darkInputDecorationTheme,
  );
}
