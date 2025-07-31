import 'package:e_commerence/common/style/padding.dart';
import 'package:e_commerence/utils/constant/sizes.dart';
import 'package:e_commerence/utils/constant/texts.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: KPadding.screenPadding,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // =========== header =============
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(KTexts.loginTitle,style: Theme.of(context).textTheme.headlineSmall,),
                SizedBox(height: KSizes.sm,),
                Text(KTexts.loginSubTitle,style: Theme.of(context).textTheme.bodySmall,),

              ],
            ),

            //============ form ==================
            Column(
              children: [
                //------- EMAIL ---------
                // --------- PASSWORD ----------
              ],
            )
            // =============== divider  ===============
            // ========= footer ===================
          ],
        ),
      ),
    );
  }

}