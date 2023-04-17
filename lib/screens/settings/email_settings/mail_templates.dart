import 'package:flutter/material.dart';
import 'package:red_business247/screens/settings/email_settings/edit_mail_template.dart';
import 'package:red_business247/utils/const.dart';
import 'package:red_business247/widgets/details_field.dart';

class MailTemplates extends StatefulWidget {
  const MailTemplates({Key? key}) : super(key: key);

  @override
  State<MailTemplates> createState() => _MailTemplatesState();
}

class _MailTemplatesState extends State<MailTemplates> {
  _displayDialog(BuildContext context) async {
    return showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            backgroundColor: Colors.green,
            title: Text('Mail Information'),
            content: Container(
              height: 165,
              //decoration: BoxDecoration(color: Colors.green),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Reply To \*\*",
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
                          "boutique@example.com",
                          style: keywordTextStyle.copyWith(fontSize: 20),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "From Name \*\*",
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
                          "Boutique",
                          style: keywordTextStyle.copyWith(fontSize: 20),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            actions: <Widget>[
              ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text("Save")),
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Mail Templates"),
        centerTitle: true,
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            children: [
              Card(
                elevation: 10,
                child: Container(
                  padding: EdgeInsets.all(15),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Mail Template no 1",
                            style: keywordTextStyle.copyWith(fontSize: 20),
                          ),
                          IconButton(
                              onPressed: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (_) => EditMailTemplate(
                                          mail_type: "Email Verification",
                                          mail_sub:
                                              'Customer Email Verification',
                                        )));
                              },
                              icon: Icon(Icons.edit))
                        ],
                      ),
                      Divider(
                        thickness: 1,
                        color: Colors.black54,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        child: DetailsField(
                          title: 'Email Type',
                          value: "Email Verification",
                        ),
                      ),
                      DetailsField(
                        title: 'Mail Subject',
                        value: 'Customer Email Verification',
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Card(
                elevation: 10,
                child: Container(
                  padding: EdgeInsets.all(15),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Mail Template no 2",
                            style: keywordTextStyle.copyWith(fontSize: 20),
                          ),
                          IconButton(
                              onPressed: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (_) => EditMailTemplate(
                                          mail_type: 'Product Order',
                                          mail_sub: 'Thank you for your order',
                                        )));
                              },
                              icon: Icon(Icons.edit))
                        ],
                      ),
                      Divider(
                        thickness: 1,
                        color: Colors.black54,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        child: DetailsField(
                          title: 'Email Type',
                          value: 'Product Order',
                        ),
                      ),
                      DetailsField(
                        title: 'Mail Subject',
                        value: 'Thank you for your order',
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Card(
                elevation: 10,
                child: Container(
                  padding: EdgeInsets.all(15),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Mail Template no 3",
                            style: keywordTextStyle.copyWith(fontSize: 20),
                          ),
                          IconButton(
                              onPressed: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (_) => EditMailTemplate(
                                          mail_type: 'Reset Password',
                                          mail_sub:
                                              'Recover Password of Your Account',
                                        )));
                              },
                              icon: Icon(Icons.edit))
                        ],
                      ),
                      Divider(
                        thickness: 1,
                        color: Colors.black54,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        child: DetailsField(
                          title: 'Email Type',
                          value: 'Reset Password',
                        ),
                      ),
                      DetailsField(
                        title: 'Mail Subject',
                        value: 'Recover Password of Your Account',
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                child: Text(
                  "Mail Information",
                  style: keywordTextStyle.copyWith(fontSize: 18),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                  //primary: Colors.red,
                  elevation: 0,
                ),
                onPressed: () {
                  return _displayDialog(context);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
