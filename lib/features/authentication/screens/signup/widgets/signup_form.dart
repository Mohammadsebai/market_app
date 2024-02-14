import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:market/features/authentication/screens/signup/verify_email.dart';
import 'package:market/utils/constants/text_strings.dart';

import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/helpers/helper_functions.dart';
import '../../../../../utils/theme/custom_themes/app_colors.dart';

class SignupForm extends StatelessWidget {
  const SignupForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);

    return Form(
      child: Column(
        children: [
          //name
          TextFormField(
            expands: false,
            decoration: const InputDecoration(
                labelText: TTexts.fullNameSignup,
                prefixIcon: Icon(Icons.person)),
          ),

          const SizedBox(
            height: TSizes.spaceBtwInputFields,
          ),
          //Email
          TextFormField(
            expands: false,
            decoration: const InputDecoration(
                labelText: TTexts.userNameSignup,
                prefixIcon: Icon(Icons.account_circle)),
          ),
          const SizedBox(
            height: TSizes.spaceBtwInputFields,
          ),
          //phone number
          TextFormField(
            expands: false,
            decoration: const InputDecoration(
                labelText: TTexts.EmailSignup, prefixIcon: Icon(Icons.email)),
          ),

          const SizedBox(
            height: TSizes.spaceBtwInputFields,
          ),
          //Phone
          TextFormField(
            expands: false,
            decoration: const InputDecoration(
                labelText: TTexts.phoneSignup, prefixIcon: Icon(Icons.phone)),
          ),

          const SizedBox(
            height: TSizes.spaceBtwInputFields,
          ),
          //password
          TextFormField(
            obscureText: true,
            decoration: const InputDecoration(
                labelText: TTexts.passwordSignup,
                prefixIcon: Icon(Icons.key),
                suffixIcon: Icon(Icons.remove_red_eye)),
          ),
          const SizedBox(
            height: TSizes.spaceBtwInputFields,
          ),

          ///Terms&conditions Checkbox
          Row(
            children: [
              SizedBox(
                  width: 24,
                  height: 24,
                  child: Checkbox(value: true, onChanged: (value) {})),
              const SizedBox(
                width: TSizes.spaceBtwInputFields,
              ),
              Text.rich(TextSpan(children: [
                TextSpan(
                    text: '${TTexts.IAgreeToSignup} ',
                    style: Theme.of(context).textTheme.bodySmall),
                TextSpan(
                    text: '${TTexts.privacyPoliceySignup} ',
                    style: Theme.of(context).textTheme.bodyMedium!.apply(
                          color: dark ? TColors.white : TColors.PrimaryColor,
                          decoration: TextDecoration.underline,
                          decorationColor:
                              dark ? TColors.white : TColors.PrimaryColor,
                        )),
                TextSpan(
                    text: TTexts.andSignup,
                    style: Theme.of(context).textTheme.bodySmall),
                TextSpan(
                    text: TTexts.termsOfUseSignup,
                    style: Theme.of(context).textTheme.bodyMedium!.apply(
                          color: dark ? TColors.white : TColors.PrimaryColor,
                          decoration: TextDecoration.underline,
                          decorationColor:
                              dark ? TColors.white : TColors.PrimaryColor,
                        )),
              ]))
            ],
          ),
          const SizedBox(
            height: TSizes.spaceBtwsections,
          ),
          //sign Up Button

          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () => Get.to(() => const VerifyEmailScreen()),
              child: const Text(TTexts.createAccountSignup),
            ),
          ),
        ],
      ),
    );
  }
}
