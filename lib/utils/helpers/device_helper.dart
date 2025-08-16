import 'package:e_commerence/utils/constant/sizes.dart';
import 'package:flutter/cupertino.dart';

class KDeviceHelper {
  KDeviceHelper._();

  static double getAppBarHeight() {
    return KSizes.appBarHeight;
  }

  static double getBottomNavigationBarHeight() {
    return 50.0;
  }
  static double getScreenWidth(BuildContext context) {
    return MediaQuery.of(context).size.width;
  }

  static double getScreenHeight(BuildContext context) {
    return MediaQuery.of(context).size.height;
  }


}
