import 'package:flutter/material.dart';
import 'package:shopmart/general/utils/colors.dart';
import 'package:shopmart/general/utils/text_style.dart';

class Sections extends StatelessWidget {
  final String section;
  final VoidCallback tap;
  const Sections({Key? key, required this.section, required this.tap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          section,
          style: KTextStyle.title1,
        ),
        InkWell(
          onTap: tap,
          child: Text('See All',
              style: KTextStyle.title5.copyWith(color: KColor.primary)),
        ),
      ],
    );
  }
}
