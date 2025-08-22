import 'package:carousel_slider/carousel_slider.dart';
import 'package:e_commerence/features/shop/controllers/home/home_controller.dart';
import 'package:e_commerence/utils/constant/sizes.dart';
import 'package:flutter/material.dart';

import '../../../../../common/Widgets/images/rounded_image.dart';
import 'banner_dot_navigation.dart';

class KPromoSlider extends StatelessWidget {
  const KPromoSlider({super.key, required this.banners});

  final List<String> banners;

  @override
  Widget build(BuildContext context) {
    final controller = HomeController.instance;
    return Column(
      children: [
        CarouselSlider(
          items: banners.map((banner) => KRoundedImage(imageUrl: banner)).toList(),
          options: CarouselOptions(viewportFraction: 1.0,onPageChanged: (index, reason) => controller.onPageChanged(index)),
          carouselController:controller.carouselController ,
        ),
        SizedBox(height: KSizes.defaultSpace/2),
        BannerDotNavigation(),
      ],
    );
  }
}
