import 'package:flutter/material.dart';
import 'package:shopmart/general/utils/colors.dart';

// ignore: must_be_immutable
class MaterialTextField extends StatelessWidget {
  final String label;
  final Icon icon;

  MaterialTextField({
    super.key,
    required this.label,
    required this.controller,
    required this.icon,
  });

  TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 56,
      child: TextFormField(
        validator: (value) {
          if (value == null || value.isEmpty) {
            return 'Please fillup';
          }
          return null;
        },
        controller: controller,
        decoration: InputDecoration(
          prefixIcon: icon,
          hintText: label,
          contentPadding:
              const EdgeInsets.symmetric(vertical: 20.0, horizontal: 12.0),
          border: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(12.0)),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: KColor.textFieldBorder, width: 1.0),
            borderRadius: const BorderRadius.all(Radius.circular(12.0)),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide:
                BorderSide(color: KColor.textFieldFocusBorder, width: 2.0),
            borderRadius: const BorderRadius.all(Radius.circular(12.0)),
          ),
        ),
      ),
    );
  }
}
