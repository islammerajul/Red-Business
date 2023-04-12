import 'package:flutter/material.dart';
import 'package:red_business247/utils/const.dart';
import 'package:red_business247/widgets/custom_button.dart';
import 'package:red_business247/widgets/custom_text_field.dart';

class ColorSettings extends StatefulWidget {
  const ColorSettings({Key? key}) : super(key: key);

  @override
  State<ColorSettings> createState() => _ColorSettingsState();
}

class _ColorSettingsState extends State<ColorSettings> {
  TextEditingController _baseColorController = TextEditingController();
  TextEditingController _secondaryColorController = TextEditingController();
  @override
  void dispose() {
    // TODO: implement dispose
    _baseColorController.dispose();
    _secondaryColorController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: Icon(Icons.arrow_back)),
        title: Text("Color Settings"),
        centerTitle: true,
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Base Color",
              style: keywordTextStyle.copyWith(
                fontSize: 18,
              ),
            ),
            TextField(
              controller: _baseColorController,
              decoration: InputDecoration(
                  // filled: true,
                  // fillColor: Color(0xffbaseColor),
                  border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(6),
              )),
            ),
            SizedBox(
              height: 20,
            ),
            CustomTextField(
              title: 'Secondary Color',
            ),
            SizedBox(
              height: 50,
            ),
            CustomButton(
                onTap: () {
                  // Color baseColor = Color(0xff_baseColorController.text);
                  // print(baseColor);
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
    );
  }
}
