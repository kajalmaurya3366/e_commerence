import 'package:e_commerence/common/Widgets/custome_shape/circular_container.dart';
import 'package:e_commerence/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';

import '../../../utils/constant/colors.dart';

class KChoiceChip extends StatelessWidget {
  const KChoiceChip({
    super.key,
    required this.text,
    required this.selected,
    required this.onSelected,
  });

  final String text;
  final bool selected;
  final Function(bool?) onSelected;

  @override
  Widget build(BuildContext context) {
    bool isColor=KHelperFunction.getColor(text)!=null;
    return ChoiceChip(
      label: isColor?SizedBox():Text(text),
      selected: selected,
      onSelected: onSelected,
      labelStyle: TextStyle(color:selected? KColors.white:null),
      shape: isColor? CircleBorder():null,
      padding: isColor?EdgeInsets.zero:null,
      labelPadding: isColor?EdgeInsets.zero:null,
      avatar: isColor?KCircularContainer(height: 50,width: 50,bgColor: KHelperFunction.getColor(text)!):null,
      backgroundColor: isColor?KHelperFunction.getColor(text):null,
    );
  }
}
