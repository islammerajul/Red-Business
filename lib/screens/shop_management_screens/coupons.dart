import 'package:flutter/material.dart';
import 'package:red_business247/utils/const.dart';

class Coupons extends StatelessWidget {
  const Coupons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Coupons"),
        centerTitle: true,
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: Center(
        child: Text(
          "NO COUPON FOUND",
          style: keywordTextStyle.copyWith(fontSize: 24),
        ),
      ),
    );
  }
}
