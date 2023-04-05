import 'package:flutter/material.dart';
import 'package:red_business247/utils/const.dart';

class CustomTextField extends StatelessWidget {
  CustomTextField(
      {Key? key, this.title, this.hintText, this.hintStyle, this.maxlines})
      : super(key: key);
  String? title, hintText;
  TextStyle? hintStyle;
  int? maxlines;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title!,
          style: keywordTextStyle,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: TextField(
            decoration: InputDecoration(
                hintText: hintText,
                hintStyle: hintStyle,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(6),
                )),
            maxLines: maxlines,
          ),
        )
      ],
    );
  }
}
