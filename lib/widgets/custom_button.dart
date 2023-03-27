import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  CustomButton(
      {required this.onTap,
      this.buttonColor,
      this.borderRadius,
      this.myTextStyle,
      required this.buttonText});
  VoidCallback onTap;
  Color? buttonColor;
  double? borderRadius;
  String? buttonText;
  TextStyle? myTextStyle;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 50,
        width: double.infinity,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(borderRadius ?? 8),
            color: buttonColor ?? Color(0xffff6b6b)),
        child: Center(
          child: Text(
            buttonText!,
            style: myTextStyle,
          ),
        ),
      ),
    );
  }
}
