import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:market/common/widgets/icons_/t_circular_icon.dart';
import 'package:market/common/widgets/images_/t_rounded_image.dart';
import '../../../../features/shoping/screens/product_details/product_detail.dart';
import '../../../../utils/constants/image_strings.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/helpers/helper_functions.dart';
import '../../../../utils/theme/custom_themes/app_colors.dart';
import '../../../styles/shadows_style.dart';
import '../../images_/t_rounded_container.dart';
import '../../texts/product_title_text.dart';
import '../../texts/t_brand_title_with_verified_icon.dart';
import '../../texts/t_product_price_text.dart';

class TProductCardVertical extends StatelessWidget {
  const TProductCardVertical({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);

    /// Container with side paddings, color, edges, radius and shadow.

    return GestureDetector(
      onTap: ()  => Get.to(() => const ProductDetailScreen()),
      child: Container(
        width: 180,
        padding: const EdgeInsets.all(1),
        decoration: BoxDecoration(
          boxShadow: [TShadowStyle.verticalProductShadow],
          borderRadius: BorderRadius.circular(TSizes.productImageRadius),
          color: dark ? TColors.darkerGrey : TColors.white,
        ),
        child: Column(children: [
          /// Thumbnail, Wishlist Button, Discount Tag
          TRoundedContainer(
            height: 180,
            padding: const EdgeInsets.all(TSizes.sm),
            backgroundColor: dark ? TColors.Dark : TColors.Light,
            child: Stack(children: [
              ///-- Thumbnail Image

              const TRoundedImage(
                  imageUrl: TImages.handshake, applyImageRadius: true),

              ///Sale Tag
              Positioned(
                top: 12,
                child: TRoundedContainer(
                  radius: TSizes.sm,
                  backgroundColor: TColors.SecondaryColor.withOpacity(0.8),
                  padding: const EdgeInsets.symmetric(
                      horizontal: TSizes.sm, vertical: TSizes.xs),
                  child: Text('25%',
                      style: Theme.of(context)
                          .textTheme
                          .labelLarge!
                          .apply(color: TColors.black)),
                ),
              ),

              //- Favourite Icon Button
              const Positioned(
                  top: 0,
                  right: 0,
                  child: TCircularIcon(
                    icon: Icons.favorite,
                    color: Colors.red,
                  ))
            ]),
          ),

          const SizedBox(height: TSizes.spaceBtwItems / 2),

          //Details
          const Padding(
            padding: EdgeInsets.only(left: TSizes.sm),
            child:
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                 children: [
              TProductTitleText( title: 'Green Nike Air Shoes', smallSize: true),
              SizedBox(height: TSizes.spaceBtwItems / 2),
              TBrandTitleWithVerifiedIcon(title: 'Nike',),
            ]),
          ),

          //todo :ass spacer()
             const Spacer(),
             ///Price Row 
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  /// Price

                  const Padding(
                    padding: EdgeInsets.only(left: TSizes.sm),
                    child: TProductPriceText(price: '35.0',),
                  ),

                  //Add to cart Button

                  Container(
                    decoration: const BoxDecoration(
                      color: TColors.Dark,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(TSizes.cardRadiusMd),
                        bottomRight: Radius.circular(TSizes.productImageRadius),
                      ),
                    ),
                    child: const SizedBox(
                      width: TSizes.iconLg * 1.2,
                      height: TSizes.iconLg * 1.2,
                      child:
                          Center(child: Icon(Icons.add, color: TColors.white)),
                    ),
                  ),
                ],
              )
        ]),
      ),
    );
  }
}

