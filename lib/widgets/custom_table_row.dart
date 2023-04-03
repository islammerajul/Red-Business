import 'package:flutter/material.dart';
import 'package:red_business247/utils/const.dart';
import 'package:red_business247/widgets/edit&delete_button.dart';

class CustomTableRow extends StatefulWidget {
  CustomTableRow({Key? key, this.value, this.onChanged}) : super(key: key);
  bool? value;
  dynamic onChanged;
  String? name;
  String? img;
  String? status;

  @override
  State<CustomTableRow> createState() => _CustomTableRowState();
}

class _CustomTableRowState extends State<CustomTableRow> {
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Column(children: [
        Padding(
          padding: const EdgeInsets.only(top: 8, right: 8, bottom: 8),
          child: Checkbox(value: widget.value, onChanged: widget.onChanged),
        )
      ]),
      Column(children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text('Headphone & Speaker',
              style: keywordTextStyle.copyWith(fontSize: 15)),
        )
      ]),
      Column(children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image.asset(
            widget.img!,
            height: 30,
            width: 30,
            fit: BoxFit.fill,
            color: Color(0xffdc2623),
          ),
        )
      ]),
      Column(children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10), color: Colors.green),
              child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: Text(widget.status!),
              )),
        )
      ]),
      Column(children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              EditDeleteButton(
                onTap: () {},
                icon: Icons.edit,
                text: 'Edit',
              ),
              EditDeleteButton(
                onTap: () {},
                icon: Icons.delete_outline,
                text: 'Delete',
              )
            ],
          ),
        ),
      ]),
    ]);
  }
}
