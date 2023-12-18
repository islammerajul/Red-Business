import 'package:flutter/material.dart';
import 'package:red_business247/screens/manage_order/report_screen.dart';
import 'package:red_business247/screens/profile&password_screen/change_password.dart';
import 'package:red_business247/screens/register_user/customer_details.dart';
import 'package:red_business247/utils/const.dart';

class FixedInfo extends StatefulWidget {
  FixedInfo({Key? key, this.title, this.value, this.e_title, this.e_value})
      : super(key: key);
  String? title;
  String? value;
  String? e_title;
  String? e_value;

  @override
  State<FixedInfo> createState() => _FixedInfoState();
}

class _FixedInfoState extends State<FixedInfo> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            //mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                widget.title!,
                style: keywordTextStyle.copyWith(
                    fontSize: 18, fontWeight: FontWeight.w600),
              ),
              SizedBox(
                width: 15,
              ),
              Text(
                widget.value!,
                style: keywordTextStyle.copyWith(
                    fontSize: 18, fontWeight: FontWeight.w400),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Text(
                widget.e_title!,
                style: keywordTextStyle.copyWith(
                    fontSize: 18, fontWeight: FontWeight.w600),
              ),
              SizedBox(
                width: 15,
              ),
              Text(
                widget.e_value!,
                style: keywordTextStyle.copyWith(
                    fontSize: 18, fontWeight: FontWeight.w400),
              )
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            "Email Status",
            style: keywordTextStyle.copyWith(
                fontSize: 18, fontWeight: FontWeight.w600),
          ),
          SizedBox(
            height: 10,
          ),
          DropdownButtonFormField(
              items: email_status
                  .map((item) =>
                      DropdownMenuItem(value: item, child: Text(item)))
                  .toList(),
              onChanged: (item) {
                setState(() {
                  selected_emailstatus = item;
                });
              }),
          SizedBox(
            height: 20,
          ),
          Text(
            "Account",
            style: keywordTextStyle.copyWith(
                fontSize: 18, fontWeight: FontWeight.w600),
          ),
          SizedBox(
            height: 10,
          ),
          DropdownButtonFormField(
              items: account
                  .map((item) =>
                      DropdownMenuItem(value: item, child: Text(item)))
                  .toList(),
              onChanged: (item) {
                setState(() {
                  selected_account = item;
                });
              }),
          SizedBox(
            height: 20,
          ),
          Text(
            "Action",
            style: keywordTextStyle.copyWith(
                fontSize: 18, fontWeight: FontWeight.w600),
          ),
          SizedBox(
            height: 10,
          ),
          DropdownButtonFormField(
              items: action
                  .map((item) =>
                      DropdownMenuItem(value: item, child: Text(item)))
                  .toList(),
              onChanged: (item) {
                setState(() {
                  selected_actions = item;
                  if (selected_actions == 'Details') {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (_) => CustomerDetails(
                              username: widget.value,
                              email: widget.e_value,
                            )));
                  }
                  if (selected_actions == 'Change Password') {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (_) => PasswordChangeScreen()));
                  }
                });
              })
        ],
      ),
    );
  }
}
