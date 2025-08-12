import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../../screen/login/login.dart';

class OnBoardingController extends GetxController {
  static OnBoardingController get instance => Get.find();

  final pageController = PageController();
  RxInt currentIndex = 0.obs;

  void updatePageIndicator(index) {
    currentIndex.value = index;
  }

  // for skip jump to the last page

  void dotNavigationClick(index) {
    currentIndex.value = index;
    pageController.jumpToPage(index);
  }

  void nextPage() {
    if (currentIndex.value == 2) {
      Get.offAll(() => LoginScreen());

      return;
    } else {
      currentIndex.value++;
      pageController.jumpToPage(currentIndex.value);
    }
  }

  void skipPage() {
    currentIndex.value = 2;
    pageController.jumpToPage(currentIndex.value);
  }
}
