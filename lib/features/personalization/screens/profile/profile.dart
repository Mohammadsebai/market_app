import 'package:flutter/material.dart';
import 'package:market/features/personalization/screens/profile/widgets/profile_menu.dart';


import '../../../../common/widgets/appbar/appbar.dart';
import '../../../../common/widgets/images_/t_circular_image.dart';
import '../../../../common/widgets/texts/section_heading.dart';
import '../../../../utils/constants/image_strings.dart';
import '../../../../utils/constants/sizes.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const TAppBar(showBackArrow: true, title: Text('Profile')),

        /// -- Body
        body: SingleChildScrollView(
            child: Padding(
                padding: const EdgeInsets.all(TSizes.defaultSpace),
                child: Column(children: [
                  /// Profile Picture
                  SizedBox(
                    width: double.infinity,
                    child: Column(
                      children: [
                        const TCircularImage(
                            image: TImages.facebook, width: 80, height: 80),
                        TextButton(
                            onPressed: () {},
                            child: const Text('Change Profile Picture')),
                      ],
                    ),
                  ),

                  /// Details
                  const SizedBox(height: TSizes.spaceBtwItems / 2),
                  const Divider(),
                  const SizedBox(height: TSizes.spaceBtwItems),

                  ///Heading profile info
                  const TSectionHeading(
                    title: 'Profile Information',
                    showActionButton: false,
                  ),
                  const SizedBox(height: TSizes.spaceBtwItems),

                  TProfileMenu(
                    title: 'Name',
                    value: 'Coding with T',
                    onPressed: () {},
                  ),
                  TProfileMenu(
                    title: 'Username',
                    value: 'Coding with t',
                    onPressed: () {},
                  ),

                  const SizedBox(height: TSizes.spaceBtwItems),
                  const Divider(),
                  const SizedBox(height: TSizes.spaceBtwItems),

                  /// Heading Personal Info

                  const TSectionHeading(
                      title: 'Personal Information', showActionButton: false),
                  const SizedBox(height: TSizes.spaceBtwItems),

                  TProfileMenu(
                      title: 'User ID',
                      value: '45689',
                      icon: Icons.copy,
                      onPressed: () {}),
                  TProfileMenu(
                      title: 'E-mail',
                      value: 'coding_with_t',
                      onPressed: () {}),
                  TProfileMenu(
                      title: 'Phone Number',
                      value: '+92-317-8059528',
                      onPressed: () {}),
                  TProfileMenu(
                      title: 'Gender', value: 'Male', onPressed: () {}),
                  TProfileMenu(
                      title: 'Date of Birth',
                      value: '10 Oct, 1994',
                      onPressed: () {}),

                  const Divider(),
                  const SizedBox(height: TSizes.spaceBtwItems),

                  Center(
                    child: TextButton(
                      onPressed: () {},
                      child: const Text('Close Account',
                          style: TextStyle(color: Colors.red)),
                    ),
                  ),
                ]))));
  }
}
