import 'package:flutter/material.dart';
import 'package:shopmart/general/utils/colors.dart';
import 'package:shopmart/general/utils/config.dart';
import 'package:shopmart/widgets/card/product_card.dart';
import 'package:shopmart/widgets/card/products_card.dart';
import 'package:shopmart/widgets/card/section_card.dart';

class BestSellingProducts extends StatelessWidget {
  const BestSellingProducts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Sections(section: 'Best Selling', tap: () {}),
          const SizedBox(height: 8),
          SizedBox(
            height: context.screenHeight * 0.35,
            width: context.screenWidth,
            child: ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: 10,
              itemBuilder: (context, index) {
                return const ProductsCard();
              },
            ),
          ),
        ],
      ),
    );
  }
}
