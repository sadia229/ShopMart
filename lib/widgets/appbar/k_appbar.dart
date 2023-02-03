import 'package:flutter/material.dart';
import 'package:shopmart/general/constants/asset_path.dart';
import 'package:shopmart/general/utils/colors.dart';
import 'package:shopmart/general/utils/config.dart';
import 'package:shopmart/general/utils/text_style.dart';

class KAppBar extends StatelessWidget {
  const KAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      backgroundColor: KColor.base,
      elevation: 0,
      title: Container(
        padding: const EdgeInsets.only(top: 16),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              width: 35,
              height: 35,
              child: Image.asset(
                AssetPath.imagePlaceholder,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(width: 8),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Hello Sadia',
                    style: KTextStyle.title9.copyWith(color: KColor.white),
                  ),
                  const SizedBox(height: 5),
                  Row(
                    children: [
                      Image.asset(AssetPath.location, height: 15),
                      const SizedBox(width: 4),
                      Expanded(
                        flex: 1,
                        child: Text(
                          'Shyamoli Square Shopping Mall',
                          style:
                              KTextStyle.title8.copyWith(color: KColor.white),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(width: 20),
            Image.asset(AssetPath.notification, height: 28),
            SizedBox(width: context.screenWidth * 0.06),
            Image.asset(AssetPath.cart, height: 35),
            SizedBox(width: context.screenWidth * 0.07),
            Image.asset(AssetPath.drawer, height: 28),
          ],
        ),
      ),
    );
  }
}
