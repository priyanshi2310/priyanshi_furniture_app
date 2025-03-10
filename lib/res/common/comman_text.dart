import 'package:flutter/material.dart';

class CommanText extends StatelessWidget {
  final String text;
  final double? weight;
  final Color? color;
  final FontWeight? fontWeight;
  final Decoration? decoration;

  const CommanText(
      {super.key,
      required this.text,
      this.weight,
      this.color,
      this.fontWeight,
      this.decoration});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: color ?? const Color(0xff242424),
        fontSize: weight ?? 20,
        fontFamily: 'Poppins',
        fontWeight: fontWeight ?? FontWeight.normal,
      ),
    );
  }
}

class CommanText1 extends StatelessWidget {
  final String text;
  final double? weight;
  final Color? color;
  final FontWeight? fontWeight;
  final Decoration? decoration;

  const CommanText1(
      {super.key,
      required this.text,
      this.weight,
      this.color,
      this.fontWeight,
      this.decoration});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: color ?? const Color(0xff242424),
        fontSize: weight ?? 20,
        fontFamily: 'Inter',
        fontWeight: fontWeight ?? FontWeight.normal,
      ),
    );
  }
}
