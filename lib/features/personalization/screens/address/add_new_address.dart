import 'package:flutter/material.dart';

import '../../../../common/widgets/appbar/appbar.dart';
import '../../../../utils/constants/sizes.dart';

class AddNewAddressScreen extends StatelessWidget {
  const AddNewAddressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar:
            const TAppBar(showBackArrow: true, title: Text('Add new Address')),
        body: SingleChildScrollView(
            child: Padding(
                padding: const EdgeInsets.all(TSizes.defaultSpace),
                child: Form(
                    child: Column(
                  children: [
                    TextFormField(
                        decoration: const InputDecoration(
                            prefixIcon: Icon(Icons.person), labelText: 'Name')),
                    const SizedBox(height: TSizes.spaceBtwInputFields),
                    TextFormField(
                        decoration: const InputDecoration(
                            prefixIcon: Icon(Icons.phone),
                            labelText: 'Phone Number')),
                    const SizedBox(height: TSizes.spaceBtwInputFields),
                    Row(
                      children: [
                        Expanded(
                            child: TextFormField(
                                decoration: const InputDecoration(
                                    prefixIcon: Icon(Icons.business),
                                    labelText: 'Street'))),
                        const SizedBox(width: TSizes.spaceBtwInputFields),
                        Expanded(
                            child: TextFormField(
                                decoration: const InputDecoration(
                                    prefixIcon: Icon(Icons.code),
                                    labelText: 'Postal Code'))),
                      ],
                    ),
                    const SizedBox(height: TSizes.spaceBtwInputFields),
                    Row(
                      children: [
                        Expanded(
                            child: TextFormField(
                                decoration: const InputDecoration(
                                    prefixIcon: Icon(Icons.location_city),
                                    labelText: 'City'))),
                        const SizedBox(width: TSizes.spaceBtwInputFields),
                        Expanded(
                            child: TextFormField(
                                decoration: const InputDecoration(
                                    prefixIcon:
                                        Icon(Icons.local_attraction_rounded),
                                    labelText: 'State'))),
                      ],
                    ),
                    const SizedBox(height: TSizes.spaceBtwInputFields),
                    TextFormField(
                        decoration: const InputDecoration(
                            prefixIcon: Icon(Icons.public),
                            labelText: 'Country')),
                    const SizedBox(height: TSizes.defaultSpace),
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                          onPressed: () {}, child: const Text('Save')),
                    )
                  ],
                )))));
  }
}
