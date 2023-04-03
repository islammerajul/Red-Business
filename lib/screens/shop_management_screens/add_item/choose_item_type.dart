import 'package:flutter/material.dart';
import 'package:red_business247/utils/const.dart';

class ChooseItemType extends StatefulWidget {
  const ChooseItemType({Key? key}) : super(key: key);

  @override
  State<ChooseItemType> createState() => _ChooseItemTypeState();
}

class _ChooseItemTypeState extends State<ChooseItemType> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Choose Item Type"),
        centerTitle: true,
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: Container(
        width: double.infinity,
        child: Column(
          //crossAxisAlignment: CrossAxisAlignment.center,

          children: [
            Column(
              //mainAxisAlignment: MainAxisAlignment.center,
              //crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: 70,
                  width: 70,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.green,
                  ),
                  child: Image.asset(
                    "assets/icons/monitor.jpg",
                    fit: BoxFit.cover,
                  ),
                ),
                Text(
                  "DIGITAL PRODUCT",
                  style: keywordTextStyle.copyWith(fontSize: 20),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
