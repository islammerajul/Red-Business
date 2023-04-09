import 'package:flutter/material.dart';
import 'package:red_business247/utils/const.dart';
import 'package:red_business247/widgets/active_button.dart';

class OnlineGateways extends StatefulWidget {
  const OnlineGateways({Key? key}) : super(key: key);

  @override
  State<OnlineGateways> createState() => _OnlineGatewaysState();
}

class _OnlineGatewaysState extends State<OnlineGateways> {
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
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding:
                            const EdgeInsets.only(left: 15, right: 15, top: 15),
                        child: Text(
                          "Paypal",
                          style: keywordTextStyle.copyWith(
                              fontSize: 20, fontWeight: FontWeight.w600),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              child: ActiveDeactiveButton(
                                text: 'Active',
                                onTap: () {},
                              ),
                            ),
                            Expanded(
                              child: ActiveDeactiveButton(
                                text: 'Deactive',
                                onTap: () {},
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding:
                            const EdgeInsets.only(left: 15, right: 15, top: 15),
                        child: Text(
                          "Paypal Test Mode",
                          style: keywordTextStyle.copyWith(
                              fontSize: 20, fontWeight: FontWeight.w600),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              child: ActiveDeactiveButton(
                                text: 'Active',
                                onTap: () {},
                              ),
                            ),
                            Expanded(
                              child: ActiveDeactiveButton(
                                text: 'Deactive',
                                onTap: () {},
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
