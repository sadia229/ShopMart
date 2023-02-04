import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shopmart/general/utils/config.dart';
import 'package:shopmart/widgets/card/products_card.dart';
import 'package:shopmart/widgets/card/section_card.dart';

import '../providers/favourite_provider.dart';

class BestSellingProducts extends ConsumerWidget {
  const BestSellingProducts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
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
                final favourite = ref.watch(favouriteProvider(index));
                return ProductsCard(
                  tap: () {
                    ref.read(favouriteProvider(index).notifier).addFavourite();
                  },
                  currentIndex: index,
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
