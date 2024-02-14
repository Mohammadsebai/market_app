import 'package:flutter/material.dart';
import 'package:market/features/authentication/controllers.onboarding/onboarding_controller.dart';
import 'package:market/utils/constants/sizes.dart';
import 'package:market/utils/device/device_utility.dart';


import '../../../../../utils/theme/custom_themes/app_colors.dart';

class OnBoardingNextButton extends StatelessWidget {
  const OnBoardingNextButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      right: TSizes.defaultSpace,
      bottom: TDeviceUtils.getBottomNavigationBarHeight(),
      child: ElevatedButton(
        onPressed: () => OnBoardingController.instance.nextPage(),
        style: ElevatedButton.styleFrom(
            shape: const CircleBorder(), backgroundColor: TColors.PrimaryColor),
        child: const Icon(Icons.keyboard_arrow_right),
      ),
    );
  }
}
