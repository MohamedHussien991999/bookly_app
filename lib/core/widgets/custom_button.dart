import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key,
      required this.text,
      required this.onPressed,
      required this.backgroundColor,
      this.borderRadius,
      required this.textColor,  this.fontSize});

  final String text;
  final void Function()? onPressed;
  final Color backgroundColor;
  final Color textColor;
  final BorderRadiusGeometry? borderRadius;
  final double? fontSize ;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      style: TextButton.styleFrom(
        backgroundColor: backgroundColor,
        shape: RoundedRectangleBorder(
          borderRadius: borderRadius ?? BorderRadius.circular(12.0),
        ),
      ),
      child: Text(text,
          style: Styles.textStyle18
              .copyWith(color: textColor, fontWeight: FontWeight.w900, fontSize: fontSize)),
    );
  }
}
