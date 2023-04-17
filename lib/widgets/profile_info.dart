import 'package:clipboard/clipboard.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:red_business247/utils/const.dart';

class ProfileInfo extends StatefulWidget {
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
  State<ProfileInfo> createState() => _ProfileInfoState();
}

class _ProfileInfoState extends State<ProfileInfo> {
  void showToast() {
    Fluttertoast.showToast(
        msg: "Save on clipboard",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        backgroundColor: Colors.green,
        textColor: Colors.white,
        timeInSecForIosWeb: 2);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8),
          child: Text(
            widget.fieldName!,
            style: keywordTextStyle.copyWith(fontSize: 20),
          ),
        ),
        TextField(
          maxLines: widget.maxLine,
          controller: widget.controller,
          keyboardType: widget.keyboardType,
          decoration: InputDecoration(
              filled: true,
              fillColor: Colors.grey[300],
              suffixIcon: IconButton(
                onPressed: () {
                  if (widget.controller.text.trim() == "") {
                    print('enter text');
                  } else {
                    print(widget.controller.text);
                    FlutterClipboard.copy(widget.controller.text).then((value) {
                      // print('copied');
                      // print("output: ${widget.controller.text}");
                      showToast();
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
