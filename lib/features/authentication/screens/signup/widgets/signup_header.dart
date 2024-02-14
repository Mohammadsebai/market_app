import 'package:flutter/material.dart';

import '../../../../../utils/constants/image_strings.dart';
import '../../../../../utils/constants/text_strings.dart';

class SignupHeader extends StatelessWidget {
  const SignupHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
    
        const Center(
              child: Image(
                height: 60,
                image: AssetImage(TImages.logoMe)
                ),
            ),
        Text(TTexts.titleSignup,
            style: Theme.of(context).textTheme.headlineMedium),
      ],
    );
  }
}
