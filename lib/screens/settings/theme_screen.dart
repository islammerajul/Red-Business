import 'package:flutter/material.dart';
import 'package:red_business247/models/themes_model.dart';
import 'package:red_business247/utils/const.dart';
import 'package:red_business247/widgets/custom_button.dart';

class ThemeScreen extends StatefulWidget {
  ThemeScreen({Key? key}) : super(key: key);
  final theme_list = Themes.themeData();

  @override
  State<ThemeScreen> createState() => _ThemeScreenState();
}

class _ThemeScreenState extends State<ThemeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: Icon(Icons.arrow_back)),
        title: Text("Theme Settings"),
        centerTitle: true,
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            Expanded(
              flex: 2,
              child: GridView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  itemCount: widget.theme_list.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2),
                  itemBuilder: (BuildContext context, int index) {
                    var themeInfo = widget.theme_list[index];
                    return Column(
                      children: [
                        InkWell(
                          onTap: () {},
                          child: Container(
                            height: 140,
                            width: 140,
                            child: Image.asset(
                              "${themeInfo.img}",
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "${themeInfo.title}",
                          style: keywordTextStyle.copyWith(fontSize: 18),
                        ),
                      ],
                    );
                  }),
            ),
            SizedBox(
              height: 50,
            ),
            CustomButton(
                onTap: () {},
                buttonText: 'Update',
                myTextStyle: myTextStyle.copyWith(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                )),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),

      // body: ListView.builder(
      //     itemCount: widget.theme_list.length,
      //     itemBuilder: (BuildContext context, int index) {
      //       var themeInfo = widget.theme_list[index];
      //       return Column(
      //         children: [
      //           Container(
      //             height: 100,
      //             width: 100,
      //             child: Image.asset(
      //               "${themeInfo.img}",
      //               fit: BoxFit.cover,
      //             ),
      //           ),
      //           SizedBox(
      //             height: 10,
      //           ),
      //           Text(
      //             "${themeInfo.title}",
      //             style: keywordTextStyle.copyWith(fontSize: 18),
      //           ),
      //         ],
      //       );
      //     }),
    );
  }
}
