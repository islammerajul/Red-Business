import 'package:flutter/material.dart';

import '../utils/const.dart';

class ShowItem extends StatefulWidget {
  ShowItem({Key? key, this.onTap, this.title, this.img}) : super(key: key);
  dynamic onTap;
  String? img;
  String? title;

  @override
  State<ShowItem> createState() => _ShowItemState();
}

class _ShowItemState extends State<ShowItem> {
  @override
  Widget build(BuildContext context) {
    return PhysicalModel(
      color: Colors.white,
      elevation: 15,
      shadowColor: Colors.blue,
      borderRadius: BorderRadius.circular(20),
      child: InkWell(
        onTap: widget.onTap,
        child: Container(
          padding: EdgeInsets.all(8),
          height: 170,
          width: 170,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                widget.img!,
                height: 110,
                width: 110,
                fit: BoxFit.cover,
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                widget.title!,
                style: hintTextStyle.copyWith(
                  fontSize: 16,
                  color: Colors.black,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
