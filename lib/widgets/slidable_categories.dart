import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:red_business247/screens/shop_management_screens/category_item_delete.dart';
import 'package:red_business247/screens/shop_management_screens/category_item_edit.dart';

class SlidableCategoryItem extends StatefulWidget {
  SlidableCategoryItem(
      {Key? key, this.img, this.title, this.subtitle, this.trailing})
      : super(key: key);
  String? title;
  String? subtitle;
  String? img;
  String? trailing;

  @override
  State<SlidableCategoryItem> createState() => _SlidableCategoryItemState();
}

class _SlidableCategoryItemState extends State<SlidableCategoryItem> {
  @override
  Widget build(BuildContext context) {
    return Slidable(
      child: Container(
        color: Colors.grey[200],
        child: ListTile(
          leading: Image.asset(widget.img!),
          title: Text(widget.title!),
          subtitle: Text(widget.subtitle!),
          trailing: Container(
              padding: EdgeInsets.all(5),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.greenAccent),
              child: Text(widget.trailing!)),
        ),
      ),
      startActionPane: ActionPane(motion: StretchMotion(), children: [
        SlidableAction(
          onPressed: ((context) {
            //Edit
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => ItemEdit()));
          }),
          icon: Icons.edit,
          backgroundColor: Colors.green,
        )
      ]),
      endActionPane: ActionPane(motion: StretchMotion(), children: [
        SlidableAction(
          onPressed: ((context) {
            //Delete
            showDialog(
                context: context,
                builder: (context) {
                  return Container(
                    child: AlertDialog(
                      title: Text("Are you sure?"),
                      content: Text("You won't be able to revert this!"),
                      actions: [
                        MaterialButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          color: Colors.greenAccent,
                          child: Text("Yes, delete it!"),
                        ),
                        MaterialButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          color: Colors.redAccent,
                          child: Text("Cancel"),
                        ),
                      ],
                    ),
                  );
                });
          }),
          icon: Icons.delete_outline,
          backgroundColor: Colors.red,
        ),
      ]),
    );
  }
}
