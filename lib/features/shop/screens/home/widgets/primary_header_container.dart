import 'package:e_commerence/common/Widgets/custome_shape/clipper/rounded_edge_container.dart';
import 'package:e_commerence/utils/constant/sizes.dart';
import 'package:flutter/material.dart';

import '../../../../../common/Widgets/custome_shape/clipper/circular_container.dart';
import '../../../../../utils/constant/colors.dart';

class KPrimaryHeaderContainer extends StatelessWidget {
  const KPrimaryHeaderContainer({
    super.key,
    required this.child,
    required this.height,
  });

  final Widget child;
  final double height;

  @override
  Widget build(BuildContext context) {
    return KRoundedEdgeContainer(
      child: Container(
        height: height,
        color: KColors.primary,
        child: Stack(
          children: [
            // --------- CIRCULAR CONTAINER ------------
            Positioned(
              top: -150,
              right: -160,
              child: KCircularContainer(
                height: KSizes.homePrimaryHeaderHeight,
                width: KSizes.homePrimaryHeaderHeight,
                bgColor: KColors.white.withValues(alpha: 0.2),
              ),
            ),

            // --------- CIRCULAR CONTAINER ------------
            Positioned(
              bottom: -50,
              right: -250,
              child: KCircularContainer(
                height: KSizes.homePrimaryHeaderHeight,
                width: KSizes.homePrimaryHeaderHeight,
                bgColor: KColors.white.withValues(alpha: 0.1),
              ),
            ),

            // ------- Child _----------
            child,
          ],
        ),
      ),
    );
  }
}
