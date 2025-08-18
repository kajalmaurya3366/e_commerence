import 'package:e_commerence/common/Widgets/custome_shape/clipper/custom_rounded_clipper.dart';
import 'package:flutter/material.dart';

class KRoundedEdgeContainer extends StatelessWidget {
  const KRoundedEdgeContainer({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: KCustomRoundedEdges(),
      child: child,
    );
  }
}
