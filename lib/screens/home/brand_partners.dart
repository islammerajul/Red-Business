import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:red_business247/models/brand_model.dart';
import 'package:red_business247/utils/const.dart';
import 'package:red_business247/widgets/custom_text_field.dart';
import 'package:red_business247/widgets/custom_text_form_field.dart';

class BrandPartners extends StatefulWidget {
  const BrandPartners({Key? key}) : super(key: key);

  @override
  State<BrandPartners> createState() => _BrandPartnersState();
}

class _BrandPartnersState extends State<BrandPartners> {
  final GlobalKey<FormState> _key = GlobalKey<FormState>();

  TextEditingController _brandURLController = TextEditingController();
  TextEditingController _serialController = TextEditingController();

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
        title: Text("Brand Partners"),
        centerTitle: true,
        backgroundColor: Color(0xffdc2623),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            ListTile(
              title: Text(
                "${_brandURLController.text}",
              ),
              subtitle: Text("${_serialController.text}"),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog(
              context: context,
              builder: (BuildContext context) {
                return AlertDialog(
                  backgroundColor: Colors.white,
                  contentTextStyle:
                      TextStyle(color: Colors.black, fontSize: 18),
                  title: Center(
                      child: Text(
                    'Add Brand Partner',
                    style: keywordTextStyle.copyWith(
                        color: Colors.black, fontSize: 24),
                  )),
                  content: Container(
                    height: 350,
                    child: SingleChildScrollView(
                      scrollDirection: Axis.vertical,
                      child: Form(
                        key: _key,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Divider(
                                thickness: 2,
                                color: Colors.white,
                              ),
                              Text(
                                "Image \*",
                                style: hintTextStyle.copyWith(fontSize: 18),
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    vertical: 10, horizontal: 10),
                                child:  Container(
                                        height: 150,
                                        width: 120,
                                        decoration: BoxDecoration(
                                          border: Border.all(width: 0.5),
                                          borderRadius:
                                              BorderRadius.circular(5),
                                        ),
                                        child: imageFile == null
                                            ? Center(
                                          child: Image.asset(
                                            "assets/icons/No_Image.png",
                                            fit: BoxFit.fill,
                                          ),
                                        )
                                            : Container(
                                            child: Image.file(
                                              imageFile!,
                                              height: 150,
                                              width: 120,
                                              fit: BoxFit.cover,
                                            ))),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              ElevatedButton(
                                  onPressed: () {
                                    _showSimpleDialog();
                                  },
                                  child: Text("Choose File")),
                              SizedBox(
                                height: 20,
                              ),
                              Text(
                                "Brands URL",
                                style: hintTextStyle.copyWith(fontSize: 18),
                              ),
                              CustomTextFormField(
                                controller: _brandURLController,
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'Field is required';
                                  }
                                  return null;
                                },
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Text(
                                "Serial Number",
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
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  actions: <Widget>[
                    ElevatedButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: Text(
                        "Close",
                        style: keywordTextStyle.copyWith(color: Colors.black54),
                      ),
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(Colors.blue),
                        // textStyle: MaterialStateProperty.all(
                        //   TextStyle(color: Colors.black),
                        //),
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        if (_key.currentState!.validate()) {
                          _key.currentState!.save();
                          final brand = BrandModel(
                              url: _brandURLController.text,
                              serial: _serialController.text);
                          print("form submitted.");
                          print(brand);
                          Navigator.pop(context);
                        }
                      },
                      child: Text(
                        "Save",
                        style: keywordTextStyle.copyWith(color: Colors.black54),
                      ),
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(Colors.blue),
                        // textStyle: MaterialStateProperty.all(
                        //   TextStyle(color: Colors.black),
                        //),
                      ),
                    ),
                  ],
                );
              });
        },
        child: Icon(Icons.add),
        backgroundColor: Color(0xffdc2623),
      ),
    );
  }
}
