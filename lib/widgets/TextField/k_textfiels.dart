import 'package:flutter/material.dart';

import '../../general/utils/colors.dart';
import '../../general/utils/text_style.dart';

// ignore: must_be_immutable
class KTextField extends StatefulWidget {
  final String hintText;

  KTextField({
    Key? key,
    required this.controller,
    required this.hintText,

  }) : super(key: key);
  TextEditingController controller = TextEditingController();

  @override
  State<KTextField> createState() => _KTextFieldState();
}

class _KTextFieldState extends State<KTextField> {
  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 1,
      child: TextFormField(
        validator: (value) {
          String pattern = r'^[a-z A-Z]';
          RegExp regExp = RegExp(pattern);
          if (value == null || value.isEmpty) {
            return 'Please FillUp';
          } else if (!regExp.hasMatch(value)) {
            return 'Please enter valid name';
          }
          return null;
        },
        controller: widget.controller,
        decoration: InputDecoration(
          hintText: widget.hintText,
          hintStyle: KTextStyle.title3.copyWith(
                  color: KColor.black.withOpacity(0.4),
                ),
          prefixIcon: Icon(Icons.search_sharp,color: KColor.appBase,size: 35),
          contentPadding: const EdgeInsets.symmetric(horizontal: 12.0),
          border: const OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(8.0),
            ),
            borderSide: BorderSide.none,
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              color: Colors.transparent,
              width: 1.0,
            ),
            borderRadius: BorderRadius.circular(12.0),
          ),
          filled: true,
          fillColor: KColor.white,
          floatingLabelBehavior: FloatingLabelBehavior.always,
        ),
      ),
    );
  }
}
