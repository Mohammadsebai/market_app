import 'package:flutter/material.dart';
import 'package:market/common/widgets/login_sigup/form_divider.dart';
import '../../../../common/widgets/login_sigup/social_buttons.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/constants/text_strings.dart';
import 'widgets/signup_form.dart';
import 'widgets/signup_header.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: const SingleChildScrollView(
            child: Padding(
                padding: EdgeInsets.all(TSizes.defaultSpace),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      /// Title
                      SignupHeader(),

                      SizedBox(height: TSizes.spaceBtwsections),

                      /// Form

                      SignupForm(),
                      SizedBox(
                        height: TSizes.spaceBtwsections,
                      ),

                      ///Divider
                      TFormDivider(dividerText: TTexts.orSignupWithSignup),
                      SizedBox(
                        height: TSizes.spaceBtwsections,
                      ),

                      //social Buttons
                      TsocialButtons(),
                      SizedBox(
                        height: TSizes.spaceBtwsections,
                      ),
                    ]))));
  }
}
