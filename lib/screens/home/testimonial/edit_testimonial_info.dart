import 'package:flutter/material.dart';
import 'package:red_business247/utils/const.dart';
import 'package:red_business247/widgets/custom_text_form_field.dart';

class EditTestimonialInfo extends StatefulWidget {
  const EditTestimonialInfo({Key? key}) : super(key: key);

  @override
  State<EditTestimonialInfo> createState() => _EditTestimonialInfoState();
}

class _EditTestimonialInfoState extends State<EditTestimonialInfo> {
  final GlobalKey<FormState> _key = GlobalKey<FormState>();

  TextEditingController _nameController = TextEditingController();
  TextEditingController _occupationController = TextEditingController();
  TextEditingController _feedbackController = TextEditingController();
  TextEditingController _serialController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: SafeArea(
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
                    ElevatedButton(
                        onPressed: () {
                          if (_key.currentState!.validate()) {
                            _key.currentState!.save();
                            print("form submitted.");
                            Navigator.pop(context);
                          }
                        },
                        child: Text("Submit")),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    ));
  }
}
