import 'package:flutter/material.dart';
import 'package:red_business247/utils/const.dart';
import 'package:red_business247/widgets/custom_button.dart';

class InputField extends StatefulWidget {
  InputField(
      {Key? key, this.title, this.controller, this.style, this.titleStyle})
      : super(key: key);
  String? title;
  dynamic controller;
  TextStyle? style, titleStyle;

  @override
  State<InputField> createState() => _InputFieldState();
}

class _InputFieldState extends State<InputField> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 15),
          child: Text(
            widget.title!,
            style: widget.titleStyle,
          ),
        ),
        TextField(
          style: widget.style,
          controller: widget.controller,
          decoration: InputDecoration(
              filled: true,
              fillColor: Colors.white60,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(6),
              )),
        ),
      ],
    );
  }
}
//Color(0xffc4c6c8)
