import 'package:e_commerence/features/authentication/controllers/onBoarding/onBoarding_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../common/Widgets/Button/elevated_button.dart';
import '../../../../../utils/constant/sizes.dart';

class OnBoardingNextBtn extends StatelessWidget {
  const OnBoardingNextBtn({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = OnBoardingController.instance;
    return Positioned(
      right: 0,
      left: 0,
      bottom: KSizes.spaceBtwItems ,
      child: KElevatedButton(onPressed: () {
        print("nextt");
        controller.nextPage();
      }, child: Obx(() => Text(controller.currentIndex.value==2 ? 'Get Started':"Next"))),
    );
  }
}