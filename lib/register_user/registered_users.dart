import 'package:flutter/material.dart';
import 'package:red_business247/utils/const.dart';
import 'package:red_business247/widgets/custom_text_field.dart';
import 'package:red_business247/widgets/fixed_info.dart';

class RegisteredUsers extends StatefulWidget {
  const RegisteredUsers({Key? key}) : super(key: key);

  @override
  State<RegisteredUsers> createState() => _RegisteredUsersState();
}

class _RegisteredUsersState extends State<RegisteredUsers> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              children: [
                Card(
                  elevation: 10,
                  //shadowColor: Colors.green,
                  child: Container(
                    padding: EdgeInsets.all(15),
                    width: double.infinity,
                    color: Colors.green.withOpacity(0.5),
                    child: FixedInfo(
                      title: 'Username :',
                      value: 'nakayos',
                      e_title: 'Email :',
                      e_value: 'nakayos292@prolug.com',
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Card(
                  elevation: 10,
                  //shadowColor: Colors.green,
                  child: Container(
                    padding: EdgeInsets.all(15),
                    width: double.infinity,
                    color: Colors.green.withOpacity(0.5),
                    child: FixedInfo(
                      title: 'Username :',
                      value: 'andy3743',
                      e_title: 'Email :',
                      e_value: 'andy3743@cartoutz.com',
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Card(
                  elevation: 10,
                  //shadowColor: Colors.green,
                  child: Container(
                    padding: EdgeInsets.all(15),
                    width: double.infinity,
                    color: Colors.green.withOpacity(0.5),
                    child: FixedInfo(
                      title: 'Username :',
                      value: 'roni',
                      e_title: 'Email :',
                      e_value: 'naimul.roni@gmail.com',
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
