import 'package:e_commerence/common/style/padding.dart';
import 'package:e_commerence/features/authentication/screen/login/widgets/login_form.dart';
import 'package:e_commerence/features/authentication/screen/login/widgets/login_header.dart';
import 'package:e_commerence/utils/constant/sizes.dart';
import 'package:e_commerence/utils/constant/texts.dart';
import 'package:e_commerence/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';
import '../../../../common/Widgets/Button/social_buttons.dart';
import '../../../../common/Widgets/login_signup/form_divider.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final isDark = KHelperFunction.isDarkMode(context);
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: KPadding.screenPadding,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // =========== header =============
              KloginHeader(),
              SizedBox(height: KSizes.spaceBtwSections),
        
              //============ form ==================
              KLoginForm(),
              SizedBox(height: KSizes.spaceBtwSections),
        
              // =============== divider  ===============
              KFormDivider(isDark: isDark,title: KTexts.orSignInWith),
              SizedBox(height: KSizes.spaceBtwSections),
        
              // ========= footer ===================
              KSocialButtons(),
            ],
          ),
        ),
      ),
    );
  }
}








