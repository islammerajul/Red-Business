import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:red_business247/screens/payment_gateways/edit_offline_gateways.dart';
import 'package:red_business247/screens/shop_management_screens/category_item_edit.dart';
import 'package:red_business247/utils/const.dart';
import 'package:red_business247/widgets/custom_text_field.dart';

class SlidableOfflineGateways extends StatefulWidget {
  SlidableOfflineGateways({
    Key? key,
    this.title,
    this.leading,
  }) : super(key: key);
  String? title;

  Widget? leading;

  @override
  State<SlidableOfflineGateways> createState() =>
      _SlidableOfflineGatewaysState();
}

class _SlidableOfflineGatewaysState extends State<SlidableOfflineGateways> {
  @override
  Widget build(BuildContext context) {
    return Slidable(
      child: Container(
        color: Colors.grey[200],
        child: ListTile(
          leading: widget.leading,
          title: Text(widget.title!),
          trailing: SizedBox(
            width: 110,
            child: DropdownButtonFormField(
                decoration: InputDecoration(
                    fillColor: Colors.green,
                    filled: true,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(6),
                    )),
                value: selected_todo,
                items: todo
                    .map((item) =>
                        DropdownMenuItem(value: item, child: Text(item)))
                    .toList(),
                onChanged: (item) {
                  setState(() {
                    selected_todo = item;
                  });
                }),
          ),
        ),
      ),
      startActionPane: ActionPane(motion: StretchMotion(), children: [
        SlidableAction(
          onPressed: ((context) {
            //Edit
            // Navigator.of(context).push(
            //     MaterialPageRoute(builder: (context) => EditOfflineGateways()));
            showModalBottomSheet(
                backgroundColor: Colors.red.withOpacity(0.5),
                context: context,
                builder: (BuildContext context) {
                  return Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(6),
                            topRight: Radius.circular(6)),
                      ),
                      child: SingleChildScrollView(
                        scrollDirection: Axis.vertical,
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Edit Gateway",
                                  style: keywordTextStyle.copyWith(
                                      fontSize: 24, color: Colors.white70),
                                ),
                                IconButton(
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                    icon: Icon(Icons.close,
                                        color: Colors.white70))
                              ],
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Column(
                              children: [
                                CustomTextField(
                                  title: 'Name \*\*',
                                  textStyle: keywordTextStyle.copyWith(
                                      fontSize: 18, color: Colors.white70),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                CustomTextField(
                                  title: 'Short Description',
                                  textStyle: keywordTextStyle.copyWith(
                                      fontSize: 18, color: Colors.white70),
                                  maxlines: 3,
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                CustomTextField(
                                  title: 'Instructions',
                                  textStyle: keywordTextStyle.copyWith(
                                      fontSize: 18, color: Colors.white70),
                                  maxlines: 5,
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  );
                });
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
    ;
  }
}
