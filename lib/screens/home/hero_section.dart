import 'package:flutter/material.dart';
import 'package:red_business247/utils/const.dart';
import 'package:red_business247/widgets/custom_button.dart';
import 'package:red_business247/widgets/custom_text_field.dart';

class HeroSection extends StatefulWidget {
  const HeroSection({Key? key}) : super(key: key);

  @override
  State<HeroSection> createState() => _HeroSectionState();
}

class _HeroSectionState extends State<HeroSection> {
  TextEditingController _titleController = TextEditingController();
  TextEditingController _subTitleController = TextEditingController();
  TextEditingController _buttonNameController = TextEditingController();
  TextEditingController _buttonURLController = TextEditingController();
  //TextEditingController _imgController = TextEditingController();
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
        title: Text("Update Static Version"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.all(25.0),
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
              CustomTextField(
                title: 'Title\*',
                textStyle: hintTextStyle.copyWith(fontSize: 18),
                hintText: 'Enter title',
                controller: _titleController,
              ),
              SizedBox(
                height: 10,
              ),
              CustomTextField(
                title: 'Subtitle\*',
                textStyle: hintTextStyle.copyWith(fontSize: 18),
                hintText: 'Enter subtitle',
                controller: _subTitleController,
              ),
              SizedBox(
                height: 10,
              ),
              CustomTextField(
                title: 'Button Name\*',
                textStyle: hintTextStyle.copyWith(fontSize: 18),
                hintText: 'Enter button name',
                controller: _buttonNameController,
              ),
              SizedBox(
                height: 10,
              ),
              CustomTextField(
                title: 'Button URL\*',
                textStyle: hintTextStyle.copyWith(fontSize: 18),
                hintText: 'Enter button url',
                controller: _buttonURLController,
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
