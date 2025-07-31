import 'package:e_commerence/utils/constant/colors.dart';
import 'package:flutter/material.dart';

class KBottomSheetTheme {
  KBottomSheetTheme._(); // private constructor

  // ========================== light theme======================================
  static BottomSheetThemeData lightBottomSheetTheme = BottomSheetThemeData(
    showDragHandle: true,
    backgroundColor: KColors.white,
    modalBackgroundColor: KColors.white,
    constraints: BoxConstraints(minWidth: double.infinity),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
  );

  // ============================== dark theme==================================
  static BottomSheetThemeData darkBottomSheetTheme = BottomSheetThemeData(
    showDragHandle: true,
    backgroundColor: KColors.black,
    modalBackgroundColor: KColors.black,
    constraints: BoxConstraints(minWidth: double.infinity),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
  );
}
