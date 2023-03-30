import 'package:flutter/material.dart';
import 'package:red_business247/utils/const.dart';

class CUstomBox extends StatelessWidget {
  CUstomBox({
    Key? key,
    this.subtitle,
    this.titleorIcon,
  }) : super(key: key);
  dynamic titleorIcon;
  String? subtitle = "";

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 1,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        // height: 100,
        // width: 170,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10), color: Colors.white),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            titleorIcon is String
                ? Text(
                    titleorIcon!,
                    style: hintTextStyle.copyWith(color: Colors.grey),
                  )
                : Icon(
                    titleorIcon as IconData,
                    size: 40,
                  ),
            Text(
              subtitle!,
              style: hintTextStyle.copyWith(
                fontSize: 18,
                fontWeight: FontWeight.w900,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
