import 'package:flutter/material.dart';
import 'package:red_business247/utils/const.dart';
import 'package:red_business247/widgets/custom_button.dart';
import 'package:red_business247/widgets/profile_info.dart';

class ItemEdit extends StatefulWidget {
  const ItemEdit({Key? key}) : super(key: key);

  @override
  State<ItemEdit> createState() => _ItemEditState();
}

class _ItemEditState extends State<ItemEdit> {
  TextEditingController _nameController = TextEditingController();
  TextEditingController _statusController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Edit Category"),
          centerTitle: true,
          backgroundColor: Theme.of(context).primaryColor,
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Container(
            height: double.infinity,
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Category Image \*\*",
                  style: keywordTextStyle,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                      border: Border.all(width: 0.5),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Icon(
                      Icons.image,
                      color: Color(0xffdc2623),
                      size: 30,
                    ),
                  ),
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
                            height: 40,
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
                SizedBox(
                  height: 10,
                ),
                ProfileInfo(
                  fieldName: "Name \*\*",
                  controller: _nameController,
                ),
                SizedBox(
                  height: 10,
                ),
                ProfileInfo(
                  fieldName: "Name \*\*",
                  controller: _statusController,
                ),
                SizedBox(
                  height: 50,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 100),
                  child: CustomButton(
                      onTap: () {},
                      buttonText: 'Update',
                      myTextStyle: myTextStyle.copyWith(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                      )),
                )
              ],
            ),
          ),
        ));
  }
}
