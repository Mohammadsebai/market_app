
import 'package:flutter/material.dart';

import '../../../../../common/widgets/appbar/appbar.dart';
import '../../../../../common/widgets/custom_shapes/curved_edges/curved_edges_widget.dart';
import '../../../../../common/widgets/icons_/t_circular_icon.dart';
import '../../../../../common/widgets/images_/t_rounded_image.dart';
import '../../../../../utils/constants/image_strings.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/helpers/helper_functions.dart';
import '../../../../../utils/theme/custom_themes/app_colors.dart';

class TProductImageSlider extends StatelessWidget {
  const TProductImageSlider({
    super.key,
  });


  @override
  Widget build(BuildContext context) {

        final dark = THelperFunctions.isDarkMode(context);

    return TCurvedEdgeWidget(
        child: Container(
            color: dark ? TColors.darkerGrey : TColors.Light,
            child: Stack(
              children: [
                /// Main Large Image
                const SizedBox(
                  height: 400,
                  child: Padding(
                    padding: EdgeInsets.all(TSizes.productImageRadius * 2),
                    child: Center(
                        child:
                            Image(image: AssetImage(TImages.promoBanner1))),
                  ),
                ),
    
                /// Image Slider
                Positioned(
                  right: 0,
                  bottom: 30,
                  left: TSizes.defaultSpace,
                  child: SizedBox(
                    height: 80,
                    child: ListView.separated(
                      itemCount: 6,
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      physics: const AlwaysScrollableScrollPhysics(),
                      separatorBuilder: (_, __) =>
                          const SizedBox(width: TSizes.spaceBtwItems),
                      itemBuilder: (_, index) => TRoundedImage(
                        width: 80,
                        backgroundColor: dark ? TColors.Dark : TColors.white,
                        border: Border.all(color: TColors.PrimaryColor),
                        padding: const EdgeInsets.all(TSizes.sm),
                        imageUrl: TImages.promoBanner1,
                      ),
                    ),
                  ),
                ),
    
                /// Appbar Icons
                const TAppBar(
                  showBackArrow: true,
                  actions: [
                    TCircularIcon(icon: Icons.favorite, color: Colors.red)
                  ],
                ),
              ],
            )));
  }
}
