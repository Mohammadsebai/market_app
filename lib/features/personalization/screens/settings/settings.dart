import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:market/features/personalization/screens/address/address.dart';
import 'package:market/features/personalization/screens/profile/profile.dart';
import 'package:market/features/shoping/screens/order/order.dart';

import '../../../../common/widgets/appbar/appbar.dart';
import '../../../../common/widgets/custom_shapes/containers/primary_header_container.dart';
import '../../../../common/widgets/list_tiles/settings_menu_tile.dart';
import '../../../../common/widgets/list_tiles/user_profile_tile.dart';
import '../../../../common/widgets/texts/section_heading.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/theme/custom_themes/app_colors.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            /// -- Header
            TPrimaryHeaderContainer(
              child: Column(children: [
                ///AppBar
                TAppBar(
                    title: Text('Account',
                        style: Theme.of(context)
                            .textTheme
                            .headlineMedium!
                            .apply(color: TColors.white))),

                /// User Profile Card
                TUserProfileTile(
                    onPressed: () => Get.to(() => const ProfileScreen())),
                const SizedBox(height: TSizes.spaceBtwsections),
              ]),
            ),

            ///--Body
            ///
            Padding(
              padding: const EdgeInsets.all(TSizes.defaultSpace),
              child: Column(children: [
                const TSectionHeading(
                    title: 'Account Settings', showActionButton: false),

                /// -- Account Settings

                const SizedBox(height: TSizes.spaceBtwItems),

                TSettingsMenuTile(
                  icon: Icons.add_home_work_rounded,
                  title: 'My Addresses',
                  subTitle: 'Set shopping delivery address',
                  onTap: () => Get.to(() => const UserAdderssScreen()),
                ),
                const TSettingsMenuTile(
                    icon: Icons.shopping_cart,
                    title: 'My Cart',
                    subTitle: 'Add, remove products and move to checkout'),
                TSettingsMenuTile(
                    icon: Icons.shopping_bag_outlined,
                    title: 'My Orders',
                    subTitle: 'In-progress and Completed Orders',
                    onTap: () => Get.to(() => const OrderScreen())),
                const TSettingsMenuTile(
                    icon: Icons.account_balance,
                    title: 'Bank Account',
                    subTitle: 'Withdraw balance to registered bank account'),
                const TSettingsMenuTile(
                    icon: Icons.card_membership,
                    title: 'My Coupons',
                    subTitle: 'List of all the discounted coupons'),
                const TSettingsMenuTile(
                    icon: Icons.notifications_none_outlined,
                    title: 'Notifications',
                    subTitle: 'Set any kind of notification message'),
                const TSettingsMenuTile(
                    icon: Icons.security,
                    title: 'Account Privacy',
                    subTitle: 'Manage data usage and connected accounts'),

                /// App Settings

                const SizedBox(height: TSizes.spaceBtwsections),

                const TSectionHeading(
                    title: 'App Settings', showActionButton: false),
                const SizedBox(height: TSizes.spaceBtwItems),
                const TSettingsMenuTile(
                    icon: Icons.edit_document,
                    title: 'Load Data',
                    subTitle: 'Upload Data to your Cloud Firebase'),

                TSettingsMenuTile(
                  icon: Icons.location_on,
                  title: 'Geolocation',
                  subTitle: 'Set recommendation based on location',
                  trailing: Switch(value: true, onChanged: (value) {}),
                ),

                TSettingsMenuTile(
                  icon: Icons.sensor_occupied_rounded,
                  title: 'Safe Mode',
                  subTitle: 'Search result is safe for all ages',
                  trailing: Switch(value: false, onChanged: (value) {}),
                ),

                TSettingsMenuTile(
                  icon: Icons.image,
                  title: 'HD Image Quality',
                  subTitle: 'Set image quality to be seen',
                  trailing: Switch(value: false, onChanged: (value) {}),
                ),

                ///--logout button

                const SizedBox(height: TSizes.spaceBtwsections),

                SizedBox(
                  width: double.infinity,
                  child: OutlinedButton(
                      onPressed: () {}, child: const Text('Logout')),
                ), // SizedBox

                const SizedBox(height: TSizes.spaceBtwsections * 2.5),
              ]),
            ),
          ],
        ),
      ),
    );
  }
}
