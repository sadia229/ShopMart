import 'package:flutter/material.dart';
import 'package:shopmart/general/constants/asset_path.dart';
import 'package:shopmart/general/utils/colors.dart';
import 'package:shopmart/general/utils/config.dart';

import '../../general/utils/text_style.dart';

class ProductCard extends StatefulWidget {
  const ProductCard({Key? key}) : super(key: key);

  @override
  State<ProductCard> createState() => _ProductCardState();
}

class _ProductCardState extends State<ProductCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: context.screenWidth * 0.6,
      padding: const EdgeInsets.only(top: 10, right: 10, left: 10),
      margin: const EdgeInsets.only(right: 15),
      decoration: BoxDecoration(
        color: KColor.white,
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.4),
            spreadRadius: 2,
            blurRadius: 4,
          ),
          BoxShadow(
            color: Colors.black.withOpacity(0.4),
            spreadRadius: 2,
            blurRadius: 4,
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8.0),
            child: Image.asset(
              AssetPath.banner1,
              height: 140.0,
              width: context.screenWidth * 0.5,
              fit: BoxFit.fill,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            'White Gold Plated Princess',
            style: KTextStyle.title3,
          ),
          Flexible(
            child: Container(
              //color: Colors.blue,
              padding: const EdgeInsets.only(top: 12.0,bottom: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '12.45 tk',
                    style: KTextStyle.title1,
                  ),
                  Text(
                    '(4/5)',
                    style: KTextStyle.title3,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
