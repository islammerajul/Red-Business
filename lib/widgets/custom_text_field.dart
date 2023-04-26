import 'package:flutter/material.dart';
import 'package:red_business247/utils/const.dart';

class CustomTextField extends StatelessWidget {
  CustomTextField(
      {Key? key,
      this.title,
      this.hintText,
      this.hintStyle,
      this.maxlines,
      this.sufffixIcon,
      this.labelText,
      this.onTap,
      this.textStyle,
      this.controller,
      this.fillColor})
      : super(key: key);
  String? title, hintText, labelText;
  TextStyle? hintStyle, textStyle;
  int? maxlines;
  dynamic onTap;
  Widget? sufffixIcon;
  Color? fillColor = Colors.grey[200];
  TextEditingController? controller;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title!,
          style: textStyle,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: TextField(
            controller: controller,
            onTap: onTap,
            decoration: InputDecoration(
                filled: true,
                fillColor: fillColor,
                labelText: labelText,
                suffixIcon: sufffixIcon,
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
