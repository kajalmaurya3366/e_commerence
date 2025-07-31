import 'package:e_commerence/utils/constant/colors.dart';
import 'package:flutter/material.dart';

class KTextTheme{

  // Private Constructor
  KTextTheme._();

  static TextTheme lightTextTheme=TextTheme(
    headlineLarge: TextStyle(fontSize: 32.0,fontWeight: FontWeight.bold,color: KColors.dark),
    headlineMedium: TextStyle(fontSize: 24,fontWeight: FontWeight.w600,color:KColors.dark,),
    headlineSmall: TextStyle(fontSize: 18,fontWeight: FontWeight.w600,color:KColors.dark,),

    titleLarge:TextStyle(fontSize: 16.0,fontWeight: FontWeight.w600,color: KColors.dark) ,
    titleMedium: TextStyle(fontSize: 16.0,fontWeight: FontWeight.w500,color: KColors.dark),
    titleSmall:TextStyle(fontSize: 16.0,fontWeight: FontWeight.w400,color: KColors.dark) ,

    bodyLarge: TextStyle(fontSize:14.0,fontWeight: FontWeight.w500,color: KColors.dark),
    bodyMedium:TextStyle(fontSize: 14.0,fontWeight: FontWeight.normal,color: KColors.dark) ,
    bodySmall: TextStyle(fontSize: 14.0,fontWeight: FontWeight.w500,color: KColors.dark),

    labelLarge:TextStyle(fontSize: 12.0,fontWeight: FontWeight.normal,color: KColors.dark) ,
    labelMedium: TextStyle(fontSize: 12.0,fontWeight: FontWeight.normal,color: KColors.dark),

  );
  static TextTheme darkTextTheme=TextTheme(
    headlineLarge: TextStyle(fontSize: 32.0,fontWeight: FontWeight.bold,color: KColors.light),
    headlineMedium: TextStyle(fontSize: 24,fontWeight: FontWeight.w600,color:KColors.light,),
    headlineSmall: TextStyle(fontSize: 18,fontWeight: FontWeight.w600,color:KColors.light,),

    titleLarge:TextStyle(fontSize: 16.0,fontWeight: FontWeight.w600,color: KColors.light) ,
    titleMedium: TextStyle(fontSize: 16.0,fontWeight: FontWeight.w500,color: KColors.light),
    titleSmall:TextStyle(fontSize: 16.0,fontWeight: FontWeight.w400,color: KColors.light) ,

    bodyLarge: TextStyle(fontSize:14.0,fontWeight: FontWeight.w500,color: KColors.light),
    bodyMedium:TextStyle(fontSize: 14.0,fontWeight: FontWeight.normal,color: KColors.light) ,
    bodySmall: TextStyle(fontSize: 14.0,fontWeight: FontWeight.w500,color: KColors.light),

    labelLarge:TextStyle(fontSize: 12.0,fontWeight: FontWeight.normal,color: KColors.light) ,
    labelMedium: TextStyle(fontSize: 12.0,fontWeight: FontWeight.normal,color: KColors.light),

  );

}