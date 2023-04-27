import 'package:flutter/material.dart';
import 'package:red_business247/utils/const.dart';
import 'package:red_business247/widgets/custom_button.dart';
import 'package:red_business247/widgets/custom_text_field.dart';
import 'package:red_business247/widgets/custom_text_form_field.dart';

class AddTestimonial extends StatefulWidget {
  const AddTestimonial({Key? key}) : super(key: key);

  @override
  State<AddTestimonial> createState() => _AddTestimonialState();
}

class _AddTestimonialState extends State<AddTestimonial> {
  List<String> item = ['Arabic', 'English'];
  String? _selectedItem = 'Arabic';
  final GlobalKey<FormState> _key = GlobalKey<FormState>();
  TextEditingController _languageController = TextEditingController();
  TextEditingController _nameController = TextEditingController();
  TextEditingController _occupationController = TextEditingController();
  TextEditingController _feedbackController = TextEditingController();
  TextEditingController _serialController = TextEditingController();
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
        title: Text("Add a Testimonial"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Form(
            key: _key,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Image \*",
                  style: hintTextStyle.copyWith(fontSize: 18),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
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
                SizedBox(
                  height: 30,
                ),
                Text(
                  "Language \*\*",
                  style: hintTextStyle.copyWith(fontSize: 18),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: DropdownButtonFormField(
                      decoration: InputDecoration(
                        hintText: 'Select a language',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(6),
                          //borderSide: BorderSide.none
                        ),
                      ),
                      value: _selectedItem,
                      items: item.map((String e) {
                        return DropdownMenuItem<String>(
                          value: e,
                          child: Text(e),
                        );
                      }).toList(),
                      onChanged: (val) {
                        setState(() {
                          _selectedItem = val;
                        });
                      }),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Name \*\*",
                  style: hintTextStyle.copyWith(fontSize: 18),
                ),
                CustomTextFormField(
                  controller: _nameController,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Field is required';
                    }
                    return null;
                  },
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Occupation",
                  style: hintTextStyle.copyWith(fontSize: 18),
                ),
                CustomTextFormField(
                  controller: _occupationController,
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Feedback \*\*",
                  style: hintTextStyle.copyWith(fontSize: 18),
                ),
                CustomTextFormField(
                  controller: _feedbackController,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Field is required';
                    }
                    return null;
                  },
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Serial Number \*\*",
                  style: hintTextStyle.copyWith(fontSize: 18),
                ),
                CustomTextFormField(
                  controller: _serialController,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Field is required';
                    }
                    return null;
                  },
                ),
                SizedBox(
                  height: 50,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    ElevatedButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: Text("Close")),
                    SizedBox(
                      width: 20,
                    ),
                    // Padding(
                    //   padding: const EdgeInsets.symmetric(horizontal: 100),
                    //   child: CustomButton(onTap: () {}, buttonText: "Close"),
                    // ),
                    ElevatedButton(
                        onPressed: () {
                          if (_key.currentState!.validate()) {
                            _key.currentState!.save();
                            print("form submitted.");
                            Navigator.pop(context);
                          }
                        },
                        child: Text("Submit")),
                    // Padding(
                    //   padding: const EdgeInsets.symmetric(horizontal: 100),
                    //   child: CustomButton(
                    //       onTap: () {
                    //         if (_key.currentState!.validate()) {
                    //           _key.currentState!.save();
                    //           print("form submitted.");
                    //         }
                    //       },
                    //       buttonText: 'Update',
                    //       myTextStyle: myTextStyle.copyWith(
                    //         fontSize: 20,
                    //         fontWeight: FontWeight.w600,
                    //         color: Colors.white,
                    //       )),
                    // ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
    ;
  }
}
