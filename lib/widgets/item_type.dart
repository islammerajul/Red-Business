import 'package:flutter/material.dart';
import 'package:red_business247/utils/const.dart';

class ItemType extends StatefulWidget {
  ItemType({Key? key, this.title, this.count, this.img, this.color, this.onTap})
      : super(key: key);
  String? title;
  String? count;
  Widget? img;
  Color? color;
  dynamic onTap;

  @override
  State<ItemType> createState() => _ItemTypeState();
}

class _ItemTypeState extends State<ItemType> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.onTap,
      child: Card(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Card(
                child: Container(
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6),
                      color: widget.color,
                    ),
                    child: widget.img!)),
            Text(
              widget.title!,
              style: keywordTextStyle.copyWith(fontSize: 20),
            ),
            Text(
              widget.count!,
            ),
          ],
        ),
      ),
    );
  }
}
