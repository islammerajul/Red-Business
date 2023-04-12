import 'package:flutter/material.dart';
import 'package:red_business247/utils/const.dart';
import 'package:red_business247/widgets/custom_button.dart';
import 'package:red_business247/widgets/input_fields.dart';

class GeneralSettings extends StatefulWidget {
  const GeneralSettings({Key? key}) : super(key: key);

  @override
  State<GeneralSettings> createState() => _GeneralSettingsState();
}

class _GeneralSettingsState extends State<GeneralSettings> {
  List<String> timezone = [
    'America/Resolute/(UTC - 6.00)',
    'America/Antigua/(UTC - 4.00)',
    'America/Regina/(UTC - 6.00)',
    'America/Argentina/Buenos_Aires/(UTC - 3.00)',
    'America/Argentina/Catamarca/(UTC - 3.00)',
    'America/Argentina/Cordoba/(UTC - 3.00)',
    'America/Argentina/Jujuy/(UTC - 3.00)',
    'America/Argentina/La_Rioja/(UTC - 3.00)',
    'America/Argentina/Mendoza/(UTC - 3.00)',
    'America/Argentina/Rio_Gallegos/(UTC - 3.00)',
    'America/Argentina/San_Juan/(UTC - 3.00)',
    'America/Argentina/Salta/(UTC - 3.00)',
    'America/Argentina/San_Luis/(UTC - 3.00)',
    'America/Argentina/Tucuman/(UTC - 3.00)',
    'America/Argentina/Ushuaia/(UTC - 3.00)',
  ];
  String? selected_timezone;

  List<String> position = ['Left', 'Right'];
  String? initialPositionSym = 'Left';
  String? initialPositionText = 'Left';
  TextEditingController _websiteController = TextEditingController();
  TextEditingController _symbolController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: Icon(Icons.arrow_back)),
        title: Text("Update Information"),
        centerTitle: true,
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              InputField(
                title: 'Website Title',
                titleStyle: keywordTextStyle.copyWith(fontSize: 18),
                controller: _websiteController,
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Timezone",
                style: keywordTextStyle.copyWith(fontSize: 24),
              ),
              DropdownButtonFormField(
                  value: selected_timezone,
                  items: timezone.map((item) {
                    return DropdownMenuItem(value: item, child: Text(item));
                  }).toList(),
                  onChanged: (item) {
                    setState(() {
                      selected_timezone = item;
                    });
                  }),
              SizedBox(
                height: 20,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                  width: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6),
                      color: Color(0xff0d3e2d)),
                  child: Column(
                    children: [
                      Text(
                        "Currency Settings",
                        style: keywordTextStyle.copyWith(
                            fontWeight: FontWeight.bold,
                            fontSize: 24,
                            color: Colors.white),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 15),
                            child: Text(
                              "Base Currency Symbol \*\*",
                              style: keywordTextStyle.copyWith(
                                  fontSize: 18, color: Colors.white),
                            ),
                          ),
                          Container(
                            height: 50,
                            width: double.infinity,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(6),
                                color: Colors.white70),
                            child: Align(
                              alignment: initialPositionSym == 'Left'
                                  ? Alignment.centerLeft
                                  : Alignment.centerRight,
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(left: 10, right: 10),
                                child: Text(
                                  "\$",
                                  style: keywordTextStyle.copyWith(
                                      fontSize: 18, color: Colors.red),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Base Currency Symbol Position \*\*",
                            style: keywordTextStyle.copyWith(
                                fontSize: 18, color: Colors.white),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          DropdownButtonFormField(
                              style: keywordTextStyle.copyWith(
                                  fontSize: 18, color: Colors.red),
                              decoration: InputDecoration(
                                  filled: true,
                                  fillColor: Colors.white60,
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(6),
                                  )),
                              value: initialPositionSym,
                              items: position.map((item) {
                                return DropdownMenuItem(
                                    value: item, child: Text(item));
                              }).toList(),
                              onChanged: (item) {
                                setState(() {
                                  initialPositionSym = item;
                                });
                              }),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 15),
                            child: Text(
                              "Base Currency Text \*\*",
                              style: keywordTextStyle.copyWith(
                                  fontSize: 18, color: Colors.white),
                            ),
                          ),
                          Container(
                            height: 50,
                            width: double.infinity,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(6),
                                color: Colors.white70),
                            child: Align(
                              alignment: initialPositionText == 'Left'
                                  ? Alignment.centerLeft
                                  : Alignment.centerRight,
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(left: 10, right: 10),
                                child: Text(
                                  "USD",
                                  style: keywordTextStyle.copyWith(
                                      fontSize: 18, color: Colors.red),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Base Currency Symbol Position \*\*",
                            style: keywordTextStyle.copyWith(
                                fontSize: 18, color: Colors.white),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          DropdownButtonFormField(
                              style: keywordTextStyle.copyWith(
                                  fontSize: 18, color: Colors.red),
                              decoration: InputDecoration(
                                  filled: true,
                                  fillColor: Colors.white60,
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(6),
                                  )),
                              value: initialPositionText,
                              items: position.map((item) {
                                return DropdownMenuItem(
                                    value: item, child: Text(item));
                              }).toList(),
                              onChanged: (item) {
                                setState(() {
                                  initialPositionText = item;
                                });
                              }),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 15),
                            child: Text(
                              "Base Currency Symbol \*\*",
                              style: keywordTextStyle.copyWith(
                                  fontSize: 18, color: Colors.white),
                            ),
                          ),
                          Container(
                            height: 50,
                            width: double.infinity,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(6),
                                color: Colors.white70),
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(left: 10, right: 10),
                                child: Text(
                                  "1 \$ = 1 USD",
                                  style: keywordTextStyle.copyWith(
                                      fontSize: 18, color: Colors.red),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
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
