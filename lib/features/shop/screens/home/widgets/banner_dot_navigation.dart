import 'package:e_commerence/features/shop/controllers/home/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class BannerDotNavigation extends StatelessWidget {
  const BannerDotNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = HomeController.instance;
    return Obx(
      () => SmoothPageIndicator(
        count: 6,
        effect: ExpandingDotsEffect(dotHeight: 6),
        controller: PageController(initialPage: controller.currentIndex.value),
      ),
    );
  }
}