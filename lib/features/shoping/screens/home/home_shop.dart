import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:market/features/shoping/screens/brand/all_brands.dart';
import 'package:market/features/shoping/screens/home/widgets/home_appbar.dart';
import 'package:market/features/shoping/screens/home/widgets/home_categories.dart';
import '../../../../common/widgets/custom_shapes/containers/primary_header_container.dart';
import '../../../../common/widgets/custom_shapes/containers/search_container.dart';
import '../../../../common/widgets/layouts/grid_layout.dart';
import '../../../../common/widgets/products/product_cards/product_card_vertical.dart';
import '../../../../common/widgets/texts/section_heading.dart';
import '../../../../utils/constants/image_strings.dart';
import '../../../../utils/constants/sizes.dart';
import '../all_products/all_products.dart';
import 'widgets/promo_slider.dart';

class HomeShopScreen extends StatelessWidget {
  const HomeShopScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: Column(children: [
        ///Header
        TPrimaryHeaderContainer(
          child: Column(
            children: [
              //--Appbar
              const THomeAppBar(),
              const SizedBox(
                height: TSizes.spaceBtwsections,
              ),

              //--searchbar
              const TSearchContainer(
                text: 'search in store',
              ),
              const SizedBox(
                height: TSizes.spaceBtwsections,
              ),

              //--categories
              Padding(
                padding: const EdgeInsets.only(left: TSizes.defaultSpace),
                child: Column(
                  children: [
                    ///Heading
                    TSectionHeading(
                      title: 'Popular Categories',
                      onPressed: () => Get.to(() => const AllBrandsScreen()),
                    ),
                    const SizedBox(
                      height: TSizes.spaceBtwItems,
                    ),

                    ///Categories
                    THomeCategories()
                  ],
                ),
              ),

              const SizedBox(
                height: TSizes.spaceBtwsections,
              ),
            ],
          ),
        ),

        ///--Body--
        ///
        Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              const TPromoSlider(
                banners: [
                  //--promo slider
                  TImages.promoBanner1,
                  TImages.promoBanner1,
                  TImages.promoBanner1
                ],
              ),

              const SizedBox(
                height: TSizes.spaceBtwsections,
              ),

              //--Heading
              TSectionHeading(
                  title: 'Popular Products',
                  onPressed: () => Get.to(() => const AllProducts())),
              const SizedBox(
                height: TSizes.spaceBtwsections,
              ),

              //Popular Products
              TGridLayout(
                  itemCount: 2,
                  itemBuilder: (_, index) => const TProductCardVertical())
            ],
          ),
        )
      ])),
    );
  }
}
