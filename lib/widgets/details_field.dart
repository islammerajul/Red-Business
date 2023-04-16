import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:red_business247/utils/const.dart';

class DetailsField extends StatelessWidget {
  DetailsField({
    Key? key,
    this.title,
    this.value,
  }) : super(key: key);
  String? title;
  String? value;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 2,
          child: Text(
            title!,
            style: keywordTextStyle.copyWith(
                fontSize: 18, fontWeight: FontWeight.w600),
          ),
        ),
        SizedBox(
          width: 25,
        ),
        Expanded(
          flex: 3,
          child: AutoSizeText(
            value!,
            style: keywordTextStyle.copyWith(
                fontSize: 18, fontWeight: FontWeight.w400),
          ),
        )
      ],
    );
  }
}
