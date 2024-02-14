import 'package:flutter/material.dart';
import 'package:market/common/widgets/images_/t_rounded_image.dart';
import '../../../../utils/constants/image_strings.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/helpers/helper_functions.dart';
import '../../../../utils/theme/custom_themes/app_colors.dart';
import '../../texts/product_title_text.dart';
import '../../texts/t_brand_title_with_verified_icon.dart';

class TCartItem extends StatelessWidget {
  const TCartItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      /// Image
      TRoundedImage(
        imageUrl: TImages.google,
        width: 68,
        height: 68,
        padding: const EdgeInsets.all(TSizes.sm),
        backgroundColor: THelperFunctions.isDarkMode(context)
            ? TColors.darkerGrey
            : TColors.Light,
      ),

      const SizedBox(width: TSizes.spaceBtwItems),

      /// Title, Price, & Size
      Expanded(
          child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
            const TBrandTitleWithVerifiedIcon(title: 'Nike'),
            const Flexible(
                child: TProductTitleText(
                    title: 'Black Sports shoes', maxLines: 1)),

            /// Attributes
            Text.rich(TextSpan(children: [
              TextSpan(
                  text: 'Color ', style: Theme.of(context).textTheme.bodySmall),
              TextSpan(
                  text: 'Green ', style: Theme.of(context).textTheme.bodyLarge),
              TextSpan(
                  text: 'Size ', style: Theme.of(context).textTheme.bodySmall),
              TextSpan(
                  text: 'UK 08 ', style: Theme.of(context).textTheme.bodyLarge),
            ]))
          ]))
    ]);
  }
}
