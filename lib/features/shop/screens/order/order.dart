import 'package:e_commerence/common/Widgets/app_bar/appbar.dart';
import 'package:e_commerence/common/style/padding.dart';
import 'package:e_commerence/features/shop/screens/order/widget/order_list.dart';
import 'package:flutter/material.dart';

class OrderScreen extends StatelessWidget {
  const OrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: KAppBar(
        showBackArrow: true,
        title: Text(
          'My Orders',
          style: Theme.of(context).textTheme.headlineSmall,
        ),
      ),

      body: Padding(
          padding: KPadding.screenPadding,
        child: KOrdersListItem(),
      ),
    );
  }
}
