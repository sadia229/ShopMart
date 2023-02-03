import 'package:flutter/material.dart';
import 'package:shopmart/apps/home/widgets/best_selling.dart';
import 'package:shopmart/apps/home/widgets/categories.dart';
import 'package:shopmart/general/utils/colors.dart';
import 'package:shopmart/widgets/appbar/k_appbar.dart';
import '../widgets/promotional_banners.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: KColor.background,
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(75),
        child: KAppBar(),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: const [
            Categories(),
            SizedBox(height: 15),
            PromotionalBanners(),
            SizedBox(height: 20),
            BestSellingProducts(),
            SizedBox(height: 20),
            SizedBox(height: 20),
            BestSellingProducts(),
            SizedBox(height: 20),
            PromotionalBanners(),
            SizedBox(height: 20),
            BestSellingProducts(),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
