import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:red_business247/utils/const.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Column(
            children: [
              CircleAvatar(
                radius: 200,
                child: Text("data"),
              ),
              SizedBox(
                height: 100,
              ),
              Text(
                "GO ONLINE IN SECONDS",
                style: myTextStyle,
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 45, vertical: 15),
                child: AutoSizeText(
                  "Build your website with no code and grow your business with RedShops full suite of business management tools",
                  textAlign: TextAlign.center,
                  style: myTextStyle.copyWith(
                      fontSize: 14,
                      fontWeight: FontWeight.normal,
                      color: Colors.black87),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 55,
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8), color: Colors.grey),
                child: Row(
                  children: [],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
