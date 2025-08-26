import 'package:flutter/material.dart';

import '../../../../../common/Widgets/app_bar/appbar.dart';
import '../../../../../common/Widgets/products/cart/cart_counter_icon.dart';
import '../../../../../common/Widgets/textfields/search_bar.dart';
import '../../../../../utils/constant/colors.dart';
import '../../../../../utils/constant/sizes.dart';
import '../../../../../common/Widgets/custome_shape/primary_header_container.dart';

class KStorePrimaryHeader extends StatelessWidget {
  const KStorePrimaryHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(height: KSizes.storePrimaryHeaderHeight + 10),

        // --------- Primary Header ----------------
        KPrimaryHeaderContainer(
          height: KSizes.storePrimaryHeaderHeight,
          child: KAppBar(
            title: Text(
              'Store',
              style: Theme.of(
                context,
              ).textTheme.headlineMedium!.apply(color: KColors.white),
            ),
            actions: [KCartCounterIcon()],
          ),
        ),
        // ---------------- Search Bar ---------------
        KSearchBar(),
      ],
    );
  }
}
