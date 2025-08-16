import 'package:e_commerence/common/screens/success_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../common/Widgets/Button/elevated_button.dart';
import '../../../../common/style/padding.dart';
import '../../../../utils/constant/images.dart';
import '../../../../utils/constant/sizes.dart';
import '../../../../utils/constant/texts.dart';
import '../../../../utils/helpers/device_helper.dart';

class VerifyEmailScreen extends StatelessWidget {
  const VerifyEmailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: KPadding.screenPadding,
          child: Column(
            children: [
              // --------- IMAGE --------
              Image.asset(
                KImages.mailSentImage,
                height: KDeviceHelper.getScreenWidth(context) * 0.6,
              ),
              SizedBox(height: KSizes.spaceBtwItems),
              // ----- TITLE -----
              Text(
                KTexts.verifyEmailTitle,
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              SizedBox(height: KSizes.spaceBtwItems),
              // ----- EMAIL -----
              Text(
                'kajal@gmail.com',
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              SizedBox(height: KSizes.spaceBtwItems),
              // ----- SUB TITLE -----
              Text(
                KTexts.verifyEmailSubTitle,
                style: Theme.of(context).textTheme.bodySmall,
                textAlign: TextAlign.center,
              ),
              SizedBox(height: KSizes.spaceBtwSections),

              // ------------ BTN --------
              KElevatedButton(
                onPressed: () => Get.to(SuccessScreen(
                  image: KImages.successfulImage,
                  title: KTexts.createAccountTitle,
                  subtitle: KTexts.createAccountSubTitle,
                  onTap: (){},
                )),
                child: Text(KTexts.kContinue),
              ),

              // -------- Resent Email ----------
              SizedBox(height: KSizes.spaceBtwItems / 2),
              SizedBox(
                width: KDeviceHelper.getScreenWidth(context),
                child: TextButton(
                  onPressed: () {},
                  child: Text(KTexts.resendEmail),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
