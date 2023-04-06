import 'package:flutter/material.dart';
import 'package:red_business247/screens/shop_management_screens/settings_screen.dart';
import 'package:red_business247/utils/const.dart';
import 'package:red_business247/widgets/custom_button.dart';
import 'package:red_business247/widgets/custom_text_form_field.dart';

class PasswordChangeScreen extends StatefulWidget {
  const PasswordChangeScreen({Key? key}) : super(key: key);

  @override
  State<PasswordChangeScreen> createState() => _PasswordChangeScreenState();
}

class _PasswordChangeScreenState extends State<PasswordChangeScreen> {
  TextEditingController _currentPassController = TextEditingController();
  TextEditingController _newPassController = TextEditingController();
  TextEditingController _confirmNewPassController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Update Password"),
        centerTitle: true,
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 18),
              child: Text(
                "Current Password",
                style: hintTextStyle.copyWith(fontWeight: FontWeight.w600),
              ),
            ),
            CustomTextFormField(
              hintText: 'Current Password',
              hintStyle: hintTextStyle.copyWith(color: Color(0xffFF6B6B)),
              controller: _currentPassController,
              validator: (value) {
                if (value!.isEmpty) {
                  return "Please enter your password";
                }
                if (value.length < 5) {
                  return "Your password is too short";
                }
              },
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 18),
              child: Text(
                "New Password",
                style: hintTextStyle.copyWith(fontWeight: FontWeight.w600),
              ),
            ),
            CustomTextFormField(
              hintText: 'New Password',
              hintStyle: hintTextStyle.copyWith(color: Color(0xffFF6B6B)),
              controller: _newPassController,
              validator: (value) {
                if (value!.isEmpty) {
                  return "Please enter your password";
                }
                if (value.length < 5) {
                  return "Your password is too short";
                }
              },
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 18),
              child: Text(
                "New Password Again",
                style: hintTextStyle.copyWith(fontWeight: FontWeight.w600),
              ),
            ),
            CustomTextFormField(
              hintText: 'New Password Again',
              hintStyle: hintTextStyle.copyWith(color: Color(0xffFF6B6B)),
              controller: _confirmNewPassController,
              validator: (value) {
                if (value!.isEmpty) {
                  return "Please enter your password";
                }
                if (value.length < 5) {
                  return "Your password is too short";
                }
              },
            ),
            SizedBox(
              height: 50,
            ),
            CustomButton(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => SettingsScreen()));
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
