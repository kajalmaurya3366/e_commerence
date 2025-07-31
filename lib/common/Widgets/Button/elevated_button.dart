import 'package:e_commerence/utils/helpers/device_helper.dart';
import 'package:flutter/material.dart';



class KElevatedButton extends StatelessWidget {
  const KElevatedButton({super.key, required this.onPressed, required this.child});

  final VoidCallback onPressed;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: KDeviceHelper.getScreenWidth(context),
        child: ElevatedButton(onPressed: onPressed, child: child),
    );
  }
}
