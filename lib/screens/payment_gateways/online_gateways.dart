import 'package:flutter/material.dart';
import 'package:red_business247/utils/const.dart';
import 'package:red_business247/widgets/active_button.dart';
import 'package:red_business247/widgets/active_deactive_section.dart';
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
          child: Column(
            children: [
              Padding(
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
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Card(
                  elevation: 5,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Text(
                          "Stripe",
                          style: keywordTextStyle.copyWith(
                              fontSize: 26, fontWeight: FontWeight.w600),
                        ),
                      ),
                      Divider(
                        color: Colors.black54,
                      ),
                      Container(
                        height: 122,
                        //height: MediaQuery.of(context).size.height * ,
                        child: ActiveDeactiveSection(
                          field_name: "Stripe ",
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: ProfileInfo(
                          fieldName: 'Stripe Key',
                          controller: _stripeKeyController,
                          keyboardType: TextInputType.text,
                          maxLine: 1,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: ProfileInfo(
                          fieldName: 'Stripe Secret',
                          controller: _stripeSecretController,
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
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Card(
                  elevation: 5,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Text(
                          "Paytm",
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
                          first_field_name: "Paytm",
                          second_field_name: "Paytm Environment",
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: ProfileInfo(
                          fieldName: 'Paytm Merchant Key',
                          controller: _paytmKeyController,
                          keyboardType: TextInputType.text,
                          maxLine: 1,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: ProfileInfo(
                          fieldName: 'Paytm Merchant mid',
                          controller: _paytmMidController,
                          keyboardType: TextInputType.text,
                          maxLine: 1,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: ProfileInfo(
                          fieldName: 'Paytm Merchant website',
                          controller: _paytmWebController,
                          keyboardType: TextInputType.text,
                          maxLine: 1,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: ProfileInfo(
                          fieldName: 'Industry type id',
                          controller: _paytmIndIDController,
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
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Card(
                  elevation: 5,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Text(
                          "Instamojo",
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
                          first_field_name: "Instamojo",
                          second_field_name: "Test Mode",
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: ProfileInfo(
                          fieldName: 'Instamojo API Key',
                          controller: _instamojoAPIKeyController,
                          keyboardType: TextInputType.text,
                          maxLine: 1,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: ProfileInfo(
                          fieldName: 'Instamojo Auth Token',
                          controller: _instamojoAuthTokenController,
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
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Card(
                  elevation: 5,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Text(
                          "Paystack",
                          style: keywordTextStyle.copyWith(
                              fontSize: 26, fontWeight: FontWeight.w600),
                        ),
                      ),
                      Divider(
                        color: Colors.black54,
                      ),
                      Container(
                        height: 122,
                        //height: MediaQuery.of(context).size.height * ,
                        child: ActiveDeactiveSection(
                          field_name: "Paystack",
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: ProfileInfo(
                          fieldName: 'Paystack Secret Key',
                          controller: _paystackKeyController,
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
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Card(
                  elevation: 5,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Text(
                          "Flutterwave",
                          style: keywordTextStyle.copyWith(
                              fontSize: 26, fontWeight: FontWeight.w600),
                        ),
                      ),
                      Divider(
                        color: Colors.black54,
                      ),
                      Container(
                        height: 122,
                        //height: MediaQuery.of(context).size.height * ,
                        child: ActiveDeactiveSection(
                          field_name: "Flutterwave",
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: ProfileInfo(
                          fieldName: 'Flutterwave Public Key',
                          controller: _flutterwaveKeyController,
                          keyboardType: TextInputType.text,
                          maxLine: 1,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: ProfileInfo(
                          fieldName: 'Flutterwave Secret Key',
                          controller: _flutterwaveSecretKeyController,
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
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Card(
                  elevation: 5,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Text(
                          "Mollie Payment",
                          style: keywordTextStyle.copyWith(
                              fontSize: 26, fontWeight: FontWeight.w600),
                        ),
                      ),
                      Divider(
                        color: Colors.black54,
                      ),
                      Container(
                        height: 122,
                        //height: MediaQuery.of(context).size.height * ,
                        child: ActiveDeactiveSection(
                          field_name: "Mollie Payment",
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: ProfileInfo(
                          fieldName: 'Mollie Payment Key',
                          controller: _mollieKeyController,
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
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Card(
                  elevation: 5,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Text(
                          "Razorpay",
                          style: keywordTextStyle.copyWith(
                              fontSize: 26, fontWeight: FontWeight.w600),
                        ),
                      ),
                      Divider(
                        color: Colors.black54,
                      ),
                      Container(
                        height: 122,
                        //height: MediaQuery.of(context).size.height * ,
                        child: ActiveDeactiveSection(
                          field_name: "Razorpay",
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: ProfileInfo(
                          fieldName: 'Razorpay Key',
                          controller: _razorpayKeyController,
                          keyboardType: TextInputType.text,
                          maxLine: 1,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: ProfileInfo(
                          fieldName: 'Razorpay Secret',
                          controller: _razorpaySecretController,
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
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Card(
                  elevation: 5,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Text(
                          "Authorize.Net",
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
                          first_field_name: "Authorize.Net",
                          second_field_name: "Authorize.Net Test Mode",
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: ProfileInfo(
                          fieldName: 'API Login ID',
                          controller: _apiLoginIDController,
                          keyboardType: TextInputType.text,
                          maxLine: 1,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: ProfileInfo(
                          fieldName: 'Transaction Key',
                          controller: _transactionKeyController,
                          keyboardType: TextInputType.text,
                          maxLine: 1,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: ProfileInfo(
                          fieldName: 'Public Client Key',
                          controller: _publicClientKeyController,
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
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Card(
                  elevation: 5,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Text(
                          "Mercadopago",
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
                          first_field_name: "Mercado Pago",
                          second_field_name: "Mercado Pago Test Mode",
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: ProfileInfo(
                          fieldName: 'Mercadopago Token',
                          controller: _mercadopagoTokenController,
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
              )
            ],
          ),
        ),
      ),
    );
  }
}
