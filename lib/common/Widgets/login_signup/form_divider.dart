import 'package:flutter/material.dart';

import '../../../utils/constant/colors.dart';

class KFormDivider extends StatelessWidget {
  const KFormDivider({
    super.key,
    required this.isDark, required this.title,
  });

  final bool isDark;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: Divider(indent: 50,endIndent: 10,color: isDark? KColors.darkGrey: Colors.grey)),
        Text(title,style: Theme.of(context).textTheme.labelMedium),
        Expanded(child: Divider(indent: 10,endIndent: 50,color: isDark? KColors.darkGrey: Colors.grey)),
      ],
    );
  }
}