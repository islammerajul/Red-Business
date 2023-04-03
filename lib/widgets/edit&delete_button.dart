import 'package:flutter/material.dart';
import 'package:red_business247/utils/const.dart';

class EditDeleteButton extends StatelessWidget {
  EditDeleteButton({Key? key, this.text, this.icon, this.onTap})
      : super(key: key);
  String? text;
  IconData? icon;
  dynamic onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 5),
        height: 20,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(6),
            border: Border.all(width: 0.5),
            color: text == 'Edit' ? Colors.purple[400] : Color(0xffdc2623)),
        child: Center(
            child: Row(
          children: [
            Icon(
              icon,
              size: 15,
            ),
            Text(
              text!,
              style: keywordTextStyle.copyWith(fontSize: 15),
            ),
          ],
        )),
      ),
    );
  }
}
