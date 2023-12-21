import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:red_business247/utils/const.dart';
import 'package:red_business247/widgets/custom_button.dart';
import 'package:red_business247/widgets/custom_image_picker_for_profile.dart';
import 'package:red_business247/widgets/profile_info.dart';

class ItemEdit extends StatefulWidget {
  const ItemEdit({Key? key}) : super(key: key);

  @override
  State<ItemEdit> createState() => _ItemEditState();
}

class _ItemEditState extends State<ItemEdit> {
  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();
  TextEditingController _nameController = TextEditingController();
  TextEditingController _statusController = TextEditingController();

  final TextEditingController _imagePathController = TextEditingController();

  File? imageFile;
  String? selected_img;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
  }

  Future<void> _showSimpleDialog() async {
    await showDialog<void>(
        context: context,
        barrierDismissible: false,
        builder: (BuildContext context) {
          return SimpleDialog(
            // <-- SEE HERE
            title: const Text('Select a way for upload'),
            children: <Widget>[
              SimpleDialogOption(
                onPressed: () {
                  _getFromGallery();
                  Navigator.of(context).pop();
                },
                child: const Text('Gallery'),
              ),
              SimpleDialogOption(
                onPressed: () {
                  _getFromCamera();
                  Navigator.of(context).pop();
                },
                child: const Text('Camera'),
              ),
            ],
          );
        });
  }

  _getFromGallery() async {
    // PickedFile? pickedFile = await ImagePicker()
    //     .getImage(source: ImageSource.gallery, maxWidth: 1800, maxHeight: 1800);
    final imagePicker = ImagePicker();
    final pickedFile = await imagePicker.pickImage(source: ImageSource.gallery);
    if (pickedFile != null) {
      setState(() {
        imageFile = File(pickedFile.path);
        _imagePathController.text = pickedFile.path;
        selected_img = _imagePathController.text;
        print("Image Info ::: ${selected_img}");
      });
    }
  }

  _getFromCamera() async {
    // PickedFile? pickedFile = await ImagePicker()
    //     .getImage(source: ImageSource.camera, maxWidth: 1800, maxHeight: 1800);
    final imagePicker = ImagePicker();
    final pickedFile = await imagePicker.pickImage(source: ImageSource.camera);
    if (pickedFile != null) {
      setState(() {
        imageFile = File(pickedFile.path);
        _imagePathController.text = pickedFile.path;
        selected_img = _imagePathController.text;
        print("Image Info ::: ${selected_img}");
      });
    }
  }

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
            child: Form(
              key: _formkey,
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
                    child: imageFile == null
                        ? Container(
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
                          )
                        : ClipOval(
                            child: Image.file(
                            imageFile!,
                            height: 106,
                            width: 106,
                            fit: BoxFit.cover,
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
                            onTap: () {
                              _showSimpleDialog();
                            },
                            child: Container(
                              height: 40,
                              width: 150,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(6),
                                  border: Border.all(width: 0.1),
                                  color: Colors.grey[200]),
                              child: Center(
                                child: Text("Choose File",
                                    style:
                                        hintTextStyle.copyWith(fontSize: 16)),
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
                    fieldName: "Status \*\*",
                    controller: _statusController,
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  CustomButton(
                      onTap: () {
                        if (_formkey.currentState!.validate()) {
                          print("All fields are valid");


                        }
                      },
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
        ));
  }
}
