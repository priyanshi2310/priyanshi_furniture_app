import 'package:flutter/material.dart';


class CommanTextField extends StatelessWidget {
  final String? hintText;
  final Decoration? decoration;
  final Icon? prefixicon;
  final Icon? suffixicon;
  final double? weight;
  final Color? color;
  final FontWeight? fontWeight;
  final String? labetlText;
  final Color? labelcolor;
  const CommanTextField(
      {super.key,
      this.hintText,
      this.decoration,
      this.prefixicon,
      this.suffixicon,
      this.weight,
      this.color,
      this.fontWeight,
      this.labetlText,
      this.labelcolor, });

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        border: InputBorder.none,
        hintText: hintText,
        labelStyle: TextStyle(
          color: color ?? const Color(0xff909090),
        ),
        suffixIcon: suffixicon,
        prefixIcon: prefixicon,
        labelText: labetlText,
        hintStyle: TextStyle(
          color: color ?? const Color(0xff242424),
          fontSize: weight ?? 12,
          fontWeight: fontWeight ?? FontWeight.w400,
        ),
      ),
    );
  }
}
