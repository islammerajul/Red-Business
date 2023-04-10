import 'package:clipboard/clipboard.dart';
import 'package:flutter/material.dart';
import 'package:red_business247/utils/const.dart';

class ProfileInfo extends StatelessWidget {
  ProfileInfo(
      {Key? key,
      this.controller,
      this.fieldName,
      this.keyboardType,
      this.maxLine})
      : super(key: key);
  String? fieldName;
  dynamic controller;
  TextInputType? keyboardType;
  int? maxLine;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8),
          child: Text(
            fieldName!,
            style: keywordTextStyle,
          ),
        ),
        TextField(
          maxLines: maxLine,
          controller: controller,
          keyboardType: keyboardType,
          decoration: InputDecoration(
              suffixIcon: IconButton(
                onPressed: () {
                  if (controller.text.trim() == "") {
                    print('enter text');
                  } else {
                    print(controller.text);
                    FlutterClipboard.copy(controller.text).then((value) {
                      print('copied');
                      print("output: ${controller.text}");
                    });
                  }
                },
                icon: Icon(Icons.copy_outlined),
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(6),
              )),
        )
      ],
    );
  }
}
