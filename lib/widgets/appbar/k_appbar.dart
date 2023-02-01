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
      backgroundColor: KColor.appBase,
      elevation: 0,
      title: Container(
        padding: const EdgeInsets.only(left: 6, right: 6, top: 16),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              width: 50,
              height: 50,
              child: Image.asset(
                AssetPath.imagePlaceholder,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(width: 8),
            Column(
              children: [
                Text(
                  'Hello Sadia',
                  style: KTextStyle.title6.copyWith(color: KColor.white),
                ),
                const SizedBox(height: 8),
                Row(
                  children: [
                    Image.asset(AssetPath.location, height: 17),
                    const SizedBox(width: 4),
                    Text(
                      'Hello Sadia',
                      style: KTextStyle.title8.copyWith(color: KColor.white),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(width: context.screenWidth*0.2),
            Image.asset(AssetPath.notification,height: 24),
            SizedBox(width: context.screenWidth*0.052),
            Image.asset(AssetPath.cart,height: 35),
            SizedBox(width: context.screenWidth*0.056),
            Image.asset(AssetPath.drawer,height: 25),
          ],
        ),
      ),
    );
  }
}
