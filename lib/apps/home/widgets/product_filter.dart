import 'package:flutter/material.dart';
import 'package:shopmart/general/constants/asset_path.dart';
import 'package:shopmart/general/utils/colors.dart';
import 'package:shopmart/widgets/TextField/k_textfiels.dart';

class ProductFilter extends StatefulWidget {
  const ProductFilter({Key? key}) : super(key: key);

  @override
  State<ProductFilter> createState() => _ProductFilterState();
}

class _ProductFilterState extends State<ProductFilter> {
  TextEditingController test = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        children: [
          Flexible(
            child: KTextField(
              controller: test,
              hintText: 'Search...',
            ),
          ),
          const SizedBox(width: 8),
          Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
              color: KColor.appBase,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Icon(Icons.filter_list_sharp, size: 32, color: KColor.white),
          ),
        ],
      ),
    );
  }
}
