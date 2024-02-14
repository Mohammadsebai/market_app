import 'package:flutter/material.dart';
import 'package:market/common/widgets/texts/product_title_text.dart';
import 'package:market/common/widgets/texts/t_brand_title_with_verified_icon.dart';
import 'package:market/common/widgets/texts/t_product_price_text.dart';

import '../../../../utils/constants/image_strings.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/helpers/helper_functions.dart';
import '../../../../utils/theme/custom_themes/app_colors.dart';
import '../../images_/t_rounded_container.dart';
import '../../images_/t_rounded_image.dart';

class TProductCardHorizontal extends StatelessWidget {
  const TProductCardHorizontal({super.key});

  @override
  Widget build(BuildContext context) {
final dark = THelperFunctions.isDarkMode(context);
return Container(
width: 310,
padding: const EdgeInsets.all(1),
decoration: BoxDecoration(
borderRadius: BorderRadius.circular(TSizes.productImageRadius),
color: dark ? TColors.darkerGrey: TColors.softGrey,
),

child: Row(
children: [
/// Thumbnail
TRoundedContainer(
height: 120,
padding: const EdgeInsets.all(TSizes.sm),
backgroundColor: dark? TColors.Dark: TColors.Light,
child: const Stack(
children: [
/// -- Thumbnail Image
SizedBox (
height: 120,
width: 120,
child: TRoundedImage(imageUrl: TImages.facebook, applyImageRadius: true),
 ),
]
)
),

///Details
 SizedBox(
width: 172,
child: Padding (
padding: const EdgeInsets.only(top: TSizes.sm, left: TSizes.sm),
child: Column (
children: [
const Column(
crossAxisAlignment: CrossAxisAlignment.start,
children: [
TProductTitleText(title: 'Green Nike Half Sleeves Shirt', smallSize: true),
SizedBox(height: TSizes.spaceBtwItems / 2),
TBrandTitleWithVerifiedIcon(title: 'Nike'),
],
),

const Spacer(),

Row(
mainAxisAlignment: MainAxisAlignment.spaceBetween,
children: [
/// Pricing
const Flexible(child: TProductPriceText(price: '256.0')),

/// Add to cart
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
child: Center(child: Icon(Icons.add, color: TColors.white)),
),
),
],
),
]
)
)
 )
]
)
);

  }
}