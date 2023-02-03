import 'package:flutter/material.dart';
import 'package:shopmart/general/utils/colors.dart';
import 'package:shopmart/general/utils/config.dart';

import '../../general/utils/text_style.dart';

class SeeMore extends StatelessWidget {
  const SeeMore({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: context.screenWidth*0.28,
      padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 2),
      decoration: BoxDecoration(
        color: KColor.base,
        borderRadius: BorderRadius.circular(25),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'See More',
            style: KTextStyle.title6.copyWith(color: KColor.white),
          ),
          Icon(
            Icons.keyboard_arrow_down_rounded,
            color: KColor.white,
          ),
        ],
      ),
    );
  }
}
