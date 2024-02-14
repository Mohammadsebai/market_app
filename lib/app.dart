
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:market/features/authentication/screens/onboarding/onboarding.dart';
import 'package:market/utils/theme/custom_themes/app_colors.dart';

import 'utils/theme/theme.dart';
/// Use this Class to setup themes, initial Bindings, any animations and
class App extends StatelessWidget {
const App({super.key});

@override
Widget build(BuildContext context) {
return GetMaterialApp(
debugShowCheckedModeBanner: false,
debugShowMaterialGrid: false,
themeMode: ThemeMode.system,
theme:TAppTheme.lightTheme,
darkTheme: TAppTheme.darkTheme,
home:const OnBoardingScreen()

/// Show Loader or Circular Progress Indicator meanwhile Authentication Repository is deciding to show relevant screen. 
// home: const Scaffold(backgroundColor: TColors.PrimaryColor, body: Center(child: CircularProgressIndicator(color: Colors.white))),

);

}
}