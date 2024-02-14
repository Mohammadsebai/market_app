import 'package:flutter/material.dart';

import '../../../../../common/widgets/images_/t_rounded_container.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/helpers/helper_functions.dart';
import '../../../../../utils/theme/custom_themes/app_colors.dart';

class TorderListItems extends StatelessWidget {
  const TorderListItems({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return ListView.separated(
      shrinkWrap: true,
      itemCount: 10,
      separatorBuilder: (_, __) => const SizedBox(height: TSizes.spaceBtwItems),
      itemBuilder: (_, index) => TRoundedContainer(
        showBorder: true,
        padding: const EdgeInsets.all(TSizes.md),
        backgroundColor: dark ? TColors.Dark : TColors.Light,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            /// --Row
            Row(
              children: [
                /// 1 -Icon

                const Icon(Icons.local_shipping),
                const SizedBox(width: TSizes.spaceBtwItems / 2),

                /// 2 Status & Date
                Expanded(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Processing',
                        style: Theme.of(context).textTheme.bodyLarge!.apply(
                            color: TColors.PrimaryColor, fontWeightDelta: 1),
                      ),
                      Text('87 Nov 2024',
                          style: Theme.of(context).textTheme.headlineSmall),
                    ],
                  ),
                ),

                /// 3 Icon
                IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.arrow_forward_ios,
                      size: TSizes.iconSm,
                    )),
              ],
            ),

            const SizedBox(width: TSizes.spaceBtwItems),

            ///---Row 2
            Row(children: [
              Expanded(
                child: Row(
                  children: [
                    /// 1- Icon
                    const Icon(Icons.fiber_pin_sharp),
                    const SizedBox(width: TSizes.spaceBtwItems / 2),

                    /// 2- Status & Date
                    Expanded(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Order',
                              style: Theme.of(context).textTheme.labelMedium),
                          Text('[#256f2]',
                              style: Theme.of(context).textTheme.titleMedium)
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Row(
                  children: [
                    /// 1- Icon
                    const Icon(Icons.calendar_month),
                    const SizedBox(width: TSizes.spaceBtwItems / 2),

                    /// 2- Status & Date
                    Expanded(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('shipping Date',
                              style: Theme.of(context).textTheme.labelMedium),
                          Text('03 fed 2025',
                              style: Theme.of(context).textTheme.titleMedium)
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ])
          ],
        ),
      ),
    );
  }
}
