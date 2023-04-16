import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:red_business247/models/item_model.dart';
import 'package:red_business247/utils/const.dart';

class DemoScreen extends StatefulWidget {
  DemoScreen({Key? key}) : super(key: key);

  final details_list = ItemModel.items();

  @override
  State<DemoScreen> createState() => _DemoScreenState();
}

class _DemoScreenState extends State<DemoScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(itemBuilder: (BuildContext context, int index) {
        var details = widget.details_list[index];
        return Column(
          children: [
            Image.asset(
              "${details.img}",
              height: 300,
              width: double.infinity,
              fit: BoxFit.fill,
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              "${details.title}",
              style: keywordTextStyle.copyWith(fontSize: 20),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.star,
                  color: Colors.yellowAccent,
                ),
                Icon(
                  Icons.star,
                  color: Colors.yellowAccent,
                ),
                Icon(
                  Icons.star,
                  color: Colors.yellowAccent,
                ),
                Icon(
                  Icons.star,
                  color: Colors.yellowAccent,
                ),
                Icon(
                  Icons.star,
                  color: Colors.yellowAccent,
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "65,500.00 taka Save 50% off",
              style: keywordTextStyle.copyWith(fontSize: 16),
            ),
            SizedBox(
              height: 10,
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Text(
                  "Description",
                  style: keywordTextStyle.copyWith(
                      fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Divider(
              thickness: 3,
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: AutoSizeText(
                "The iPhone 12 Pro features a 6.1-inch display (a bit bigger than the 5.8 inch on the iPhone 11 Pro) and starts at a price of \$1,000, and arrives in Apple's three signature colors: silver, graphite, and gold, as well as a fourth, brand new color option, a blue model. Storage for the base model is 128GB, and you can also buy a 256GB and a 512GB versions.",
                style: keywordTextStyle.copyWith(fontSize: 16),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Container(
                padding: EdgeInsets.all(15),
                height: 120,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: Colors.blue.withOpacity(0.3),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Capacity : 2815 mAh"),
                    Text("Type : Li-ion, Not user replaceable"),
                    AutoSizeText(
                        "Charging : USB Power Delivery, Qi wireless charging, MagSafe wireless charging"),
                    Text("Max charge speed : Wireless: 15.0W")
                  ],
                ),
              ),
            )
          ],
        );
      }),
    );
  }
}

/*
Column(
children: [
Image.asset(
"assets/images/iphone12pro.jpg",
height: 300,
width: double.infinity,
fit: BoxFit.fill,
),
SizedBox(
height: 30,
),
Text(
"iPhone 12 Pro",
style: keywordTextStyle.copyWith(fontSize: 20),
),
SizedBox(
height: 10,
),
Row(
mainAxisAlignment: MainAxisAlignment.center,
children: [
Icon(
Icons.star,
color: Colors.yellowAccent,
),
Icon(
Icons.star,
color: Colors.yellowAccent,
),
Icon(
Icons.star,
color: Colors.yellowAccent,
),
Icon(
Icons.star,
color: Colors.yellowAccent,
),
Icon(
Icons.star,
color: Colors.yellowAccent,
),
],
),
SizedBox(
height: 10,
),
Text(
"65,500.00 taka Save 50% off",
style: keywordTextStyle.copyWith(fontSize: 16),
),
SizedBox(
height: 10,
),
Align(
alignment: Alignment.topLeft,
child: Text(
"Description",
style: keywordTextStyle.copyWith(
fontSize: 20, fontWeight: FontWeight.bold),
),
),
Divider(
thickness: 3,
),
SizedBox(
height: 10,
),
AutoSizeText(
"The iPhone 12 Pro features a 6.1-inch display (a bit bigger than the 5.8 inch on the iPhone 11 Pro) and starts at a price of \$1,000, and arrives in Apple's three signature colors: silver, graphite, and gold, as well as a fourth, brand new color option, a blue model. Storage for the base model is 128GB, and you can also buy a 256GB and a 512GB versions.",
style: keywordTextStyle.copyWith(fontSize: 16),
),
],
)*/
