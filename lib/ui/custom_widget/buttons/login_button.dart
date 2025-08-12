import 'package:flutter/material.dart';
import 'package:myapp/core/costant/colors.dart';
import 'package:myapp/core/costant/text_style.dart';

// ignore: must_be_immutable
class LoginButton extends StatelessWidget {
  String? text;
  Color? boxColor;
  Color? textColor;
  double? borderRadius;

  LoginButton({
    super.key,
    this.text,
    this.boxColor,
    this.textColor,
    this.borderRadius,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 45,

      margin: EdgeInsets.symmetric(vertical: 20),

      decoration: BoxDecoration(
        color: boxColor ?? blackColor,
        borderRadius: BorderRadius.circular(borderRadius ?? 8),
      ),
      child: Text(
        text ?? "",
        style: style16R.copyWith(
          color: textColor ?? whiteColor,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}
