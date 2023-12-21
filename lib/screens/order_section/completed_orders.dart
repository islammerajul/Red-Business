import 'package:flutter/material.dart';
import 'package:red_business247/utils/const.dart';

class CompletedOrders extends StatefulWidget {
  const CompletedOrders({Key? key}) : super(key: key);

  @override
  State<CompletedOrders> createState() => _CompletedOrdersState();
}

class _CompletedOrdersState extends State<CompletedOrders> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Completed Orders"),
        centerTitle: true,
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            ExpansionTile(
              title: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Order Number",
                    style: keywordTextStyle.copyWith(
                        fontSize: 20, fontWeight: FontWeight.w600),
                  ),
                  ListTile(
                    title: Text(
                      "#Xrw01675451498",
                      style: hintTextStyle.copyWith(
                          fontSize: 18, fontWeight: FontWeight.w600),
                    ),
                  ),
                ],
              ),
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Gateway",
                                style: hintTextStyle.copyWith(
                                    fontWeight: FontWeight.w600, fontSize: 18),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                "Bank of America",
                                style: hintTextStyle.copyWith(
                                    fontWeight: FontWeight.w200, fontSize: 18),
                              ),
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Total",
                                style: hintTextStyle.copyWith(
                                    fontWeight: FontWeight.w600, fontSize: 18),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                "\$92.7",
                                style: hintTextStyle.copyWith(
                                    fontWeight: FontWeight.w200, fontSize: 18),
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Order Status",
                            style: hintTextStyle.copyWith(
                                fontWeight: FontWeight.w600, fontSize: 18),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 120),
                            child: DropdownButtonFormField(
                                decoration: InputDecoration(
                                    hintText: "Select an order status",
                                    // filled: true,
                                    // fillColor: select_status == 'Pending'
                                    //     ? Colors.orange
                                    //     : select_status == 'Processing'
                                    //         ? Colors.blue
                                    //         : select_status == 'Completed'
                                    //             ? Colors.green
                                    //             : Colors.red,
                                    border: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(6))),
                                items: status
                                    .map((item) => DropdownMenuItem(
                                        value: item, child: Text(item)))
                                    .toList(),
                                onChanged: (item) {
                                  setState(() {
                                    select_status = item;
                                  });
                                }),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Payment Status",
                            style: hintTextStyle.copyWith(
                                fontWeight: FontWeight.w600, fontSize: 18),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 120),
                            child: DropdownButtonFormField(
                                decoration: InputDecoration(
                                    hintText: "Select a payment status",
                                    // filled: true,
                                    // fillColor: select_payment_status ==
                                    //         'Pending'
                                    //     ? Colors.orange
                                    //     : select_payment_status == 'Completed'
                                    //         ? Colors.green
                                    //         : Colors.red,
                                    border: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(6))),
                                items: payment
                                    .map((item) => DropdownMenuItem(
                                        value: item, child: Text(item)))
                                    .toList(),
                                onChanged: (item) {
                                  setState(() {
                                    select_payment_status = item;
                                  });
                                }),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Column(
                            //crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Receipt",
                                style: hintTextStyle.copyWith(
                                    fontWeight: FontWeight.w600, fontSize: 18),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                "--",
                                style: hintTextStyle.copyWith(
                                    fontWeight: FontWeight.w200, fontSize: 18),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Payment Status",
                                  style: hintTextStyle.copyWith(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 18),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(right: 120),
                                  child: DropdownButtonFormField(
                                      decoration: InputDecoration(
                                          hintText: "Select a status",
                                          // filled: true,
                                          // fillColor: Colors.blue,
                                          border: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(6))),
                                      items: actions
                                          .map((item) => DropdownMenuItem(
                                              value: item, child: Text(item)))
                                          .toList(),
                                      onChanged: (item) {
                                        setState(() {
                                          selected_action = item;
                                        });
                                      }),
                                ),
                              ])
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
    ;
  }
}
