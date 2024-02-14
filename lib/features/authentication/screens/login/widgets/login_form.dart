import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:market/features/authentication/screens/password_configuration/forget_password.dart';
import 'package:market/features/authentication/screens/signup/signup.dart';
import 'package:market/features/shoping/navigation_menu.dart';
import 'package:market/utils/constants/text_strings.dart';

import '../../../../../utils/constants/sizes.dart';

class TLoginForm extends StatelessWidget {
  const TLoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: TSizes.spaceBtwsections),
        child: Column(
          children: [
            /// Email

            TextFormField(
              decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.mail), labelText: TTexts.emailLogin),
            ),

            const SizedBox(height: TSizes.spaceBtwInputFields),

            /// Password
            TextFormField(
              decoration: const InputDecoration(
                prefixIcon: Icon(Icons.key),
                labelText: TTexts.passwordLogin,
                suffixIcon: Icon(Icons.remove_red_eye_sharp),
              ),
            ),
            const SizedBox(height: TSizes.spaceBtwInputFields / 2),

            /// Remember Me & Forget Password
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                /// Remember Me
                Row(
                  children: [
                    Checkbox(value: true, onChanged: (value) {}),
                    const Text(TTexts.rememberMeLogin),
                  ],
                ),

                /// Forget Password
                TextButton(
                    onPressed: () =>Get.to(()=>const ForgetPassword()),
                    child: const Text(TTexts.forgetPasswordLogin)),
              ],
            ),

            const SizedBox(height: TSizes.spaceBtwsections),

            /// Sign In Button
            SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: ()=>Get.to(()=>const NavigationMenu()), child: const Text(TTexts.signinInLogin))),
            const SizedBox(
              height: TSizes.spaceBtwItems,
            ),

            /// Create Account Button

            SizedBox(
                width: double.infinity,
                child: OutlinedButton(
                    onPressed: () => Get.to(() => const SignupScreen()),
                    child: const Text(TTexts.createAccountLogin))),
          ],
        ),
      ),
    );
  }
}
