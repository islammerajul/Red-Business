import 'package:flutter/material.dart';
import 'package:red_business247/utils/const.dart';

class AccountBox extends StatelessWidget {
  AccountBox({Key? key, this.title, this.icon}) : super(key: key);
  String? title;
  IconData? icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90,
      width: 110,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6), color: Colors.white),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon,
            size: 30,
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            title!,
            style: keywordTextStyle.copyWith(fontSize: 12),
          ),
        ],
      ),
    );
  }
}
