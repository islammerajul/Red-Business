import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:red_business247/screens/shop_management_screens/categories.dart';
import 'package:red_business247/utils/const.dart';
import 'package:red_business247/widgets/active_button.dart';
import 'package:red_business247/widgets/custom_button.dart';
import 'package:red_business247/widgets/edit&delete_button.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back)),
        title: Text("Settings"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 15),
                child: Text(
                  "Shop \*\*",
                  style: keywordTextStyle,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ActiveDeactiveButton(
                    text: 'Active',
                    onTap: () {},
                  ),
                  ActiveDeactiveButton(
                    text: 'Deactive',
                    onTap: () {},
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: AutoSizeText(
                  "By enabling / disabling, you can completely enable / disable the relevant pages of your shop in this system.",
                  style: hintTextStyle.copyWith(
                      color: Color(0xffdc2623), fontSize: 15),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 15),
                child: Text(
                  "Catalog Mode \*\*",
                  style: keywordTextStyle,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ActiveDeactiveButton(
                    text: 'Active',
                    onTap: () {},
                  ),
                  ActiveDeactiveButton(
                    text: 'Deactive',
                    onTap: () {},
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: AutoSizeText(
                  "If you enable catalog mode, then pricing, cart, checkout option of items will be removed. But item & item details page will remain.",
                  style: hintTextStyle.copyWith(
                      color: Color(0xffdc2623), fontSize: 15),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 15),
                child: Text(
                  "Rating System \*\*",
                  style: keywordTextStyle,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ActiveDeactiveButton(
                    text: 'Active',
                    onTap: () {},
                  ),
                  ActiveDeactiveButton(
                    text: 'Deactive',
                    onTap: () {},
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 15),
                child: Text(
                  "Tax \*\*",
                  style: keywordTextStyle,
                ),
              ),
              Container(
                height: 50,
                width: double.infinity,
                decoration: BoxDecoration(
                  border: Border.all(width: 0.5),
                  borderRadius: BorderRadius.circular(6),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Align(
                      alignment: Alignment.centerLeft, child: Text("0.00")),
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 100),
                child: CustomButton(
                    onTap: () {
                      // Navigator.of(context).push(MaterialPageRoute(
                      //     builder: (context) => CategoriesScreen()));
                    },
                    buttonText: 'Submit',
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
    );
  }
}
