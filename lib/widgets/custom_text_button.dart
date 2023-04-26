import 'package:flutter/material.dart';

class CustomTextButton extends StatelessWidget {
  CustomTextButton(
      {Key? key,
      this.buttonColor,
      required this.onTap,
      this.myTextStyle,
      this.borderRadius,
      this.buttonText})
      : super(key: key);
  VoidCallback onTap;
  Color? buttonColor;
  double? borderRadius;
  String? buttonText;
  TextStyle? myTextStyle;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Card(
        elevation: 10,
        child: Container(
          height: 50,
          width: MediaQuery.of(context).size.width * 0.7,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(borderRadius ?? 8),
              color: buttonColor),
          child: Center(
            child: Text(
              buttonText!,
              style: myTextStyle,
            ),
          ),
        ),
      ),
    );
  }
}
