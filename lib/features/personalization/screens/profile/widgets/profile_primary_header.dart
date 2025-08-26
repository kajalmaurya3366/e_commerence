
import 'package:flutter/material.dart';

import '../../../../../common/Widgets/custome_shape/primary_header_container.dart';

import '../../../../../common/Widgets/images/user_profile_logo.dart';

import '../../../../../utils/constant/sizes.dart';

class KProfilePrimaryHeader extends StatelessWidget {
  const KProfilePrimaryHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // --------- Total Height ---------------
        SizedBox(height: KSizes.profilePrimaryHeaderHeight + 60),
        KPrimaryHeaderContainer(
          height: KSizes.profilePrimaryHeaderHeight,
          child: Container(),
        ),

        // ---------- profile logo ---------------
        Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          child: Center(
            child: UserProfileLogo(),
          ),
        ),
      ],
    );
  }
}


