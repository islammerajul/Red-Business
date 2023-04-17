import 'package:flutter/material.dart';
import 'package:red_business247/utils/const.dart';
import 'package:red_business247/widgets/custom_button.dart';
import 'package:red_business247/widgets/details_field.dart';

class EditMailTemplate extends StatefulWidget {
  EditMailTemplate({Key? key, this.mail_type, this.mail_sub}) : super(key: key);
  String? mail_type;
  String? mail_sub;

  @override
  State<EditMailTemplate> createState() => _EditMailTemplateState();
}

class _EditMailTemplateState extends State<EditMailTemplate> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Edit Mail Template"),
        centerTitle: true,
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Mail Type",
                style: keywordTextStyle.copyWith(fontSize: 20),
              ),
              SizedBox(
                height: 5,
              ),
              Container(
                height: 40,
                width: double.infinity,
                decoration: BoxDecoration(
                  border: Border.all(width: 1),
                  borderRadius: BorderRadius.circular(6),
                ),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Text(
                      "${widget.mail_type}",
                      style: keywordTextStyle.copyWith(fontSize: 20),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Mail Subject \*",
                style: keywordTextStyle.copyWith(fontSize: 20),
              ),
              SizedBox(
                height: 5,
              ),
              Container(
                height: 40,
                width: double.infinity,
                decoration: BoxDecoration(
                  border: Border.all(width: 1),
                  borderRadius: BorderRadius.circular(6),
                ),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Text(
                      "${widget.mail_sub}",
                      style: keywordTextStyle.copyWith(fontSize: 20),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Card(
                elevation: 10,
                child: Container(
                  padding: EdgeInsets.all(15),
                  color: Colors.lightGreenAccent,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        child: DetailsField(
                          title: 'Short Code',
                          value: 'Meaning',
                        ),
                      ),
                      Divider(
                        thickness: 1,
                        color: Colors.black54,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        child: DetailsField(
                          title: '{customer_name}',
                          value: 'Name of The Customer',
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        child: DetailsField(
                          title: '{verification_link}',
                          value: 'Email Verification Link',
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        child: DetailsField(
                          title: '{website_title}',
                          value: 'Website Title',
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                "Mail Subject \*",
                style: keywordTextStyle.copyWith(fontSize: 20),
              ),
              SizedBox(
                height: 5,
              ),
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  border: Border.all(width: 1),
                  borderRadius: BorderRadius.circular(6),
                ),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 20),
                    child: Text(
                      "Hi,\n{customer_name}\n Please verify your email by clicking the link below.\nYour verification link is {verification_link}\n\n\nRegards\n{website_title}",
                      style: keywordTextStyle.copyWith(fontSize: 20),
                    ),
                  ),
                ),
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
