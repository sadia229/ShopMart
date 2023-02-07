import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:shopmart/general/constants/constants.dart';
import 'package:shopmart/general/utils/colors.dart';
import 'package:shopmart/widgets/button/see_more_btn.dart';
import 'package:shopmart/widgets/card/category_card.dart';
import 'package:shopmart/widgets/dialog/k_dialog.dart';

class Categories extends StatelessWidget {
  const Categories({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
      child: Column(
        children: [
          GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 4,
              crossAxisSpacing: 35.0,
              mainAxisSpacing: 7.0,
            ),
            shrinkWrap: true,
            itemCount: category.length,
            itemBuilder: (context, index) {
              return CategoryCard(
                img: categoryImage[index],
                name: category[index],
              );
            },
          ),
          const SizedBox(height: 10),
          TextButton(
            onPressed: () {
              showModalBottomSheet(
                context: context,
                backgroundColor: Colors.transparent,
                builder: (_) => BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 3, sigmaY: 3),
                  child: const CategoryDialog(),
                ),
              );
            },
            child: const SeeMore(),
          ),
        ],
      ),
    );
  }
}
