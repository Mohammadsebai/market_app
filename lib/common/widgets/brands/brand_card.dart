
import 'package:flutter/material.dart';

import '../../../utils/constants/enumes.dart';
import '../../../utils/constants/image_strings.dart';
import '../../../utils/constants/sizes.dart';
import '../../../utils/helpers/helper_functions.dart';
import '../../../utils/theme/custom_themes/app_colors.dart';
import '../images_/t_circular_image.dart';
import '../images_/t_rounded_container.dart';
import '../texts/t_brand_title_with_verified_icon.dart';

class TBrandCard extends StatelessWidget {
  const TBrandCard({
    super.key,
     required this.showBorder,
      this.onTap,
  });

  final bool showBorder;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return GestureDetector(
    onTap: onTap,
    ///container design
    
    child: TRoundedContainer(

        padding: const EdgeInsets.all(TSizes.sm),
        showBorder: showBorder,
        backgroundColor: Colors.transparent,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
          /// -- Icon
          
          Flexible(
            child: TCircularImage(
              isNetworkImage: false,
              image: TImages.raiseHand,
              backgroundColor: Colors.transparent,
              overlayColor:
                 dark
                      ? TColors.white
                      : TColors.black,
            ),
          ),
          const SizedBox(
              height: TSizes.spaceBtwItems / 2),
          
          ///--Text
          
          Expanded(
            child: Column(
              mainAxisSize: MainAxisSize.min,
                crossAxisAlignment:
                    CrossAxisAlignment.start,
                children: [
                  const TBrandTitleWithVerifiedIcon(
                      title: 'Nike',
                      brandTextSize: TextSizes.large),
                  Text(
                    '256 products with asjbsd sj',
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(context)
                        .textTheme
                        .labelMedium,
                  ),
                ]),
          ),
        ])),
                              );
  }
}
