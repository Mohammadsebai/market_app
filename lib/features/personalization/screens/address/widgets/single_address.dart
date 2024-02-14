import 'package:flutter/material.dart';

import '../../../../../common/widgets/images_/t_rounded_container.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/helpers/helper_functions.dart';
import '../../../../../utils/theme/custom_themes/app_colors.dart';

class TSingleAddress extends StatelessWidget {
  const TSingleAddress({
    super.key,
    required this.selectedAddress,
  });

  final bool selectedAddress;

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return TRoundedContainer(
      showBorder: true,
      padding: const EdgeInsets.all(TSizes.md),
      width: double.infinity,
      backgroundColor: selectedAddress
          ? TColors.PrimaryColor.withOpacity(0.5)
          : Colors.transparent,
      borderColor: selectedAddress
          ? Colors.transparent
          : dark
              ? TColors.darkerGrey
              : TColors.grey,
      margin: const EdgeInsets.only(bottom: TSizes.spaceBtwItems),
      child: Stack(
        children: [
          Positioned(
            right: 5,
            top: 0,
            child: Icon(
              selectedAddress ? Icons.check_circle_sharp : null,
              color: selectedAddress 
              ? dark  
              ?TColors.Light
              :TColors.Dark
              :null,
            ),
          ),


Column(
  crossAxisAlignment:CrossAxisAlignment.start ,
children: [
Text(
'john Doe',
maxLines: 2,
overflow: TextOverflow.ellipsis,
style: Theme.of(context).textTheme.titleLarge,

), 

const SizedBox(height: TSizes.sm / 2),
const Text('(+123) 4567890',maxLines: 1,overflow: TextOverflow.ellipsis,),
const SizedBox(height: TSizes.sm/ 2),
const Text('82356 Timmy Coves, South Liana, Maine, 87665 USA',softWrap: true,)


],
),


        ],
      ),
    );
  }
}
