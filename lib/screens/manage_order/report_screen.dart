import 'package:flutter/material.dart';
import 'package:red_business247/screens/shop_management_screens/settings_screen.dart';
import 'package:red_business247/utils/const.dart';
import 'package:red_business247/widgets/custom_button.dart';
import 'package:red_business247/widgets/custom_text_field.dart';
import 'package:table_calendar/table_calendar.dart';

class ReportScreen extends StatefulWidget {
  const ReportScreen({Key? key}) : super(key: key);

  @override
  State<ReportScreen> createState() => _ReportScreenState();
}

class _ReportScreenState extends State<ReportScreen> {
  List<String> payment_method = [
    'All',
    'Flutterwave',
    'Razorpay',
    'Paytm',
    'Stripe',
    'Paystack',
    'Paypal',
    'Mollie',
    'Mercadopago',
    'Authorize.net',
    'Bank of America'
  ];
  String? selected_pay_method = 'All';
  List<String> payment_status = ['All', 'Pending', 'Complete'];
  String? selected_pay_status = 'All';
  List<String> order_status = [
    'All',
    'Pending',
    'Processing',
    'Completed',
    'Rejected'
  ];
  String? selected_order_status = 'All';

  TextEditingController _fromDateController = TextEditingController();
  TextEditingController _toDateController = TextEditingController();
  TextEditingController _payMethodController = TextEditingController();
  TextEditingController _payStatusController = TextEditingController();
  TextEditingController _orderStatusController = TextEditingController();

  DateTime today = DateTime.now();
  void _tableCalendar() {
    TableCalendar(
        focusedDay: today,
        firstDay: DateTime.utc(2010, 1, 1),
        lastDay: DateTime.utc(2030, 12, 31));
  }

  void _showDatePicker() {
    showDatePicker(
            context: context,
            initialDate: today,
            firstDate: DateTime.utc(2010, 1, 1),
            lastDate: DateTime.utc(2030, 12, 31))
        .then((value) {
      setState(() {
        today = value!;
      });
    });
  }

  void _showDatePickerSecond() {
    showDatePicker(
            context: context,
            initialDate: today,
            firstDate: DateTime.utc(2010, 1, 1),
            lastDate: DateTime.utc(2030, 12, 31))
        .then((value) {
      setState(() {
        today = value!;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Do you want to report?"),
        centerTitle: true,
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          child: Column(
            children: [
              CustomTextField(
                controller: _fromDateController,
                labelText: today.toString().split(" ")[0],
                title: 'From',
                textStyle: keywordTextStyle.copyWith(
                    fontWeight: FontWeight.w600, fontSize: 18),
                sufffixIcon: IconButton(
                    onPressed: _showDatePicker,
                    icon: Icon(Icons.calendar_month_outlined)),
              ),
              /*use table_calendar package and use it for show calendar
              // Center(
              //   child: IconButton(
              //       onPressed: _tableCalendar,
              //       icon: Icon(Icons.calendar_month_outlined)),
              // ),
              // Text("Selected Day = " + today.toString().split(" ")[0]),

               */
              SizedBox(
                height: 20,
              ),
              CustomTextField(
                controller: _toDateController,
                labelText: today.toString().split(" ")[0],
                title: 'To',
                textStyle: keywordTextStyle.copyWith(
                    fontWeight: FontWeight.w600, fontSize: 18),
                sufffixIcon: IconButton(
                    onPressed: _showDatePickerSecond,
                    icon: Icon(Icons.calendar_month_outlined)),
              ),
              SizedBox(
                height: 20,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Payment Method",
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
                            hintText: "Select a payment method",
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(6))),
                        items: payment_method
                            .map((item) => DropdownMenuItem(
                                value: item, child: Text(item)))
                            .toList(),
                        onChanged: (item) {
                          setState(() {
                            selected_pay_method = item;
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
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(6))),
                        items: payment_status
                            .map((item) => DropdownMenuItem(
                                value: item, child: Text(item)))
                            .toList(),
                        onChanged: (item) {
                          setState(() {
                            selected_pay_status = item;
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
                            hintText: "Select a order status",
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(6))),
                        items: order_status
                            .map((item) => DropdownMenuItem(
                                value: item, child: Text(item)))
                            .toList(),
                        onChanged: (item) {
                          setState(() {
                            selected_order_status = item;
                          });
                        }),
                  )
                ],
              ),
              SizedBox(
                height: 50,
              ),
              CustomButton(
                  onTap: () {
                    showModalBottomSheet(
                        context: context,
                        builder: (context) => Center(
                              child: Column(
                                children: [
                                  // Text(
                                  //   "From: _fromDateController.text",
                                  //   style: keywordTextStyle.copyWith(
                                  //       fontSize: 20),
                                  // ),
                                  Text(
                                    "Submitted",
                                    style:
                                        keywordTextStyle.copyWith(fontSize: 20),
                                  ),
                                ],
                              ),
                            ));
                  },
                  buttonText: 'Submit',
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
