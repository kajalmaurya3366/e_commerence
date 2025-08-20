import 'package:flutter/material.dart';

import '../../../../../common/Widgets/app_bar/appbar.dart';
import '../../../../../common/Widgets/products/cart/cart_counter_icon.dart';
import '../../../../../utils/constant/colors.dart';
import '../../../../../utils/constant/texts.dart';

class KHomeAppBar extends StatelessWidget {
  const KHomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return KAppBar(
      // ----------------- TITLE -------------------------
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // ------------ TITLE -----------
          Text(
            KTexts.goodMoring,
            style: Theme.of(
              context,
            ).textTheme.labelMedium?.apply(color: KColors.grey),
          ),
          // ------------- SUB TITLE --------------
          Text(
            KTexts.unknownPro,
            style: Theme.of(
              context,
            ).textTheme.headlineSmall?.apply(color: KColors.white),
          ),
        ],
      ),

      // -------------------- ACTIONS --------------------
      actions: [KCartCounterIcon()],
    );
  }
}
