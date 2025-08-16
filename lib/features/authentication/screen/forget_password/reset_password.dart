import 'package:e_commerence/common/Widgets/Button/elevated_button.dart';
import 'package:e_commerence/common/style/padding.dart';
import 'package:e_commerence/features/authentication/screen/login/login.dart';
import 'package:e_commerence/utils/constant/images.dart';
import 'package:e_commerence/utils/constant/sizes.dart';
import 'package:e_commerence/utils/constant/texts.dart';
import 'package:e_commerence/utils/helpers/device_helper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ResetPasswordScreen extends StatelessWidget {
  const ResetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            onPressed: () => Get.offAll(LoginScreen()),
            icon: Icon(CupertinoIcons.clear),
          ),
        ],
      ),
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
                KTexts.passwordResentEmailSentTitle,
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
                KTexts.passwordResentEmailSentSubTitle,
                style: Theme.of(context).textTheme.bodySmall,
                textAlign: TextAlign.center,
              ),
              SizedBox(height: KSizes.spaceBtwSections),

              // ------------ BTN --------
              KElevatedButton(onPressed: () {}, child: Text(KTexts.done)),

              // -------- Resent Email ----------
              SizedBox(height: KSizes.spaceBtwItems/2),
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
