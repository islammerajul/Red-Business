import 'package:flutter/material.dart';
import 'package:red_business247/utils/const.dart';
import 'package:red_business247/widgets/active_deactive_section.dart';
import 'package:red_business247/widgets/custom_button.dart';
import 'package:red_business247/widgets/profile_info.dart';

class PluginsSettings extends StatefulWidget {
  const PluginsSettings({Key? key}) : super(key: key);

  @override
  State<PluginsSettings> createState() => _PluginsSettingsState();
}

class _PluginsSettingsState extends State<PluginsSettings> {
  TextEditingController _measurementController = TextEditingController();
  TextEditingController _recaptchaController = TextEditingController();
  TextEditingController _recaptchaSecretController = TextEditingController();
  TextEditingController _disqusController = TextEditingController();
  TextEditingController _whatsappNumController = TextEditingController();
  TextEditingController _whatsappController = TextEditingController();
  TextEditingController _whatsappPopupController = TextEditingController();
  TextEditingController _facebookPixelController = TextEditingController();
  TextEditingController _tawkChatController = TextEditingController();

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
                        field_name: 'Google Analytics Status \*',
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
                        field_name: 'Google Recaptcha Status \*',
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: ProfileInfo(
                        fieldName: 'Google Recaptcha Site key',
                        controller: _recaptchaController,
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
                        fieldName: 'Google Recaptcha Secret key',
                        controller: _recaptchaSecretController,
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
                        field_name: 'Disqus Status \*',
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: ProfileInfo(
                        fieldName: 'Disqus Short Name \*',
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
                        "WhatsApp",
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
                        field_name: 'WhatsApp Status \*',
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: ProfileInfo(
                        fieldName: 'WhatsApp Number \*',
                        controller: _whatsappNumController,
                        keyboardType: TextInputType.text,
                        maxLine: 1,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: Text(
                        "Hint: Click Here to see where to get the Facebook Pixel ID",
                        style: keywordTextStyle.copyWith(
                            color: Colors.orange, fontSize: 18),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: ProfileInfo(
                        fieldName: 'WhatsApp Header Title \*',
                        controller: _whatsappController,
                        keyboardType: TextInputType.text,
                        maxLine: 1,
                      ),
                    ),
                    Container(
                      height: 122,
                      //height: MediaQuery.of(context).size.height * ,
                      child: ActiveDeactiveSection(
                        field_name: 'WhatsApp Status \*',
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: ProfileInfo(
                        fieldName: 'WhatsApp Popup Message \*',
                        controller: _whatsappPopupController,
                        keyboardType: TextInputType.text,
                        maxLine: 3,
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
                        "Facebook Pixel ",
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
                        field_name: 'Facebook Pixel Status \*',
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 8, horizontal: 15),
                      child: Text(
                        "Hint: Click Here to see where to get the Facebook Pixel ID",
                        style: keywordTextStyle.copyWith(
                            color: Colors.orange, fontSize: 18),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: ProfileInfo(
                        fieldName: 'Facebook Pixel ID \*',
                        controller: _facebookPixelController,
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
                        "Tawk.to",
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
                        field_name: 'Tawk.to Status',
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: ProfileInfo(
                        fieldName: 'Tawk.to Direct Chat Link',
                        controller: _tawkChatController,
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
