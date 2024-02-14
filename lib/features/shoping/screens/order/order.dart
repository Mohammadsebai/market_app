import 'package:flutter/material.dart';
import 'package:market/features/shoping/screens/order/widgets/order_list.dart';

import '../../../../common/widgets/appbar/appbar.dart';
import '../../../../utils/constants/sizes.dart';

class OrderScreen extends StatelessWidget {
  const OrderScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: TAppBar(
            title: Text('My Orders',
                style: Theme.of(context).textTheme.headlineSmall),
            showBackArrow: true),

        ///AppBar
        body: const Padding(
          padding: EdgeInsets.all(TSizes.defaultSpace),

          /// -- Orders
          child: TorderListItems(),
        ));
  }
}
