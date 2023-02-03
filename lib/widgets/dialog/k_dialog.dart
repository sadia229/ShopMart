import 'package:flutter/material.dart';
import '../../general/constants/constants.dart';
import '../card/category_card.dart';

class CategoryDialog extends StatelessWidget {
  const CategoryDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 35.0,horizontal: 10),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(15),
          topRight: Radius.circular(15),
        ),
      ),
      child: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 4,
          crossAxisSpacing: 30.0,
          mainAxisSpacing: 20.0,
        ),
        shrinkWrap: true,
        itemCount: allCategory.length,
        itemBuilder: (context, index) {
          return CategoryCard(
            img: allCategoryImage[index],
            name: allCategory[index],
          );
        },
      ),
    );
  }
}
