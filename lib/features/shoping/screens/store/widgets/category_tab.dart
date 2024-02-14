import 'package:flutter/material.dart';
import 'package:market/common/widgets/layouts/grid_layout.dart';

import '../../../../../common/widgets/brands/brand_show_case.dart';
import '../../../../../common/widgets/products/product_cards/product_card_vertical.dart';
import '../../../../../common/widgets/texts/section_heading.dart';
import '../../../../../utils/constants/image_strings.dart';
import '../../../../../utils/constants/sizes.dart';

class TCategoryTab extends StatelessWidget {
  const TCategoryTab({super.key});

  @override
  Widget build(BuildContext context) {
    return   ListView(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      children: [Padding(
                    padding: const EdgeInsets.all(TSizes.defaultSpace),
                    child: Column(children: [
                      //  Brands
                      const TBrandShowcase(images: [TImages.facebook,TImages.google,TImages.logoMe],),
                      const TBrandShowcase(images: [TImages.facebook,TImages.google,TImages.logoMe],),
                       const SizedBox(height: TSizes.spaceBtwItems),
      
      
                      //Products--
                      TSectionHeading(title: 'You might like',onPressed:(){} ,),
                      const SizedBox(height: TSizes.spaceBtwItems),
      
                      TGridLayout(itemCount: 4, itemBuilder: (_,index) => const TProductCardVertical()),
                      const SizedBox(height: TSizes.spaceBtwItems),
      
                    ]),
                  ),]
    );
  }
}