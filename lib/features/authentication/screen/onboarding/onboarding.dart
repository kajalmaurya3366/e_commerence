import 'package:e_commerence/features/authentication/controllers/onBoarding/onBoarding_controller.dart';
import 'package:e_commerence/features/authentication/screen/onboarding/widget/onBoarding_Skip.dart';
import 'package:e_commerence/features/authentication/screen/onboarding/widget/on_boarding_dot_navigation.dart';
import 'package:e_commerence/features/authentication/screen/onboarding/widget/on_boarding_nextbtn.dart';
import 'package:e_commerence/features/authentication/screen/onboarding/widget/onboarding_Screen.dart';
import 'package:e_commerence/utils/constant/sizes.dart';
import 'package:e_commerence/utils/constant/texts.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../utils/constant/images.dart';

class OnBoarding extends StatelessWidget {
  const OnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnBoardingController());
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: KSizes.defaultSpace,
          vertical: KSizes.defaultSpace,
        ),
        child: Stack(
          children: [
            // skip
            OnBoardingSkipBtn(),

            // scroll page for boarding
            PageView(
              controller: controller.pageController,
              onPageChanged: controller.updatePageIndicator,
              physics: BouncingScrollPhysics(),
              children: [
                OnBoardingScreen(
                  animation: KImages.onboardingAnimation1,
                  title: KTexts.onBoardingTitle1,
                  subTitle: KTexts.onBoardingSubTitle1,
                ),
                OnBoardingScreen(
                  animation: KImages.onboardingAnimation2,
                  title: KTexts.onBoardingTitle2,
                  subTitle: KTexts.onBoardingSubTitle2,
                ),
                OnBoardingScreen(
                  animation: KImages.onboardingAnimation3,
                  title: KTexts.onBoardingTitle3,
                  subTitle: KTexts.onBoardingSubTitle3,
                ),
              ],
            ),

            // indicator
            OnBoardingDotNavigation(),

            //Next Button
            OnBoardingNextBtn(),
          ],
        ),
      ),
    );
  }
}
