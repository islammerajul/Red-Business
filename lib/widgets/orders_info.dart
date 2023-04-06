// import 'package:flutter/material.dart';
// import 'package:red_business247/utils/const.dart';
//
// class OrdersInfo extends StatefulWidget {
//   OrdersInfo({Key? key,this.payment_gateway,this.total_amount,this.order_status_fillcolor,this.order_status_hintText}) : super(key: key);
//   String? payment_gateway;
//   String? total_amount;
//   String? order_status_hintText;
//   Color? order_status_fillcolor;
//
//
//   @override
//   State<OrdersInfo> createState() => _OrdersInfoState();
// }
//
// class _OrdersInfoState extends State<OrdersInfo> {
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.all(8.0),
//       child: Column(
//         children: [
//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//               Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Text(
//                     "Gateway",
//                     style: hintTextStyle.copyWith(
//                         fontWeight: FontWeight.w600, fontSize: 18),
//                   ),
//                   SizedBox(
//                     height: 10,
//                   ),
//                   Text(
//                     widget.payment_gateway!,
//                     style: hintTextStyle.copyWith(
//                         fontWeight: FontWeight.w200, fontSize: 18),
//                   ),
//                 ],
//               ),
//               Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Text(
//                     "Total",
//                     style: hintTextStyle.copyWith(
//                         fontWeight: FontWeight.w600, fontSize: 18),
//                   ),
//                   SizedBox(
//                     height: 10,
//                   ),
//                   Text(
//                     widget.total_amount!,
//                     style: hintTextStyle.copyWith(
//                         fontWeight: FontWeight.w200, fontSize: 18),
//                   ),
//                 ],
//               ),
//             ],
//           ),
//           SizedBox(
//             height: 20,
//           ),
//           Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Text(
//                 "Order Status",
//                 style: hintTextStyle.copyWith(
//                     fontWeight: FontWeight.w600, fontSize: 18),
//               ),
//               SizedBox(
//                 height: 10,
//               ),
//               Padding(
//                 padding: const EdgeInsets.only(right: 120),
//                 child: DropdownButtonFormField(
//                     decoration: InputDecoration(
//                         hintText: widget.order_status_hintText,
//                         filled: true,
//                         fillColor: widget.order_status_fillcolor,
//                         border: OutlineInputBorder(
//                             borderRadius:
//                             BorderRadius.circular(6))),
//                     items: status
//                         .map((item) => DropdownMenuItem(
//                         value: item, child: Text(item)))
//                         .toList(),
//                     onChanged: (item) {
//                       setState(() {
//                         select_status = item;
//                       });
//                     }),
//               )
//             ],
//           ),
//           SizedBox(
//             height: 20,
//           ),
//           Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Text(
//                 "Payment Status",
//                 style: hintTextStyle.copyWith(
//                     fontWeight: FontWeight.w600, fontSize: 18),
//               ),
//               SizedBox(
//                 height: 10,
//               ),
//               Padding(
//                 padding: const EdgeInsets.only(right: 120),
//                 child: DropdownButtonFormField(
//                     decoration: InputDecoration(
//                         hintText: "Select a payment status",
//                         filled: true,
//                         fillColor: select_payment_status ==
//                             'Pending'
//                             ? Colors.orange
//                             : select_payment_status == 'Completed'
//                             ? Colors.green
//                             : Colors.red,
//                         border: OutlineInputBorder(
//                             borderRadius:
//                             BorderRadius.circular(6))),
//                     items: payment
//                         .map((item) => DropdownMenuItem(
//                         value: item, child: Text(item)))
//                         .toList(),
//                     onChanged: (item) {
//                       setState(() {
//                         select_payment_status = item;
//                       });
//                     }),
//               ),
//               SizedBox(
//                 height: 20,
//               ),
//               Column(
//                 //crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Text(
//                     "Receipt",
//                     style: hintTextStyle.copyWith(
//                         fontWeight: FontWeight.w600, fontSize: 18),
//                   ),
//                   SizedBox(
//                     height: 10,
//                   ),
//                   Text(
//                     "--",
//                     style: hintTextStyle.copyWith(
//                         fontWeight: FontWeight.w200, fontSize: 18),
//                   ),
//                 ],
//               ),
//               SizedBox(
//                 height: 20,
//               ),
//               Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Text(
//                       "Payment Status",
//                       style: hintTextStyle.copyWith(
//                           fontWeight: FontWeight.w600,
//                           fontSize: 18),
//                     ),
//                     SizedBox(
//                       height: 10,
//                     ),
//                     Padding(
//                       padding: const EdgeInsets.only(right: 120),
//                       child: DropdownButtonFormField(
//                           decoration: InputDecoration(
//                               hintText: "Select a status",
//                               filled: true,
//                               fillColor: Colors.blue,
//                               border: OutlineInputBorder(
//                                   borderRadius:
//                                   BorderRadius.circular(6))),
//                           items: actions
//                               .map((item) => DropdownMenuItem(
//                               value: item, child: Text(item)))
//                               .toList(),
//                           onChanged: (item) {
//                             setState(() {
//                               selected_action = item;
//                             });
//                           }),
//                     ),
//                   ])
//             ],
//           )
//         ],
//       ),
//     );
//   }
// }
