import 'package:flutter/material.dart';
import 'package:red_business247/screens/shop_management_screens/add_item/add_item_screen.dart';
import 'package:red_business247/utils/const.dart';
import 'package:red_business247/widgets/item_type.dart';

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
        height: double.infinity,
        width: double.infinity,
        child: GridView.count(
          //scrollDirection: Axis.vertical,
          crossAxisCount: 2,
          children: [
            ItemType(
              title: 'Digital Product',
              count: 'Total: 1 items',
              color: Colors.green[400],
              img: Icon(Icons.tv_outlined, size: 50.0, color: Colors.white),
              onTap: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => AddItemScreen()));
              },
            ),
            ItemType(
              title: 'Physical Product',
              count: 'Total: 14 items',
              color: Color(0xffffad46),
              img: Image.asset("assets/icons/gift_box.png",
                  width: 50, height: 50, color: Colors.white),
              onTap: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => AddItemScreen()));
              },
            )
          ],
        ),
      ),
    );
  }
}
