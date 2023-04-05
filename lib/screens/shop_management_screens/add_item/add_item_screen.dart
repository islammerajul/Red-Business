import 'package:flutter/material.dart';
import 'package:red_business247/utils/const.dart';

class AddItemScreen extends StatefulWidget {
  const AddItemScreen({Key? key}) : super(key: key);

  @override
  State<AddItemScreen> createState() => _AddItemScreenState();
}

class _AddItemScreenState extends State<AddItemScreen> {
  List<String> type = ['File Upload', 'File Download Link'];
  String? selected_type = 'File Upload';
  List<String> status = ['Select a status', 'Show', 'Hide'];
  String? selected_status = 'Select a status';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back)),
        title: Text("Add Item"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Container(
          height: double.infinity,
          width: double.infinity,
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              //mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Slider Images \*",
                  style: keywordTextStyle,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                      height: 150,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        border: Border.all(width: 0.5),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Center(child: Text("Drop files here to upload"))),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Thumbnail \*",
                  style: keywordTextStyle,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                      height: 150,
                      width: 120,
                      decoration: BoxDecoration(
                        border: Border.all(width: 0.5),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Center(
                        child: Image.asset(
                          "assets/icons/no_image_found.png",
                          fit: BoxFit.fill,
                        ),
                      )),
                ),
                SizedBox(
                  height: 5,
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
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Type \*",
                  style: keywordTextStyle,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: DropdownButtonFormField(
                      decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                      )),
                      value: selected_type,
                      items: type
                          .map((item) =>
                              DropdownMenuItem(value: item, child: Text(item)))
                          .toList(),
                      onChanged: (item) {
                        setState(() {
                          selected_type = item;
                        });
                      }),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Downloadable File \*",
                  style: keywordTextStyle,
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: 60,
                  width: double.infinity,
                  // decoration: BoxDecoration(
                  //     borderRadius: BorderRadius.circular(6),
                  //     border: Border.all(width: 0.5)),
                  child: Row(
                    children: [
                      InkWell(
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
                Text(
                  "Only zip file is allowed.",
                  style: hintTextStyle.copyWith(
                      fontSize: 16, color: Colors.orange),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  height: 500,
                  width: double.infinity,
                  child: GridView.count(
                    scrollDirection: Axis.horizontal,
                    crossAxisCount: 3,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Status \*",
                            style: keywordTextStyle,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          DropdownButtonFormField(
                              decoration: InputDecoration(
                                  enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(5),
                                      borderSide: BorderSide(
                                          width: 1, color: Colors.blue))),
                              value: selected_status,
                              items: status.map((item) {
                                return DropdownMenuItem(
                                    value: item, child: Text(item));
                              }).toList(),
                              onChanged: (item) {
                                setState(() {
                                  selected_status = item;
                                });
                              })
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
