import 'package:flutter/material.dart';
import 'package:red_business247/utils/const.dart';
import 'package:red_business247/widgets/custom_box.dart';
import 'package:red_business247/widgets/custom_large_box.dart';
import 'package:red_business247/widgets/storelink_widget.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey[100],
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Stack(
                children: [
                  Container(
                    height: 270,
                    width: double.infinity,
                    color: Colors.grey[100],
                  ),
                  Container(
                    //padding: EdgeInsets.symmetric(vertical: 10),
                    height: 200,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Color(0xffdc2623),
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(8),
                          bottomRight: Radius.circular(8)),
                    ),
                    child: Padding(
                      padding:
                          const EdgeInsets.only(left: 15, right: 15, top: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Hello,",
                            style: myTextStyle.copyWith(color: Colors.white),
                          ),
                          Icon(
                            Icons.notifications_active_sharp,
                            color: Colors.white,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    top: 60,
                    left: 15,
                    right: 15,
                    child: StoreLinkWidget(),
                  )
                ],
              ),
              Container(
                height: 50,
                width: double.infinity,
                color: Colors.black,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Container(
                  width: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Overview",
                        style: myTextStyle.copyWith(
                          fontSize: 20,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                      Wrap(
                        direction: Axis.horizontal,
                        spacing: 5,
                        children: [
                          CUstomBox(
                            titleorIcon: 'Total Sale',
                            subtitle: '৳ 0',
                          ),
                          CUstomBox(
                            titleorIcon: 'Total Order',
                            subtitle: '৳ 0',
                          ),
                          CUstomBox(
                            titleorIcon: 'Avg Order Value',
                            subtitle: '৳ 0',
                          ),
                          CUstomBox(
                            titleorIcon: 'Store Views',
                            subtitle: '9',
                          ),
                          CustomLargeBox(
                            title: 'PENDING ORDER FOR REVIEW',
                            cash: '0',
                          )
                        ],
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
