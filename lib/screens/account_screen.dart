import 'package:flutter/material.dart';
import 'package:red_business247/utils/const.dart';
import 'package:red_business247/widgets/account_box.dart';
import 'package:red_business247/widgets/custom_listtile_account.dart';

class AccountScreen extends StatefulWidget {
  const AccountScreen({Key? key}) : super(key: key);

  @override
  State<AccountScreen> createState() => _AccountScreenState();
}

class _AccountScreenState extends State<AccountScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Color(0xffdc2623),
        title: Text(
          "Account",
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(6.0),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Card(
                elevation: 1,
                child: Container(
                  height: 80,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(3),
                  ),
                  child: ListTile(
                    title: Text(
                      "Mr Keeper",
                      style: keywordTextStyle,
                    ),
                    subtitle: Text(
                      "naimul.roni@gmail.com",
                      style: hintTextStyle.copyWith(
                          fontSize: 14, color: Colors.grey),
                    ),
                    trailing: Container(
                      height: 70,
                      width: 70,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(color: Colors.black, width: 3)),
                      child: Icon(
                        Icons.add_a_photo_outlined,
                        size: 35,
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 6),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(6),
                  ),
                  child: Wrap(
                    children: [
                      AccountListTile(
                        function: () {
                          print('1');
                        },
                        leading_icon: Icons.person,
                        title: 'Account settings',
                        trailing_icon: Icons.arrow_forward_ios_outlined,
                      ),
                      AccountListTile(
                        function: () {},
                        leading_icon: Icons.settings,
                        title: 'Store settings',
                        trailing_icon: Icons.arrow_forward_ios_outlined,
                      ),
                      AccountListTile(
                        function: () {},
                        leading_icon: Icons.help,
                        title: 'help center',
                        trailing_icon: Icons.arrow_forward_ios_outlined,
                      ),
                      AccountListTile(
                        function: () {},
                        leading_icon: Icons.help,
                        title: 'Redshop Community',
                        trailing_icon: Icons.arrow_forward_ios_outlined,
                      ),
                      AccountListTile(
                        function: () {},
                        leading_icon: Icons.support_outlined,
                        title: 'Support',
                        trailing_icon: Icons.arrow_forward_ios_outlined,
                      ),
                    ],
                  ),
                ),
              ),
              Wrap(
                spacing: 18,
                children: [
                  AccountBox(
                    title: 'Suggestions',
                    icon: Icons.wb_sunny_outlined,
                  ),
                  AccountBox(
                    title: 'Bug Report',
                    icon: Icons.error_outline,
                  ),
                  AccountBox(
                    title: 'Redshop Web',
                    icon: Icons.web_asset_outlined,
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(6),
                  ),
                  child: Wrap(
                    children: [
                      AccountListTile(
                        function: () {},
                        leading_icon: Icons.rate_review,
                        title: 'Rate Us',
                        trailing_icon: Icons.arrow_forward_ios_outlined,
                      ),
                      AccountListTile(
                        function: () {},
                        leading_icon: Icons.logout_outlined,
                        title: 'Log Out',
                        trailing_icon: Icons.arrow_forward_ios_outlined,
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    ));
  }
}
