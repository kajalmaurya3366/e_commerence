import 'package:e_commerence/features/shop/screens/home/widgets/primary_header_container.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: KPrimaryHeaderContainer(child: Column(children: [Container()])),
    );
  }
}
