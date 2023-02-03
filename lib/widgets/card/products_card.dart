import 'package:flutter/material.dart';
import 'package:shopmart/general/utils/colors.dart';
import 'package:shopmart/general/utils/config.dart';

import '../../general/constants/asset_path.dart';
import '../../general/utils/text_style.dart';

class ProductsCard extends StatefulWidget {
  const ProductsCard({Key? key}) : super(key: key);

  @override
  State<ProductsCard> createState() => _ProductsCardState();
}

class _ProductsCardState extends State<ProductsCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: context.screenWidth * 0.6,
      margin: const EdgeInsets.only(right: 15),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        color: KColor.white,
        elevation: 5,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 0.0,horizontal: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: Image.network(
                    'https://fakestoreapi.com/img/81fPKd-2AYL._AC_SL1500_.jpg',
                    height: 120.0,
                    width: context.screenWidth * 0.4,
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              const SizedBox(height: 15),
              Text(
                'White Gold Plated Princess White Gold Plated Princess',
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
        ),
      ),
    );
  }
}
