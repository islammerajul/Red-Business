import 'package:flutter/material.dart';
import 'package:red_business247/utils/const.dart';

class ProfileInfo extends StatelessWidget {
  ProfileInfo(
      {Key? key,
      this.controller,
      this.fieldName,
      this.keyboardType,
      this.maxLine})
      : super(key: key);
  String? fieldName;
  dynamic controller;
  TextInputType? keyboardType;
  int? maxLine;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8),
          child: Text(
            fieldName!,
            style: keywordTextStyle,
          ),
        ),
        TextField(
          maxLines: maxLine,
          controller: controller,
          keyboardType: keyboardType,
          decoration: InputDecoration(
              border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(6),
          )),
        )
      ],
    );
  }
}
