import 'package:flutter/material.dart';
import 'package:red_business247/screens/shop_management_screens/category_item_edit.dart';
import 'package:red_business247/utils/const.dart';
import 'package:red_business247/widgets/slidable_categories.dart';
import 'package:red_business247/widgets/slidable_offline_gateways.dart';

class OfflineGateways extends StatefulWidget {
  const OfflineGateways({Key? key}) : super(key: key);

  @override
  State<OfflineGateways> createState() => _OfflineGatewaysState();
}

class _OfflineGatewaysState extends State<OfflineGateways> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: Text("Offline Payment Gateways"),
        centerTitle: true,
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            // SlidableCategoryItem(
            //   leading: CircleAvatar(
            //     backgroundColor: Colors.white,
            //     radius: 30,
            //     child: Text(
            //       "1",
            //       style: keywordTextStyle.copyWith(fontSize: 24),
            //     ),
            //   ),
            //   title: 'Bank of America',
            //   subtitle: ' fdfsfds',
            //   trailing: 'abcde',
            // ),
            // SlidableCategoryItem(
            //   leading: CircleAvatar(
            //     backgroundColor: Colors.white,
            //     radius: 30,
            //     child: Text(
            //       "2",
            //       style: keywordTextStyle.copyWith(fontSize: 24),
            //     ),
            //   ),
            //   title: 'Bank of Asia',
            //   subtitle: ' fdfsfds',
            //   trailing: 'abcde',
            // ),
            // SlidableCategoryItem(
            //   leading: CircleAvatar(
            //     backgroundColor: Colors.white,
            //     radius: 30,
            //     child: Text(
            //       "3",
            //       style: keywordTextStyle.copyWith(fontSize: 24),
            //     ),
            //   ),
            //   title: 'Fedarel Reserve Bank',
            //   subtitle: ' fdfsfds',
            //   trailing: 'abcde',
            // ),
            // SlidableCategoryItem(
            //   leading: CircleAvatar(
            //     backgroundColor: Colors.white,
            //     radius: 30,
            //     child: Text(
            //       "4",
            //       style: keywordTextStyle.copyWith(fontSize: 24),
            //     ),
            //   ),
            //   title: 'Switch Bank',
            //   subtitle: ' fdfsfds',
            //   trailing: 'abcde',
            // ),
            // SlidableCategoryItem(
            //   leading: CircleAvatar(
            //     backgroundColor: Colors.white,
            //     radius: 30,
            //     child: Text(
            //       "5",
            //       style: keywordTextStyle.copyWith(fontSize: 24),
            //     ),
            //   ),
            //   title: 'ADB Bank',
            //   subtitle: ' fdfsfds',
            //   trailing: 'abcde',
            // ),
            SlidableOfflineGateways(
              leading: CircleAvatar(
                backgroundColor: Colors.white,
                radius: 30,
                child: Text(
                  "1",
                  style: keywordTextStyle.copyWith(fontSize: 24),
                ),
              ),
              title: 'Bank of America',
            ),
            SizedBox(
              height: 20,
            ),
            SlidableOfflineGateways(
              leading: CircleAvatar(
                backgroundColor: Colors.white,
                radius: 30,
                child: Text(
                  "2",
                  style: keywordTextStyle.copyWith(fontSize: 24),
                ),
              ),
              title: 'Bank of Asia',
            ),
            SizedBox(
              height: 20,
            ),
            SlidableOfflineGateways(
              leading: CircleAvatar(
                backgroundColor: Colors.white,
                radius: 30,
                child: Text(
                  "3",
                  style: keywordTextStyle.copyWith(fontSize: 24),
                ),
              ),
              title: 'Fedarel Reserve Bank',
            ),
            SizedBox(
              height: 20,
            ),
            SlidableOfflineGateways(
              leading: CircleAvatar(
                backgroundColor: Colors.white,
                radius: 30,
                child: Text(
                  "4",
                  style: keywordTextStyle.copyWith(fontSize: 24),
                ),
              ),
              title: 'Switch Bank',
            ),
            SizedBox(
              height: 20,
            ),
            SlidableOfflineGateways(
              leading: CircleAvatar(
                backgroundColor: Colors.white,
                radius: 30,
                child: Text(
                  "5",
                  style: keywordTextStyle.copyWith(fontSize: 24),
                ),
              ),
              title: 'ADB Bank',
            )
          ],
        ),
      ),
    ));
  }

  // Dialog() {
  //   showModalBottomSheet(
  //       context: context,
  //       builder: (_) {
  //         return Container(
  //           height: MediaQuery.of(context).size.height * 0.8,
  //           decoration: BoxDecoration(
  //             color: Colors.green,
  //             borderRadius: BorderRadius.circular(25),
  //           ),
  //         );
  //       });
  // }
}
