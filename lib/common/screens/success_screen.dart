import 'package:e_commerence/common/Widgets/Button/elevated_button.dart';
import 'package:e_commerence/common/style/padding.dart';
import 'package:e_commerence/utils/constant/sizes.dart';
import 'package:e_commerence/utils/constant/texts.dart';
import 'package:e_commerence/utils/helpers/device_helper.dart';
import 'package:flutter/material.dart';

class SuccessScreen extends StatelessWidget {
  const SuccessScreen({super.key, required this.image, required this.title, required this.subtitle, required this.onTap});

  final String image, title, subtitle;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(automaticallyImplyLeading: false),
      body: SingleChildScrollView(
        child: Padding(
          padding: KPadding.screenPadding,
          child: Column(
            children: [
              // ------------- IMAGE ----------
              Image.asset(image,height: KDeviceHelper.getScreenWidth(context)*0.6),
              SizedBox(height: KSizes.spaceBtwItems),

              // ------------- TITLE ----------
              Text(title,style: Theme.of(context).textTheme.headlineMedium,textAlign: TextAlign.center),
              SizedBox(height: KSizes.spaceBtwItems),

              // ------------- SUB TITLE ----------
              Text(subtitle,style: Theme.of(context).textTheme.bodySmall , textAlign: TextAlign.center),
              SizedBox(height: KSizes.spaceBtwSections),

              // ------------- CONTINUE ----------
              KElevatedButton(onPressed: onTap, child: Text(KTexts.kContinue))
            ],
          ),
        ),
      ),
    );
  }
}
