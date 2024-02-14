
import 'package:flutter/material.dart';

import '../../../utils/constants/image_strings.dart';
import '../../../utils/theme/custom_themes/app_colors.dart';
import '../images_/t_circular_image.dart';

class TUserProfileTile extends StatelessWidget {
  const TUserProfileTile({
    super.key, required this.onPressed,
  });

  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const TCircularImage( image: TImages.raiseHand, width: 50, height: 50, padding: 0),
      title: Text('Coding with T', style: Theme.of(context) .textTheme.headlineSmall!.apply(color: TColors.white)),
      subtitle: Text('support@codingwithT.com',style: Theme.of(context).textTheme.bodyMedium!.apply(color: TColors.white)),
      trailing: IconButton( onPressed: onPressed,icon: const Icon(Icons.edit, color: TColors.white)),
      );
  }
}
