import 'package:flutter/material.dart';
import 'package:red_business247/utils/const.dart';

class CustomTextField extends StatelessWidget {
  CustomTextField({Key? key, this.title, this.hintText, this.hintStyle})
      : super(key: key);
  String? title, hintText;
  TextStyle? hintStyle;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title!,
          style: keywordTextStyle,
        ),
        TextField(
          decoration: InputDecoration(
            hintText: hintText,
            hintStyle: hintStyle,
          ),
        )
      ],
    );
  }
}
