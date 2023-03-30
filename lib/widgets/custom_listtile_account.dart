import 'package:flutter/material.dart';

class AccountListTile extends StatelessWidget {
  AccountListTile(
      {Key? key,
      this.leading_icon,
      this.title,
      this.trailing_icon,
      this.function})
      : super(key: key);
  IconData? leading_icon;
  String? title;
  IconData? trailing_icon;
  dynamic function;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: function,
      child: ListTile(
        leading: Icon(leading_icon),
        title: Text(title!),
        trailing: Icon(trailing_icon),
      ),
    );
  }
}
// Icon(Icons.person)
// Text("Account settings")
// Icons.arrow_forward_ios_outlined
