import 'package:flutter/material.dart';

import '../../../../../common/widgets/appbar/appbar.dart';
import '../../../../../common/widgets/products/cart/cart_menu_icon.dart';
import '../../../../../utils/constants/text_strings.dart';
import '../../../../../utils/theme/custom_themes/app_colors.dart';

class THomeAppBar extends StatelessWidget {
  const THomeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TAppBar(
      title: Column(
      children: [
        Text(TTexts.homeShopAppbarTitle, style: Theme.of(context).textTheme.labelMedium!.apply(color: TColors.grey)),
        Text(TTexts.homeShopAppbarSubTitle, style: Theme.of(context).textTheme.headlineSmall!.apply(color: TColors.white)),
      ],
    ),
    actions:  [
      TCartCounterIcon(onPressed: (){}, iconColor: TColors.white,counterBgColor: TColors.black, countrtTextColor:TColors.white,)
    ],
    );
  }
}
