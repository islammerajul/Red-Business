import 'package:flutter/material.dart';
import 'package:red_business247/utils/const.dart';
import 'package:red_business247/widgets/custom_button.dart';
import 'package:red_business247/widgets/custom_text_button.dart';
import 'package:red_business247/widgets/custom_text_field.dart';

class HomeSection extends StatefulWidget {
  const HomeSection({Key? key}) : super(key: key);

  @override
  State<HomeSection> createState() => _HomeSectionState();
}

class _HomeSectionState extends State<HomeSection> {
  TextEditingController _serviceTitleController = TextEditingController();
  TextEditingController _serviceSubtitleController = TextEditingController();
  TextEditingController _portfolioTitleController = TextEditingController();

  TextEditingController _portfolioSubtitleController = TextEditingController();
  TextEditingController _portfolioTextController = TextEditingController();
  TextEditingController _testmonialTitleController = TextEditingController();

  TextEditingController _testmonialSubtitleController = TextEditingController();
  TextEditingController _faqTitleController = TextEditingController();
  TextEditingController _faqSubtitleController = TextEditingController();
  TextEditingController _quoteTitleController = TextEditingController();
  TextEditingController _quoteSUbtitleController = TextEditingController();
  TextEditingController _contactTitleController = TextEditingController();
  TextEditingController _contactSubtitleController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        title: Text("Home Sections"),
        centerTitle: true,
      ),
      body: Container(
        width: double.infinity,
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: CustomTextButton(
                  onTap: () {
                    showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            backgroundColor: Color(0xffce2d60),
                            contentTextStyle:
                                TextStyle(color: Colors.white, fontSize: 18),
                            title: Center(
                                child: Text(
                              'Service Section',
                              style: keywordTextStyle.copyWith(
                                  color: Colors.white, fontSize: 24),
                            )),
                            content: Container(
                              height: 250,
                              child: SingleChildScrollView(
                                scrollDirection: Axis.vertical,
                                child: Column(
                                  children: [
                                    Divider(
                                      thickness: 2,
                                      color: Colors.white,
                                    ),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    CustomTextField(
                                      title: 'Service Section Title',
                                      textStyle:
                                          hintTextStyle.copyWith(fontSize: 18),
                                      hintText: 'Enter service title',
                                      fillColor: Colors.white,
                                      controller: _serviceTitleController,
                                    ),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    CustomTextField(
                                      title: 'Service Section Subtitle',
                                      textStyle:
                                          hintTextStyle.copyWith(fontSize: 18),
                                      hintText: 'Enter service subtitle',
                                      fillColor: Colors.white,
                                      controller: _serviceSubtitleController,
                                    )
                                  ],
                                ),
                              ),
                            ),
                            actions: <Widget>[
                              ElevatedButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                child: Text(
                                  "Save",
                                  style: keywordTextStyle.copyWith(
                                      color: Colors.black54),
                                ),
                                style: ButtonStyle(
                                  backgroundColor:
                                      MaterialStateProperty.all(Colors.white),
                                  // textStyle: MaterialStateProperty.all(
                                  //   TextStyle(color: Colors.black),
                                  //),
                                ),
                              ),
                            ],
                          );
                        });
                  },
                  buttonText: 'Service Section',
                  buttonColor: Colors.blue,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: CustomTextButton(
                  onTap: () {
                    showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            backgroundColor: Color(0xffce2d60),
                            contentTextStyle:
                                TextStyle(color: Colors.white, fontSize: 18),
                            title: Center(
                                child: Text(
                              'Portfolio Section',
                              style: keywordTextStyle.copyWith(
                                  color: Colors.white, fontSize: 24),
                            )),
                            content: Container(
                              height: 250,
                              child: SingleChildScrollView(
                                scrollDirection: Axis.vertical,
                                child: Column(
                                  children: [
                                    Divider(
                                      thickness: 2,
                                      color: Colors.white,
                                    ),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    CustomTextField(
                                      title: 'Portfolio Section Title',
                                      textStyle:
                                          hintTextStyle.copyWith(fontSize: 18),
                                      hintText: 'Enter portfolio title',
                                      fillColor: Colors.white,
                                      controller: _portfolioTitleController,
                                    ),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    CustomTextField(
                                      title: 'Portfolio Section Subtitle',
                                      textStyle:
                                          hintTextStyle.copyWith(fontSize: 18),
                                      hintText: 'Enter portfolio subtitle',
                                      fillColor: Colors.white,
                                      controller: _portfolioSubtitleController,
                                    ),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    CustomTextField(
                                      title: 'View All Portfolio Text',
                                      textStyle:
                                          hintTextStyle.copyWith(fontSize: 18),
                                      hintText: 'Enter view all portfolio text',
                                      fillColor: Colors.white,
                                      controller: _portfolioTextController,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            actions: <Widget>[
                              ElevatedButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                child: Text(
                                  "Save",
                                  style: keywordTextStyle.copyWith(
                                      color: Colors.black54),
                                ),
                                style: ButtonStyle(
                                  backgroundColor:
                                      MaterialStateProperty.all(Colors.white),
                                  // textStyle: MaterialStateProperty.all(
                                  //   TextStyle(color: Colors.black),
                                  //),
                                ),
                              ),
                            ],
                          );
                        });
                  },
                  buttonText: 'Portfolio Section',
                  buttonColor: Color(0xffffad46),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: CustomTextButton(
                  onTap: () {
                    showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            backgroundColor: Color(0xffce2d60),
                            contentTextStyle:
                                TextStyle(color: Colors.white, fontSize: 18),
                            title: Center(
                                child: Text(
                              'Testimonial Section',
                              style: keywordTextStyle.copyWith(
                                  color: Colors.white, fontSize: 24),
                            )),
                            content: Container(
                              height: 250,
                              child: SingleChildScrollView(
                                scrollDirection: Axis.vertical,
                                child: Column(
                                  children: [
                                    Divider(
                                      thickness: 2,
                                      color: Colors.white,
                                    ),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    CustomTextField(
                                      title: 'Testimonial Section Title',
                                      textStyle:
                                          hintTextStyle.copyWith(fontSize: 18),
                                      hintText: 'Enter testimonial title',
                                      fillColor: Colors.white,
                                      controller: _testmonialTitleController,
                                    ),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    CustomTextField(
                                      title: 'Testimonial Section Subtitle',
                                      textStyle:
                                          hintTextStyle.copyWith(fontSize: 18),
                                      hintText: 'Enter testimonial subtitle',
                                      fillColor: Colors.white,
                                      controller: _testmonialSubtitleController,
                                    )
                                  ],
                                ),
                              ),
                            ),
                            actions: <Widget>[
                              ElevatedButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                child: Text(
                                  "Save",
                                  style: keywordTextStyle.copyWith(
                                      color: Colors.black54),
                                ),
                                style: ButtonStyle(
                                  backgroundColor:
                                      MaterialStateProperty.all(Colors.white),
                                  // textStyle: MaterialStateProperty.all(
                                  //   TextStyle(color: Colors.black),
                                  //),
                                ),
                              ),
                            ],
                          );
                        });
                  },
                  buttonText: 'Testimonial Section',
                  buttonColor: Color(0xff31ce36),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: CustomTextButton(
                  onTap: () {
                    showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            backgroundColor: Color(0xffce2d60),
                            contentTextStyle:
                                TextStyle(color: Colors.white, fontSize: 18),
                            title: Center(
                                child: Text(
                              'FAQ Section',
                              style: keywordTextStyle.copyWith(
                                  color: Colors.white, fontSize: 24),
                            )),
                            content: Container(
                              height: 250,
                              child: SingleChildScrollView(
                                scrollDirection: Axis.vertical,
                                child: Column(
                                  children: [
                                    Divider(
                                      thickness: 2,
                                      color: Colors.white,
                                    ),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "FAQ Section Image\*",
                                          style: hintTextStyle.copyWith(
                                              fontSize: 18),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.symmetric(
                                              vertical: 10, horizontal: 10),
                                          child: Container(
                                              height: 150,
                                              width: 120,
                                              decoration: BoxDecoration(
                                                border: Border.all(width: 0.5),
                                                borderRadius:
                                                    BorderRadius.circular(5),
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
                                        ElevatedButton(
                                          onPressed: () {},
                                          child: Text(
                                            "Select an image",
                                            style: keywordTextStyle.copyWith(
                                                color: Colors.black54),
                                          ),
                                          style: ButtonStyle(
                                            backgroundColor:
                                                MaterialStateProperty.all(
                                                    Colors.white),
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    CustomTextField(
                                      title: 'FAQ Section Title',
                                      textStyle:
                                          hintTextStyle.copyWith(fontSize: 18),
                                      hintText: 'Enter faq section title',
                                      fillColor: Colors.white,
                                      controller: _faqTitleController,
                                    ),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    CustomTextField(
                                      title: 'FAQ Section Subtitle',
                                      textStyle:
                                          hintTextStyle.copyWith(fontSize: 18),
                                      hintText: 'Enter faq section subtitle',
                                      fillColor: Colors.white,
                                      controller: _faqSubtitleController,
                                    )
                                  ],
                                ),
                              ),
                            ),
                            actions: <Widget>[
                              ElevatedButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                child: Text(
                                  "Save",
                                  style: keywordTextStyle.copyWith(
                                      color: Colors.black54),
                                ),
                                style: ButtonStyle(
                                  backgroundColor:
                                      MaterialStateProperty.all(Colors.white),
                                  // textStyle: MaterialStateProperty.all(
                                  //   TextStyle(color: Colors.black),
                                  //),
                                ),
                              ),
                            ],
                          );
                        });
                  },
                  buttonText: 'FAQ Section',
                  buttonColor: Color(0xffce2d60),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: CustomTextButton(
                  onTap: () {
                    showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            backgroundColor: Color(0xffce2d60),
                            contentTextStyle:
                                TextStyle(color: Colors.white, fontSize: 18),
                            title: Center(
                                child: Text(
                              'Quote Section',
                              style: keywordTextStyle.copyWith(
                                  color: Colors.white, fontSize: 24),
                            )),
                            content: Container(
                              height: 250,
                              child: SingleChildScrollView(
                                scrollDirection: Axis.vertical,
                                child: Column(
                                  children: [
                                    Divider(
                                      thickness: 2,
                                      color: Colors.white,
                                    ),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    CustomTextField(
                                        title: 'Quote Section Title',
                                        textStyle: hintTextStyle.copyWith(
                                            fontSize: 18),
                                        hintText: 'Enter quote title',
                                        fillColor: Colors.white,
                                        controller: _quoteTitleController),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    CustomTextField(
                                      title: 'Quote Section Subtitle',
                                      textStyle:
                                          hintTextStyle.copyWith(fontSize: 18),
                                      hintText: 'Enter quote subtitle',
                                      fillColor: Colors.white,
                                      controller: _quoteTitleController,
                                    )
                                  ],
                                ),
                              ),
                            ),
                            actions: <Widget>[
                              ElevatedButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                child: Text(
                                  "Save",
                                  style: keywordTextStyle.copyWith(
                                      color: Colors.black54),
                                ),
                                style: ButtonStyle(
                                  backgroundColor:
                                      MaterialStateProperty.all(Colors.white),
                                  // textStyle: MaterialStateProperty.all(
                                  //   TextStyle(color: Colors.black),
                                  //),
                                ),
                              ),
                            ],
                          );
                        });
                  },
                  buttonText: 'Quote Section',
                  buttonColor: Color(0xff6861ce),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: CustomTextButton(
                  onTap: () {
                    showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            backgroundColor: Color(0xffce2d60),
                            contentTextStyle:
                                TextStyle(color: Colors.white, fontSize: 18),
                            title: Center(
                                child: Text(
                              'Contact Section',
                              style: keywordTextStyle.copyWith(
                                  color: Colors.white, fontSize: 24),
                            )),
                            content: Container(
                              height: 250,
                              child: SingleChildScrollView(
                                scrollDirection: Axis.vertical,
                                child: Column(
                                  children: [
                                    Divider(
                                      thickness: 2,
                                      color: Colors.white,
                                    ),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Contact Section Image\*",
                                          style: hintTextStyle.copyWith(
                                              fontSize: 18),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.symmetric(
                                              vertical: 10, horizontal: 10),
                                          child: Container(
                                              height: 150,
                                              width: 120,
                                              decoration: BoxDecoration(
                                                border: Border.all(width: 0.5),
                                                borderRadius:
                                                    BorderRadius.circular(5),
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
                                        ElevatedButton(
                                          onPressed: () {},
                                          child: Text(
                                            "Select an image",
                                            style: keywordTextStyle.copyWith(
                                                color: Colors.black54),
                                          ),
                                          style: ButtonStyle(
                                            backgroundColor:
                                                MaterialStateProperty.all(
                                                    Colors.white),
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    CustomTextField(
                                      title: 'Contact Section Title',
                                      textStyle:
                                          hintTextStyle.copyWith(fontSize: 18),
                                      hintText: 'Enter contact section title',
                                      fillColor: Colors.white,
                                      controller: _contactTitleController,
                                    ),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    CustomTextField(
                                      title: 'Contact Section Subtitle',
                                      textStyle:
                                          hintTextStyle.copyWith(fontSize: 18),
                                      hintText:
                                          'Enter contact section subtitle',
                                      fillColor: Colors.white,
                                      controller: _contactSubtitleController,
                                    )
                                  ],
                                ),
                              ),
                            ),
                            actions: <Widget>[
                              ElevatedButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                child: Text(
                                  "Save",
                                  style: keywordTextStyle.copyWith(
                                      color: Colors.black54),
                                ),
                                style: ButtonStyle(
                                  backgroundColor:
                                      MaterialStateProperty.all(Colors.white),
                                  // textStyle: MaterialStateProperty.all(
                                  //   TextStyle(color: Colors.black),
                                  //),
                                ),
                              ),
                            ],
                          );
                        });
                  },
                  buttonText: 'Contact Section',
                  buttonColor: Color(0xff104f20),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
