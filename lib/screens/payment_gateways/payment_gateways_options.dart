import 'package:flutter/material.dart';
import 'package:red_business247/screens/payment_gateways/offline_gateways.dart';
import 'package:red_business247/screens/payment_gateways/online_gateways.dart';
import 'package:red_business247/utils/const.dart';

class PaymentGateways extends StatefulWidget {
  const PaymentGateways({Key? key}) : super(key: key);

  @override
  State<PaymentGateways> createState() => _PaymentGatewaysState();
}

class _PaymentGatewaysState extends State<PaymentGateways> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Payment Gateways"),
        centerTitle: true,
        backgroundColor: Theme.of(context).primaryColor,
        actions: [
          IconButton(
              onPressed: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => OfflineGateways()));
              },
              icon: Icon(Icons.payment_outlined))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: Text(
                "To make your payment, you have to select one",
                style: keywordTextStyle.copyWith(fontSize: 20),
              ),
            ),
            Wrap(
              direction: Axis.horizontal,
              spacing: 8,
              runSpacing: 8,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => OnlineGateways()));
                  },
                  child: Card(
                    elevation: 4,
                    child: SizedBox(
                      height: 50,
                      width: 100,
                      child: Image.asset("assets/logos/paypal.png"),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {},
                  child: Card(
                    elevation: 4,
                    child: SizedBox(
                      height: 50,
                      width: 100,
                      child: Image.asset("assets/logos/stripe.jpg"),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {},
                  child: Card(
                    elevation: 4,
                    child: SizedBox(
                      height: 50,
                      width: 100,
                      child: Image.asset("assets/logos/Instamojo.jpg"),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {},
                  child: Card(
                    elevation: 4,
                    child: SizedBox(
                      height: 50,
                      width: 100,
                      child: Image.asset("assets/logos/paytm.jpg"),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {},
                  child: Card(
                    elevation: 4,
                    child: SizedBox(
                      height: 50,
                      width: 100,
                      child: Image.asset("assets/logos/Flutterwave.png"),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {},
                  child: Card(
                    elevation: 4,
                    child: SizedBox(
                      height: 50,
                      width: 100,
                      child: Image.asset("assets/logos/Paystack.jpg"),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {},
                  child: Card(
                    elevation: 4,
                    child: SizedBox(
                      height: 50,
                      width: 100,
                      child: Image.asset("assets/logos/Razorpay.png"),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {},
                  child: Card(
                    elevation: 4,
                    child: SizedBox(
                      height: 50,
                      width: 100,
                      child: Image.asset("assets/logos/Mollie Payment.jpg"),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {},
                  child: Card(
                    elevation: 4,
                    child: SizedBox(
                      height: 50,
                      width: 100,
                      child: Image.asset("assets/logos/Mercadopago.jpg"),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {},
                  child: Card(
                    elevation: 4,
                    child: SizedBox(
                      height: 50,
                      width: 100,
                      child: Image.asset("assets/logos/Authorize_Net.png"),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
