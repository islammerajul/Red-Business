import 'package:flutter/material.dart';
import 'package:red_business247/utils/const.dart';

class SelectImage extends StatefulWidget {
  SelectImage({Key? key, this.title}) : super(key: key);

  String? title;

  @override
  State<SelectImage> createState() => _SelectImageState();
}

class _SelectImageState extends State<SelectImage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.title!,
          style: hintTextStyle.copyWith(fontSize: 18),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
          child: Container(
              height: 150,
              width: 120,
              decoration: BoxDecoration(
                border: Border.all(width: 0.5),
                borderRadius: BorderRadius.circular(5),
              ),
              child: Center(
                child: Image.asset(
                  "assets/icons/No_Image.png",
                  fit: BoxFit.fill,
                ),
              )),
        ),
        SizedBox(
          height: 10,
        ),
        Container(
          height: 60,
          width: double.infinity,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(6),
              border: Border.all(width: 0.5)),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: InkWell(
                  onTap: () {},
                  child: Container(
                    height: 50,
                    width: 150,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(6),
                        border: Border.all(width: 0.1),
                        color: Colors.grey[200]),
                    child: Center(
                      child: Text("Choose File",
                          style: hintTextStyle.copyWith(fontSize: 16)),
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 15,
              ),
              Text(
                "No file chosen",
                style: hintTextStyle.copyWith(fontSize: 16),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
