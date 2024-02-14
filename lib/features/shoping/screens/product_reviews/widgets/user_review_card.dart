import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';

import '../../../../../common/widgets/images_/t_rounded_container.dart';
import '../../../../../common/widgets/products/ratings/rating_indicator.dart';
import '../../../../../utils/constants/image_strings.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/helpers/helper_functions.dart';
import '../../../../../utils/theme/custom_themes/app_colors.dart';

class UserReviewCard extends StatelessWidget {
  const UserReviewCard({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Column(
      children: [
        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Row(
            children: [
              const CircleAvatar(backgroundImage: AssetImage(TImages.google)),
              const SizedBox(width: TSizes.spaceBtwItems),
              Text('John Doe', style: Theme.of(context).textTheme.titleLarge),
            ],
          ),
          IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert)),
        ]),
        const SizedBox(height: TSizes.spaceBtwItems),

        /// Review
        Row(
          children: [
            const TRatingBarIndicator(rating: 4),
            const SizedBox(width: TSizes.spaceBtwItems),
            Text('01 Nov, 2023', style: Theme.of(context).textTheme.bodyMedium),
          ],
        ),

        const SizedBox(height: TSizes.spaceBtwItems),
        const ReadMoreText(
          trimLines: 2,
          'The user interface of the app is quite intuitive. I was able to navigate and make purchases seamlessly. Great job!',
          trimMode: TrimMode.Line,
          trimExpandedText: 'show less',
          trimCollapsedText: 'show more',
          moreStyle: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
              color: TColors.PrimaryColor),
          lessStyle: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
              color: TColors.PrimaryColor),
        ),

        const SizedBox(height: TSizes.spaceBtwItems),

        /// Company Review

        TRoundedContainer(
          backgroundColor: dark ? TColors.darkerGrey : TColors.grey,
          child: Padding(
            padding: const EdgeInsets.all(TSizes.md),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("T's Store",
                        style: Theme.of(context).textTheme.titleMedium),
                    Text('02 Nov, 2023',
                        style: Theme.of(context).textTheme.bodyMedium),
                  ],
                ),
                const SizedBox(height: TSizes.spaceBtwItems),
                const ReadMoreText(
                  'The user interface of the app is quite intuitive. I was able to navigate and make purchases seamlessly. Grem',
                  trimLines: 2,
                  trimMode: TrimMode.Line,
                  trimExpandedText: 'show less',
                  trimCollapsedText: 'show more',
                  moreStyle: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: TColors.PrimaryColor),
                  lessStyle: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: TColors.PrimaryColor),
                ),
              ],
            ),
          ),
        ),

        const SizedBox(height: TSizes.spaceBtwsections),
      ],
    );
  }
}