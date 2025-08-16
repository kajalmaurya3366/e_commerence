import 'package:e_commerence/utils/constant/colors.dart';
import 'package:e_commerence/utils/constant/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


import '../../../../../utils/helpers/device_helper.dart';
import '../../../controllers/onBoarding/onBoarding_controller.dart';

class OnBoardingSkipBtn extends StatelessWidget {
  const OnBoardingSkipBtn({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = OnBoardingController.instance;
    // print(controller.currentIndex.value);
    return Obx(
      () => controller.currentIndex.value == 2
          ? SizedBox()
          : Positioned(
              top: KDeviceHelper.getAppBarHeight(),
              right: 0,
              child: TextButton(
                onPressed: () {
                  controller.skipPage();
                },
                child: Text(
                  'Skip',
                  style: TextStyle(
                    fontSize: KSizes.fontSizeMd,
                    color: KColors.black,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),

    );
  }
}
