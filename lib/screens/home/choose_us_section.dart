import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:red_business247/utils/const.dart';
import 'package:red_business247/widgets/custom_button.dart';
import 'package:red_business247/widgets/custom_text_field.dart';
import 'package:red_business247/widgets/select_image.dart';

class ChooseUs extends StatefulWidget {
  const ChooseUs({Key? key}) : super(key: key);

  @override
  State<ChooseUs> createState() => _ChooseUsState();
}

class _ChooseUsState extends State<ChooseUs> {
  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();
  TextEditingController _titleController = TextEditingController();
  TextEditingController _subtitleController = TextEditingController();
  TextEditingController _textController = TextEditingController();
  TextEditingController _buttonTextController = TextEditingController();
  TextEditingController _buttonurlController = TextEditingController();
  TextEditingController _videourlController = TextEditingController();

  final TextEditingController _imagePathController = TextEditingController();

  File? imageFile;
  File? imageFile_background_img,imageFile_video_section_img;
  String? selected_img;
  String? background_img, video_section_img;

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
        backgroundColor: Theme.of(context).primaryColor,
        title: Text("Why choose us section"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Form(
            key: _formkey,
            child: Column(
              children: [
                SelectImage(
                  title: 'Background Image',
                  img: background_img = selected_img,
                  onTap: (){
                    _showSimpleDialog();
                  },
                  imageFile: imageFile_background_img,
                ),
                SizedBox(
                  height: 20,
                ),
                CustomTextField(
                  title: 'Why Choose Us Section Subtitle',
                  textStyle: keywordTextStyle.copyWith(fontSize: 18),
                  hintText: 'Enter subtitle',
                  controller: _subtitleController,
                ),
                SizedBox(
                  height: 20,
                ),
                CustomTextField(
                  title: 'Why Choose Us Section Text',
                  textStyle: keywordTextStyle.copyWith(fontSize: 18),
                  hintText: 'Enter text',
                  controller: _textController,
                ),
                SizedBox(
                  height: 20,
                ),
                CustomTextField(
                  title: 'Why Choose Us Section Button Text',
                  textStyle: keywordTextStyle.copyWith(fontSize: 18),
                  hintText: 'Enter button text',
                  controller: _buttonTextController,
                ),
                SizedBox(
                  height: 20,
                ),
                CustomTextField(
                  title: 'Why Choose Us Section Button URL',
                  textStyle: keywordTextStyle.copyWith(fontSize: 18),
                  hintText: 'Enter button url',
                  controller: _buttonurlController,
                ),
                SizedBox(
                  height: 20,
                ),
                SelectImage(
                  title: 'Why choose us video section image',
                  img: video_section_img = selected_img,
                  onTap: (){
                    _showSimpleDialog();
                  },
                  imageFile: imageFile_video_section_img,
                ),
                SizedBox(
                  height: 20,
                ),
                CustomTextField(
                  title: 'Why Choose Us Section Video URL',
                  textStyle: keywordTextStyle.copyWith(fontSize: 18),
                  hintText: 'Enter video url',
                  controller: _videourlController,
                ),
                SizedBox(
                  height: 50,
                ),
                CustomButton(
                    onTap: () {
                      if (_formkey.currentState!.validate()) {
                        print("All fields are valid");
                        print("imageFile_video_section_img : $imageFile_video_section_img");
                        print("video_section_img : $video_section_img");
                        print("imageFile_background_img : $imageFile_background_img");
                        print("background_img : $background_img");


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
      ),
    );
  }
}
