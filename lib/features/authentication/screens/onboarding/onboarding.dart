import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:market/features/authentication/screens/onboarding/widgets/0nboarding_next_button.dart';
import 'package:market/utils/constants/image_strings.dart';
import 'package:market/utils/constants/text_strings.dart';

import '../../controllers.onboarding/onboarding_controller.dart';
import 'widgets/onboarding_dot_navigation.dart';
import 'widgets/onboarding_page.dart';
import 'widgets/onboarding_skip.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnBoardingController());

    return Scaffold(
        body: Stack(
      children: [
        ///Horizontal scrallable pages
        PageView(
          controller: controller.pageController,
          onPageChanged: controller.updatePageIndicator,
          children: const [
            OnBoardingPage(
              image: TImages.onBording1,
              title: TTexts.titleOnBoarding1,
              subTitle: TTexts.subTitleOnBoarding1,
            ),
            OnBoardingPage(
              image: TImages.onBording2,
              title: TTexts.titleOnBoarding2,
              subTitle: '',
            ),
            OnBoardingPage(
              image: TImages.onBording3,
              title: TTexts.titleOnBoarding3,
              subTitle: '',
            ),
          ],
        ),

        //skip button
        const OnBoardingSkip(),

        ///Dot Navigation SmoothPageIndicator
        const OnBoardingDotNavigation(),

        /// circular NextButton
        const OnBoardingNextButton()
      ],
    ));
  }
}
