import 'package:flutter/material.dart';
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
  TextEditingController _titleController = TextEditingController();
  TextEditingController _subtitleController = TextEditingController();
  TextEditingController _textController = TextEditingController();
  TextEditingController _buttonTextController = TextEditingController();
  TextEditingController _buttonurlController = TextEditingController();
  TextEditingController _videourlController = TextEditingController();
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
          child: Column(
            children: [
              SelectImage(
                title: 'Background Image',
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
                controller: _titleController,
              ),
              SizedBox(
                height: 20,
              ),
              CustomTextField(
                title: 'Why Choose Us Section Button URL',
                textStyle: keywordTextStyle.copyWith(fontSize: 18),
                hintText: 'Enter button url',
                controller: _titleController,
              ),
              SizedBox(
                height: 20,
              ),
              SelectImage(
                title: 'Why choose us video section image',
              ),
              SizedBox(
                height: 20,
              ),
              CustomTextField(
                title: 'Why Choose Us Section Video URL',
                textStyle: keywordTextStyle.copyWith(fontSize: 18),
                hintText: 'Enter video url',
                controller: _titleController,
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
