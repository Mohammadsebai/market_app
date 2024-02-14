import 'package:flutter/material.dart';

import '../../../../utils/constants/sizes.dart';
import '../../../../utils/device/device_utility.dart';
import '../../../../utils/helpers/helper_functions.dart';
import '../../../../utils/theme/custom_themes/app_colors.dart';

class TSearchContainer extends StatelessWidget {
  const TSearchContainer({
    super.key,
    required this.text,
    this.icon = Icons.search,
    this.showBackground = true,
    this.showBorder = true, 
    this.onTap, 
    this.padding=const EdgeInsets.symmetric(horizontal: TSizes.defaultSpace),
  });
  final String text;
  final IconData? icon;
  final bool showBackground, showBorder;
  final VoidCallback? onTap;
  final EdgeInsetsGeometry? padding;

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return GestureDetector(
      onTap:onTap ,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: TSizes.defaultSpace),
        child: Container(
          width: TDeviceUtils.getScreenWidth(context),
          padding: const EdgeInsets.all(TSizes.md),
          decoration: BoxDecoration(
              color: showBackground
                  ? dark
                      ? TColors.Dark
                      : TColors.Light
                  : Colors.transparent,
              borderRadius: BorderRadius.circular(TSizes.cardRadiusLg),
              border: showBorder ? Border.all(color: TColors.grey) : null),
          child: Row(
            children: [
              Icon(
                icon,
                color: TColors.darkerGrey,
              ),
              const SizedBox(
                width: TSizes.spaceBtwItems,
              ),
              Text(
                text,
                style: Theme.of(context).textTheme.bodySmall,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
