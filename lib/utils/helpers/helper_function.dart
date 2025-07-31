
import 'package:flutter/material.dart';

class KHelperFunction{

  KHelperFunction._();

  static bool isDarkMode(BuildContext context){
    return Theme.of(context).brightness == Brightness.dark;
  }
}