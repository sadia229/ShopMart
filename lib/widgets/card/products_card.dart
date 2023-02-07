import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shopmart/apps/home/providers/favourite_provider.dart';
import 'package:shopmart/general/constants/asset_path.dart';
import 'package:shopmart/general/utils/colors.dart';
import 'package:shopmart/general/utils/config.dart';
import '../../general/utils/text_style.dart';

class ProductsCard extends ConsumerWidget {
  final int currentIndex;
  final VoidCallback tap;

  const ProductsCard({
    required this.currentIndex,
    required this.tap,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final favourite = ref.watch(favouriteProvider(currentIndex));
    return Stack(
      children: [
        Container(
          width: context.screenWidth * 0.6,
          margin: const EdgeInsets.only(right: 15),
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0),
            ),
            color: KColor.white,
            elevation: 5,
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 0.0, horizontal: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(8.0),
                      child: Image.asset(
                        AssetPath.product,
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
                      padding: const EdgeInsets.only(top: 12.0, bottom: 8),
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
        ),
        Positioned(
          right: 5,
          top: 0,
          child: Align(
            alignment: Alignment.topRight,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: KColor.base,
              ),
              child: Center(
                child: Text(
                  'discount',
                  style: KTextStyle.title6.copyWith(color: KColor.white),
                ),
              ),
            ),
          ),
        ),
        Positioned(
          left: 3,
          top: 0,
          child: Align(
            alignment: Alignment.topRight,
            child: CircleAvatar(
              radius: 24,
              backgroundColor: KColor.favBg,
              child: IconButton(
                onPressed: tap,
                icon: Icon(
                  favourite ? Icons.favorite : Icons.favorite_outline,
                  color: favourite ? KColor.strongAgree : KColor.strongAgree,
                  size: favourite ? 25 : 20,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
