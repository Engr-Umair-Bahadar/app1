import 'package:flutter/material.dart';
import 'package:myapp/core/costant/colors.dart';
import 'package:myapp/core/costant/strings.dart';

import '../../../core/costant/text_style.dart';

// ignore: must_be_immutable
class ContinueWithGoogle extends StatelessWidget {
  String? text;
  Color? boxColor;
  Color? textColor;
  double? borderRadius;

  ContinueWithGoogle({
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
        borderRadius: BorderRadius.circular(8),
        border: BoxBorder.all(width: 1),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset("$iconAssets/google-icon.png", height: 19, width: 19),

          Text(
            text ?? "",
            style: style16R.copyWith(color: textColor ?? whiteColor),
          ),
        ],
      ),
    );
  }
}
