import 'package:flutter/material.dart';
import 'package:red_business247/utils/const.dart';

class CustomLargeBox extends StatelessWidget {
  CustomLargeBox({Key? key, this.title, this.cash}) : super(key: key);
  String? title;
  String? cash;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 1,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        height: 100,
        width: 353,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(3), color: Colors.white),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              cash!,
              style: hintTextStyle.copyWith(
                fontSize: 18,
                fontWeight: FontWeight.w900,
              ),
            ),
            Text(
              title!,
              style: hintTextStyle.copyWith(
                fontSize: 18,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
