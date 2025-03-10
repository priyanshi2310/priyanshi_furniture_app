import 'package:flutter/material.dart';

class AppButton extends StatelessWidget {
  final String text;
  final VoidCallback? onPressed;
  final double? height;
  final double? width;
  final Color? color;
  final FontWeight? textweight;
  final double? fontsize;
  final double? radius;
  final Icon? icon;
  final Color? backgroundcolor;
  final Decoration? decoration;
  const AppButton({
    super.key,
    required this.text,
    this.onPressed,
    this.height,
    this.width,
    this.color,
    this.textweight,
    this.fontsize,
    this.radius,
    this.icon,
    this.backgroundcolor,
    this.decoration,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        fixedSize: Size(width ?? double.infinity, height ?? 54),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
        backgroundColor: backgroundcolor,
        textStyle: TextStyle(
          fontSize: fontsize ?? 20,
          fontWeight: textweight ?? FontWeight.normal,
        ),
      ),
      child: (Text(text)
      ),
    );
  }
}
