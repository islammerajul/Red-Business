import 'package:flutter/material.dart';
import 'package:red_business247/utils/const.dart';
import 'package:red_business247/widgets/custom_button.dart';
import 'package:red_business247/widgets/custom_text_field.dart';

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
  List<String> category = [
    'Camera & Accessories',
    'Electronics & gadgets',
    'Fashion & Clothings',
    'Headphone & Speaker',
    'Interior & Furniture',
    'SmartWatch',
    'Software & games'
  ];

  String? selected_category = 'Camera & Accessories';
  List<String> subcategory = ['Camera', 'Camera Accessories'];
  String? selected_subcategory;
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
                  padding: const EdgeInsets.symmetric(vertical: 10),
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
                  height: 30,
                ),
                Text(
                  "Thumbnail \*",
                  style: keywordTextStyle,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
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
                SizedBox(
                  height: 30,
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
                  height: 30,
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
                  height: 30,
                ),
                Container(
                  width: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
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
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      CustomTextField(
                        title: 'Current Price ( \$ ) \*',
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      CustomTextField(
                        title: 'Previous Price ( \$ )',
                      ),
                      SizedBox(
                        height: 30,
                      ),
                    ],
                  ),
                ),
                Card(
                  child: Container(
                    padding: EdgeInsets.all(15),
                    child: Column(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Select Category \*",
                              style: keywordTextStyle,
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 10),
                              child: DropdownButtonFormField(
                                  hint: Text("-Selecte category-"),
                                  decoration: InputDecoration(
                                      border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(15),
                                  )),
                                  value: selected_category,
                                  items: category
                                      .map((item) => DropdownMenuItem(
                                          value: item, child: Text(item)))
                                      .toList(),
                                  onChanged: (item) {
                                    setState(() {
                                      selected_category = item ?? "";
                                    });
                                  }),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Select Subcategory \*",
                              style: keywordTextStyle,
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 10),
                              child: DropdownButtonFormField(
                                  hint: Text("-Selecte category-"),
                                  decoration: InputDecoration(
                                      border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(15),
                                  )),
                                  value: selected_subcategory,
                                  items: subcategory
                                      .map((item) => DropdownMenuItem(
                                          value: item, child: Text(item)))
                                      .toList(),
                                  onChanged: (item) {
                                    setState(() {
                                      selected_subcategory = item ?? "";
                                    });
                                  }),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        CustomTextField(
                          title: "Title \*",
                          hintText: 'Enter tags',
                          hintStyle: hintTextStyle,
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        CustomTextField(
                          title: "Summary \*",
                          hintText: 'Enter Summary',
                          hintStyle: hintTextStyle,
                          maxlines: 2,
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        CustomTextField(
                          title: "Description \*",
                          hintText: 'Enter Summary',
                          hintStyle: hintTextStyle,
                          maxlines: 5,
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        CustomTextField(
                          title: "Keywords \*",
                          hintText: 'Enter Keywords',
                          hintStyle: hintTextStyle,
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        CustomTextField(
                          title: "Meta Keyword \*",
                          hintText: 'Enter Meta Keyword',
                          hintStyle: hintTextStyle,
                          maxlines: 5,
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 100),
                  child: CustomButton(
                      onTap: () {},
                      buttonText: 'Submit',
                      myTextStyle: myTextStyle.copyWith(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                      )),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
