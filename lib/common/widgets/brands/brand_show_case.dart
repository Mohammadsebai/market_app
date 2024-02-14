import 'package:flutter/material.dart';
import 'package:market/common/widgets/brands/brand_card.dart';
import 'package:market/common/widgets/images_/t_rounded_container.dart';

import '../../../utils/constants/sizes.dart';
import '../../../utils/helpers/helper_functions.dart';
import '../../../utils/theme/custom_themes/app_colors.dart';

class TBrandShowcase extends StatelessWidget {
  const TBrandShowcase({
    super.key,
    required this.images,
  });

  final List<String> images;

  @override
  Widget build(BuildContext context) {
    return TRoundedContainer(
      showBorder: true,
      borderColor: TColors.darkGrey,
      backgroundColor: Colors.transparent,
      margin: const EdgeInsets.only(bottom: TSizes.spaceBtwItems),
      child: Column(children: [
        /// Brand with Products Count
        const TBrandCard(showBorder: false),
        const SizedBox(height: TSizes.spaceBtwItems,),

        /// Brand Top 3 Product Images
        Row(
            children: images
                .map((image) => brandTopProductImageWidget(image, context))
                .toList()),
      ]), // Column
    );
  }
}

Widget brandTopProductImageWidget(String image, context) {
  return Expanded(
    child: TRoundedContainer(
      height: 100,
      padding: const EdgeInsets.all(TSizes.md),
      margin: const EdgeInsets.only(right: TSizes.sm),
      backgroundColor: THelperFunctions.isDarkMode(context)
          ? TColors.darkerGrey
          : TColors.Light,
      child:
           Image(fit: BoxFit.contain, image: AssetImage(image)),
    ),
  );
}
