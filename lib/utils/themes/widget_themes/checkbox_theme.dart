import 'package:e_commerence/utils/constant/colors.dart';
import 'package:e_commerence/utils/constant/sizes.dart';
import 'package:flutter/material.dart';

class KCheckBoxTheme {
  KCheckBoxTheme._();

  // =========================== light theme========================
  static CheckboxThemeData lightCheckBoxTheme = CheckboxThemeData(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(KSizes.xs)),
      checkColor: WidgetStateProperty.resolveWith((states){
      if(states.contains(WidgetState.selected)){return KColors.white;}
      else {
        return KColors.black;
      }
      }),
      fillColor:WidgetStateProperty.resolveWith((states){
        if(states.contains(WidgetState.selected)){
          return KColors.primary;
        }else{
          return Colors.transparent;
        }
      }),

  );

  // ====================== dark theme==============================
  static CheckboxThemeData darkCheckBoxTheme = CheckboxThemeData(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(KSizes.xs)),
    checkColor: WidgetStateProperty.resolveWith((states){
      if(states.contains(WidgetState.selected)){
        return KColors.white;
      }
      else {
        return KColors.black;
      }
    }),
    fillColor:WidgetStateProperty.resolveWith((states){
      if(states.contains(WidgetState.selected)){
        return KColors.primary;
      }else{
        return Colors.transparent;
      }
    }),
  );
}