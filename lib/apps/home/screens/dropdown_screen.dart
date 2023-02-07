import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shopmart/apps/test/provider/customer_provider.dart';
import 'package:shopmart/apps/test/provider/location_provider.dart';
import 'package:shopmart/apps/test/screens/area_dropdown.dart';
import 'package:shopmart/apps/test/screens/customer_dropdown.dart';
import 'package:shopmart/apps/test/screens/location_dropdown.dart';
import 'package:shopmart/general/utils/config.dart';

import '../../test/provider/area_provider.dart';

class DropdownScreen extends ConsumerStatefulWidget {
  const DropdownScreen({Key? key}) : super(key: key);

  @override
  ConsumerState<DropdownScreen> createState() => _DropdownScreenState();
}

class _DropdownScreenState extends ConsumerState<DropdownScreen> {
  @override
  Widget build(BuildContext context) {
    final data = ref.watch(areaNotifyProvider);
    if (data.isNotEmpty) {
      return WillPopScope(
        onWillPop: () async {
          // ref.read(areaLocationProvider.notifier).state = null;
          // ref.read(customerStateProvider.notifier).state = null;
          // ref.read(updatebilllsProvider.notifier).clearbillList();
          return true;
        },
        child: Scaffold(
          body: ListView(
            //mainAxisAlignment: MainAxisAlignment.spaceBetween,
            shrinkWrap: true,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    AreaDropdown(
                      title: 'দ্বায়িত্ব প্রাপ্ত এলাকা',
                      hint: 'Please Select Your Area Of Duty',
                      data: data,
                    ),
                    SizedBox(height: context.screenHeight * 0.02),

                    Consumer(builder: (context, ref, child) {
                      final locations = ref.watch(updateLocationProvider);
                      print(" update location list$locations");
                      return LocationDropdown(
                        title: 'লোকেশন',
                        hint: 'Please Select your Location',
                        data: locations,
                      );
                    }),

                    SizedBox(height: context.screenHeight * 0.02),

                    Consumer(builder: (context, ref, child) {
                      final customers = ref.watch(updateCustomerProvider);
                      return CustomerDropdown(
                        title: 'গ্রাহক',
                        hint: 'Please select a Customer',
                        data: customers,
                      );
                    }),
                    SizedBox(height: context.screenHeight * 0.02),
                    //
                    // ///
                    // SizedBox(height: context.screenHeight * 0.03),
                    // const TotalBills(),
                  ],
                ),
              ),
              // const Footer(),
            ],
          ),

        ),
      );
    }
    return const Center(child: CircularProgressIndicator());
  }
}
