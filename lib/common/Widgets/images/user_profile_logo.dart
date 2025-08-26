import 'package:flutter/material.dart';

import '../../../utils/constant/images.dart';
import 'circular_image.dart';

class UserProfileLogo extends StatelessWidget {
  const UserProfileLogo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return KCircularImage(
      image: KImages.profileLogo,
      height: 120,
      width: 120,
      borderWidth: 5,
    );
  }
}