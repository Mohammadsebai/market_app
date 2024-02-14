import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:market/features/shoping/screens/home/home_shop.dart';
import '../../../../common/widgets/appbar/appbar.dart';
import '../../../../common/widgets/icons_/t_circular_icon.dart';
import '../../../../common/widgets/layouts/grid_layout.dart';
import '../../../../common/widgets/products/product_cards/product_card_vertical.dart';
import '../../../../utils/constants/sizes.dart';

class FavouriteScreen extends StatelessWidget {
  const FavouriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: TAppBar(
            title: Text('Wishlist',
                style: Theme.of(context).textTheme.headlineMedium),
            actions: [
              TCircularIcon(
                  icon: Icons.add,
                  onPressed: () => Get.to(const HomeShopScreen())),
            ]),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(TSizes.defaultSpace),
            child: Column(
              children: [
                TGridLayout(
                    itemCount: 6,
                    itemBuilder: (_, index) => const TProductCardVertical())
              ],
            ),
          ),
        ));
  }
}
