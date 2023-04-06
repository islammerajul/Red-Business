import 'dart:io';

import 'package:flutter/material.dart';

import 'package:red_business247/utils/const.dart';
import 'package:red_business247/widgets/custom_button.dart';
import 'package:red_business247/widgets/profile_info.dart';

enum ImageSourceType { gallery, camera }

class EditProfileScren extends StatefulWidget {
  const EditProfileScren({Key? key}) : super(key: key);

  @override
  State<EditProfileScren> createState() => _EditProfileScrenState();
}

class _EditProfileScrenState extends State<EditProfileScren> {
  TextEditingController _firstNameController = TextEditingController();

  TextEditingController _lastNameController = TextEditingController();

  TextEditingController _companyNameController = TextEditingController();

  TextEditingController _usernameController = TextEditingController();

  TextEditingController _phoneController = TextEditingController();

  TextEditingController _addressController = TextEditingController();

  TextEditingController _cityController = TextEditingController();

  TextEditingController _stateController = TextEditingController();

  TextEditingController _countryController = TextEditingController();

  //File? file;
  //ImagePicker imagePicker = ImagePicker();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Update your profile"),
        centerTitle: true,
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 18),
                child: Text(
                  "Profile Image \*\*",
                  style: keywordTextStyle,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 18),
                child: Align(
                  alignment: Alignment.center,
                  child: Container(
                    height: 200,
                    width: 200,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(6),
                        border: Border.all(width: 1)),
                    child: Center(
                      child: Icon(
                        Icons.image,
                        size: 200,
                        color: Color(0xffdc2623),
                      ),
                    ),
                  ),
                ),
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
              ProfileInfo(
                fieldName: "First Name \*\*",
                controller: _firstNameController,
                keyboardType: TextInputType.name,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 18),
                child: ProfileInfo(
                  fieldName: "Last Name \*\*",
                  controller: _lastNameController,
                  keyboardType: TextInputType.name,
                ),
              ),
              ProfileInfo(
                fieldName: "Company Name \*\*",
                controller: _lastNameController,
                keyboardType: TextInputType.text,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 18),
                child: ProfileInfo(
                  fieldName: "Username \*\*",
                  controller: _usernameController,
                  keyboardType: TextInputType.name,
                ),
              ),
              ProfileInfo(
                fieldName: "Phone \*\*",
                controller: _phoneController,
                keyboardType: TextInputType.phone,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 18),
                child: ProfileInfo(
                  fieldName: "Address \*\*",
                  controller: _addressController,
                  keyboardType: TextInputType.streetAddress,
                  maxLine: 5,
                ),
              ),
              ProfileInfo(
                fieldName: "City \*\*",
                controller: _cityController,
                keyboardType: TextInputType.text,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 18),
                child: ProfileInfo(
                  fieldName: "State \*\*",
                  controller: _stateController,
                  keyboardType: TextInputType.text,
                ),
              ),
              ProfileInfo(
                fieldName: "Country \*\*",
                controller: _countryController,
                keyboardType: TextInputType.text,
              ),
              SizedBox(
                height: 50,
              ),
              CustomButton(
                  onTap: () {},
                  buttonText: 'Update',
                  myTextStyle: myTextStyle.copyWith(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
