import 'package:flutter/material.dart';

import '../../../../../common/widgets/products/cart/add_remove_button.dart';
import '../../../../../common/widgets/products/cart/cart_item.dart';
import '../../../../../common/widgets/texts/t_product_price_text.dart';
import '../../../../../utils/constants/sizes.dart';

class TCartItems extends StatelessWidget {
  const TCartItems({
    super.key,
    this.showAddRemoveButtons = true,
  });

  final bool showAddRemoveButtons;
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      itemCount: 3,
      separatorBuilder: (_, __) =>
          const SizedBox(height: TSizes.spaceBtwsections),
      itemBuilder: (_, index) => Column(
        children: [
          ///cart Item
          TCartItem(),

          if (showAddRemoveButtons)
            const SizedBox(
              height: TSizes.spaceBtwItems,
            ),

          ///Add Remove  Buttons Row with total price
          if (showAddRemoveButtons)
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    ///Extra Space
                    SizedBox(
                      width: 70,
                    ),

                    ///Add Remove Buttons
                    TProductQuantityWithAddRemoeButton(),
                  ],
                ),
                TProductPriceText(price: '256')
              ],
            ),
        ],
      ),
    );
  }
}
