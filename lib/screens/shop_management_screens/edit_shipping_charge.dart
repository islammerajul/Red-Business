import 'package:flutter/material.dart';
import 'package:red_business247/utils/const.dart';
import 'package:red_business247/widgets/custom_button.dart';
import 'package:red_business247/widgets/profile_info.dart';

class EditShippingCharge extends StatefulWidget {
  const EditShippingCharge({Key? key}) : super(key: key);

  @override
  State<EditShippingCharge> createState() => _EditShippingChargeState();
}

class _EditShippingChargeState extends State<EditShippingCharge> {
  TextEditingController _titleController = TextEditingController();
  TextEditingController _subTitleController = TextEditingController();
  TextEditingController _chargeController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back)),
        title: Text("Edit Shipping Charge"),
        centerTitle: true,
        //centerTitle: true,
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ProfileInfo(
                fieldName: 'Title \*\*',
                controller: _titleController,
              ),
              SizedBox(
                height: 20,
              ),
              ProfileInfo(
                fieldName: 'Sort Text \*\*',
                controller: _subTitleController,
              ),
              SizedBox(
                height: 20,
              ),
              ProfileInfo(
                fieldName: 'Charge(\$) \*\*',
                controller: _chargeController,
              ),
              SizedBox(
                height: 50,
              ),
              CustomButton(
                  onTap: () {},
                  buttonText: 'Update',
                  myTextStyle: myTextStyle.copyWith(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
