import 'package:flutter/material.dart';
import 'package:red_business247/utils/const.dart';

class ActiveDeactiveButton extends StatefulWidget {
  ActiveDeactiveButton({Key? key, this.text, this.onTap}) : super(key: key);
  String? text;
  dynamic onTap;

  @override
  State<ActiveDeactiveButton> createState() => _ActiveDeactiveButtonState();
}

class _ActiveDeactiveButtonState extends State<ActiveDeactiveButton> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.onTap,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 55),
        height: 50,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6),
          border: Border.all(width: 0.2),
          // color:
          //     widget.onTap == () {} ? Colors.greenAccent : Colors.transparent,
        ),
        child: Center(
            child: Text(
          widget.text!,
          style: keywordTextStyle,
        )),
      ),
    );
  }
}
