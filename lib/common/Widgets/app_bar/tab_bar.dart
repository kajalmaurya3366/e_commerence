import 'package:flutter/material.dart';

import '../../../utils/constant/colors.dart';
import '../../../utils/helpers/device_helper.dart';
import '../../../utils/helpers/helper_function.dart';

class KTabBar extends StatelessWidget implements PreferredSizeWidget {
  const KTabBar({super.key, required this.tabs});

  final List<Widget> tabs;

  @override
  Widget build(BuildContext context) {
    final dark = KHelperFunction.isDarkMode(context);
    return Material(
      color: dark ? KColors.dark : KColors.white,
      child: TabBar(
        isScrollable: true,
        labelColor: dark ? KColors.white : KColors.primary,
        unselectedLabelColor: KColors.darkGrey,
        indicatorColor: KColors.primary,
        tabs: tabs,
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(KDeviceHelper.getAppBarHeight());
}
