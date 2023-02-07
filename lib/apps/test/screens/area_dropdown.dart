import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shopmart/apps/test/model/area_model.dart';
import 'package:shopmart/general/utils/config.dart';
import 'package:shopmart/general/utils/text_style.dart';

import '../../../general/utils/colors.dart';
import '../provider/customer_provider.dart';
import '../provider/location_provider.dart';

class AreaDropdown extends ConsumerStatefulWidget {
  final String? title;
  final String? hint;
  final TextStyle? focusHintStyle;
  final Color? borderColor;
  final Color? focusBorderColor;
  final TextEditingController? controller;
  final List<Datum>? data;

  const AreaDropdown({
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
  ConsumerState<AreaDropdown> createState() => _AreaDropdownState();
}

class _AreaDropdownState extends ConsumerState<AreaDropdown> {
  AreasName? areasName;
  AreaLocation? areaLocation;
  Customer? customer;
  List<AreaLocation> newList = [];

  @override
  Widget build(BuildContext context) {
    final locationList = ref.watch(locationNotiProvider);
    print("location list*** $locationList");
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
              child: DropdownButton<AreasName>(
                hint: Center(child: Text(widget.hint.toString())),
                isExpanded: true,
                dropdownColor: Colors.grey.shade50,
                value: areasName,
                menuMaxHeight: context.screenHeight * 0.5,
                alignment: AlignmentDirectional.bottomCenter,
                icon: const Icon(Icons.arrow_right),
                onChanged: (value) {
                  setState(() {
                    ref.read(areaLocationProvider.notifier).state = null;
                    //ref.read(updatebilllsProvider.notifier).clearbillList();
                    areaLocation = null;
                    customer = null;
                    ref.read(updateLocationProvider.notifier).clearLocation();
                    ref
                        .read(updateCustomerProvider.notifier)
                        .clearCutomerList();
                    areasName = value;
                    newList = locationList
                        .where((element) => element.area == areasName!.areaId)
                        .toList();

                    for (var i in newList) {
                      ref
                          .watch(updateLocationProvider.notifier)
                          .setNewLocations(i);
                    }
                  });
                },
                items: widget.data!.map((e) {
                  return DropdownMenuItem<AreasName>(
                    value: e.areasName,
                    child:
                        Text(e.areasName.areaName!, style: KTextStyle.title4),
                    onTap: () {},
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
