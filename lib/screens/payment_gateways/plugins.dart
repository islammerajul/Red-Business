import 'package:flutter/material.dart';
import 'package:red_business247/utils/const.dart';
import 'package:red_business247/widgets/active_deactive_section.dart';
import 'package:red_business247/widgets/custom_button.dart';
import 'package:red_business247/widgets/profile_info.dart';

class SetPlugins extends StatefulWidget {
  const SetPlugins({Key? key}) : super(key: key);

  @override
  State<SetPlugins> createState() => _SetPluginsState();
}

class _SetPluginsState extends State<SetPlugins> {
  TextEditingController _measurementController = TextEditingController();

  TextEditingController _recaptchaSecretkeyController = TextEditingController();
  TextEditingController _recaptchaSitekeyController = TextEditingController();
  TextEditingController _disqusController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Plugins"),
        centerTitle: true,
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Card(
                elevation: 5,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Text(
                        "Google Analytics",
                        style: keywordTextStyle.copyWith(
                            fontSize: 26, fontWeight: FontWeight.w600),
                      ),
                    ),
                    Divider(
                      color: Colors.black54,
                    ),
                    Container(
                      height: 122,
                      //height: MediaQuery.of(context).size.height * ,
                      child: ActiveDeactiveSection(
                        field_name: "Google Analytics Status \*",
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: ProfileInfo(
                        fieldName: 'Measurement ID \*',
                        controller: _measurementController,
                        keyboardType: TextInputType.text,
                        maxLine: 1,
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Divider(
                      color: Colors.black54,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 50, vertical: 25),
                      child: CustomButton(
                          onTap: () {},
                          buttonText: 'Update',
                          myTextStyle: myTextStyle.copyWith(
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                            color: Colors.white,
                          )),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Card(
                elevation: 5,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Text(
                        "Google Recaptcha",
                        style: keywordTextStyle.copyWith(
                            fontSize: 26, fontWeight: FontWeight.w600),
                      ),
                    ),
                    Divider(
                      color: Colors.black54,
                    ),
                    Container(
                      height: 122,
                      //height: MediaQuery.of(context).size.height * ,
                      child: ActiveDeactiveSection(
                        field_name: "Google Recaptcha Status \*",
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: ProfileInfo(
                        fieldName: 'Google Recaptcha Site key \*',
                        controller: _recaptchaSitekeyController,
                        keyboardType: TextInputType.text,
                        maxLine: 1,
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: ProfileInfo(
                        fieldName: 'Google Recaptcha Secret key \*',
                        controller: _recaptchaSecretkeyController,
                        keyboardType: TextInputType.text,
                        maxLine: 1,
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Divider(
                      color: Colors.black54,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 50, vertical: 25),
                      child: CustomButton(
                          onTap: () {},
                          buttonText: 'Update',
                          myTextStyle: myTextStyle.copyWith(
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                            color: Colors.white,
                          )),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Card(
                elevation: 5,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Text(
                        "Disqus",
                        style: keywordTextStyle.copyWith(
                            fontSize: 26, fontWeight: FontWeight.w600),
                      ),
                    ),
                    Divider(
                      color: Colors.black54,
                    ),
                    Container(
                      height: 122,
                      //height: MediaQuery.of(context).size.height * ,
                      child: ActiveDeactiveSection(
                        field_name: "Disqus Status \*",
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: ProfileInfo(
                        fieldName: 'Disqus Short Name \*',
                        controller: _disqusController,
                        keyboardType: TextInputType.text,
                        maxLine: 1,
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Divider(
                      color: Colors.black54,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 50, vertical: 25),
                      child: CustomButton(
                          onTap: () {},
                          buttonText: 'Update',
                          myTextStyle: myTextStyle.copyWith(
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                            color: Colors.white,
                          )),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
