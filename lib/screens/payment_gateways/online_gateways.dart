import 'package:flutter/material.dart';
import 'package:red_business247/utils/const.dart';
import 'package:red_business247/widgets/active_button.dart';
import 'package:red_business247/widgets/custom_button.dart';
import 'package:red_business247/widgets/profile_info.dart';
import 'package:red_business247/widgets/two_active_deactive_section.dart';

class OnlineGateways extends StatefulWidget {
  const OnlineGateways({Key? key}) : super(key: key);

  @override
  State<OnlineGateways> createState() => _OnlineGatewaysState();
}

class _OnlineGatewaysState extends State<OnlineGateways> {
  TextEditingController _paypalIDController = TextEditingController();
  TextEditingController _paypalSecretController = TextEditingController();
  TextEditingController _stripeKeyController = TextEditingController();
  TextEditingController _stripeSecretController = TextEditingController();
  TextEditingController _paytmKeyController = TextEditingController();
  TextEditingController _paytmMidController = TextEditingController();
  TextEditingController _paytmWebController = TextEditingController();
  TextEditingController _paytmIndIDController = TextEditingController();
  TextEditingController _instamojoAPIKeyController = TextEditingController();
  TextEditingController _instamojoAuthTokenController = TextEditingController();
  TextEditingController _paystackKeyController = TextEditingController();
  TextEditingController _flutterwaveKeyController = TextEditingController();
  TextEditingController _flutterwaveSecretKeyController =
      TextEditingController();
  TextEditingController _mollieKeyController = TextEditingController();
  TextEditingController _razorpayKeyController = TextEditingController();
  TextEditingController _razorpaySecretController = TextEditingController();
  TextEditingController _apiLoginIDController = TextEditingController();
  TextEditingController _transactionKeyController = TextEditingController();
  TextEditingController _publicClientKeyController = TextEditingController();
  TextEditingController _mercadopagoTokenController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Online Payment Gateways"),
          centerTitle: true,
          backgroundColor: Theme.of(context).primaryColor,
        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Card(
              elevation: 5,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Text(
                      "Paypal",
                      style: keywordTextStyle.copyWith(
                          fontSize: 26, fontWeight: FontWeight.w600),
                    ),
                  ),
                  Divider(
                    color: Colors.black54,
                  ),
                  Container(
                    height: 245,
                    //height: MediaQuery.of(context).size.height * ,
                    child: TwoActiveDeactiveSection(
                      first_field_name: "Paypal",
                      second_field_name: "Paypal Test Mode",
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: ProfileInfo(
                      fieldName: 'Paypal Client ID',
                      controller: _paypalIDController,
                      keyboardType: TextInputType.text,
                      maxLine: 1,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: ProfileInfo(
                      fieldName: 'Paypal Client Secret',
                      controller: _paypalSecretController,
                      keyboardType: TextInputType.text,
                      maxLine: 1,
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Divider(
                    color: Colors.black54,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 50, vertical: 25),
                    child: CustomButton(
                        onTap: () {},
                        buttonText: 'Update',
                        myTextStyle: myTextStyle.copyWith(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                        )),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
