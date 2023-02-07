
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shopmart/apps/test/model/area_model.dart';
import 'package:shopmart/apps/test/provider/customer_provider.dart';
import 'package:shopmart/apps/test/provider/location_provider.dart';
import 'package:shopmart/general/utils/config.dart';
import 'package:shopmart/general/utils/text_style.dart';

import '../../../general/utils/colors.dart';

class LocationDropdown extends ConsumerStatefulWidget {
  final String? title;
  final String? hint;
  final TextStyle? focusHintStyle;
  final Color? borderColor;
  final Color? focusBorderColor;
  final TextEditingController? controller;
  final List<AreaLocation>? data;

  const LocationDropdown({
    Key? key,
    this.focusHintStyle,
    this.borderColor,
    this.focusBorderColor,
    this.controller,
    this.data,
    this.title,
    this.hint,
  }) : super(key: key);

  @override
  ConsumerState<LocationDropdown> createState() => _LocationDropdownState();
}

class _LocationDropdownState extends ConsumerState<LocationDropdown> {
  List<Customer> newCustomerList = [];
  AreaLocation? areaLocation;
  Customer? customer;

  @override
  Widget build(BuildContext context) {
    final customerLIst = ref.watch(customernNotiProvider);
    print("customers list $customerLIst");
    final locationList = ref.watch(locationNotiProvider);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(widget.title!, style: KTextStyle.title4),
        const SizedBox(height: 8),
        Container(
          height: context.screenHeight * 0.055,
          decoration: BoxDecoration(
            border: Border.all(color: KColor.black.withOpacity(0.25), width: 2),
            borderRadius: BorderRadius.circular(6),
          ),
          child: DropdownButtonHideUnderline(
            child: Padding(
              padding: const EdgeInsets.only(
                right: 18.0,
                left: 9,
              ),
              child: DropdownButton<AreaLocation>(
                hint: Center(child: Text(widget.hint.toString())),
                isExpanded: true,
                dropdownColor: Colors.grey.shade50,
                value: ref.read(areaLocationProvider.notifier).state,
                menuMaxHeight: context.screenHeight * 0.5,
                alignment: AlignmentDirectional.bottomCenter,
                icon: const Icon(Icons.arrow_right),
                onChanged: (value) async {
                  setState(() {
                    ref.read(areaLocationProvider.notifier).state = value!;
                    // ref.read(updatebilllsProvider.notifier).clearbillList();
                    ref.read(customerStateProvider.notifier).state = null;
                    customer = null;
                    ref
                        .read(updateCustomerProvider.notifier)
                        .clearCutomerList();
                    areaLocation = value;

                    newCustomerList = customerLIst
                        .where((element) =>
                    element.areaLocId == areaLocation!.areaLocationId)
                        .toList();
                    for (var i in newCustomerList) {
                      ref
                          .watch(updateCustomerProvider.notifier)
                          .setNewCostomer(i);
                    }
                  });
                },
                items: widget.data!.map((e) {
                  return DropdownMenuItem(
                    value: e,
                    child: Text(e.areaLocationName!, style: KTextStyle.title4),
                    onTap: () {
                      print(e.areaLocationName);
                    },
                  );
                }).toList(),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
