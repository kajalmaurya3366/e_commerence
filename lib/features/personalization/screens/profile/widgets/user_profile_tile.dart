import 'package:e_commerence/features/personalization/screens/edit_profile/edit_profile.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class UserProfileTitle extends StatelessWidget {
  const UserProfileTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      title: Text(
        'Unknown Pro',
        style: Theme
            .of(context)
            .textTheme
            .headlineMedium,
      ),
      subtitle: Text(
        'unknownpro@gmail.com',
        style: Theme.of(context).textTheme.bodyMedium,
      ),
      trailing: IconButton(onPressed: () => Get.to(EditProfileScreen()), icon: Icon(Iconsax.edit)),
    );
  }
}