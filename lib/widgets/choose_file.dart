import 'package:flutter/material.dart';
import 'package:red_business247/utils/const.dart';

class ChooseFile extends StatefulWidget {
  ChooseFile({Key? key, this.onTap}) : super(key: key);
  dynamic onTap;

  @override
  State<ChooseFile> createState() => _ChooseFileState();
}

class _ChooseFileState extends State<ChooseFile> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.07,
      width: double.infinity,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6), border: Border.all(width: 1)),
      child: Row(
        children: [
          Padding(
            padding:
                const EdgeInsets.only(left: 20, right: 5, top: 5, bottom: 5),
            child: InkWell(
              onTap: widget.onTap,
              child: Container(
                height: MediaQuery.of(context).size.height * 0.07,
                width: MediaQuery.of(context).size.width * 0.3,
                decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(4),
                    border: Border.all(width: 1)),
                child: Center(
                  child: Text(
                    "Choose File",
                    style: keywordTextStyle.copyWith(
                        fontSize: 20, color: Colors.black),
                  ),
                ),
              ),
            ),
          ),
          Text(
            "No file chosen",
            style: keywordTextStyle.copyWith(fontSize: 20, color: Colors.black),
          ),
        ],
      ),
    );
  }
}
