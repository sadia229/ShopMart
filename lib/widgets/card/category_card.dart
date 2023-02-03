import 'package:flutter/material.dart';

import '../../general/utils/text_style.dart';

class CategoryCard extends StatelessWidget {
  final String img;
  final String name;

  const CategoryCard({Key? key, required this.img, required this.name})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(img, height: 40,fit: BoxFit.cover,),
        const SizedBox(height: 5),
        Center(child: Text(name, style: KTextStyle.title6))
      ],
    );
  }
}
