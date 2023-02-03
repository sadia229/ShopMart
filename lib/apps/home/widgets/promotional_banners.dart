import 'package:flutter/material.dart';
import 'package:shopmart/general/constants/constants.dart';
import 'package:shopmart/general/utils/colors.dart';
import 'package:shopmart/general/utils/config.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class PromotionalBanners extends StatefulWidget {
  const PromotionalBanners({Key? key}) : super(key: key);

  @override
  State<PromotionalBanners> createState() => _PromotionalBannersState();
}

class _PromotionalBannersState extends State<PromotionalBanners>
    with TickerProviderStateMixin {
  late final PageController _pageController = PageController();
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: context.screenWidth,
          height: context.screenHeight * 0.18,
          child: PageView.builder(
            onPageChanged: (e) {
              setState(() => currentIndex = e);
            },
            controller: _pageController,
            itemCount: promotionalBanners.length,
            itemBuilder: (context, itemIndex) {
              return InkWell(
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => promotionalBannersPages[itemIndex],
                    ),
                  );
                },
                child: Image.asset(promotionalBanners[itemIndex]),
              );
            },
          ),
        ),
        const SizedBox(height: 10),
        SmoothPageIndicator(
            controller: _pageController, // PageController
            count: promotionalBanners.length,
            effect: ExpandingDotsEffect(
              dotColor: KColor.secondary,
              activeDotColor: KColor.appBase,
              dotHeight: 10,
              dotWidth: 10,
            ), // your preferred effect
            onDotClicked: (index) => setState(() => currentIndex = index)),
      ],
    );
  }
}
