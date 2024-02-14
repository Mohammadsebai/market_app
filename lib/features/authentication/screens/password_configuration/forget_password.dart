import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../utils/constants/sizes.dart';
import 'reset_password.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Padding(
            padding: const EdgeInsets.all(TSizes.defaultSpace),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //Hadings
                Text(
                  ' TTexts.forgerPasswordTitle',
                  style: Theme.of(context).textTheme.headlineMedium,
                  textAlign: TextAlign.center,
                ),

                const SizedBox(
                  height: TSizes.spaceBtwItems,
                ),

                Text(
                  ' TTexts.forgerPasswordSubTitil',
                  style: Theme.of(context).textTheme.labelMedium,
                  textAlign: TextAlign.center,
                ),

                const SizedBox(
                  height: TSizes.spaceBtwsections * 2,
                ),

                ///text field

                TextFormField(
                  decoration: const InputDecoration(
                      labelText: 'TTexts.email', prefixIcon: Icon(Icons.email)),
                ),

                //submit button

                const SizedBox(
                  height: TSizes.spaceBtwsections,
                ),

                SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                        onPressed: () => Get.off(() => const ResetPasswoerd()),
                        child: const Text("TTexts.submit"))),
              ],
            )));
  }
}
