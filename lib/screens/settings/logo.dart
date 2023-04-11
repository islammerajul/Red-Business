import 'package:flutter/material.dart';
import 'package:red_business247/utils/const.dart';
import 'package:red_business247/widgets/choose_file.dart';
import 'package:red_business247/widgets/custom_button.dart';

class Logo extends StatefulWidget {
  const Logo({Key? key}) : super(key: key);

  @override
  State<Logo> createState() => _LogoState();
}

class _LogoState extends State<Logo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: Icon(Icons.arrow_back)),
        title: Text("Update Logo"),
        centerTitle: true,
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Logo \*\*",
                    style: keywordTextStyle.copyWith(fontSize: 20),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 80,
                    width: 210,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(6),
                        border: Border.all(width: 0.5)),
                    // height: MediaQuery.of(context).size.height * 0.5,
                    // width: MediaQuery.of(context).size.width * 0.7,
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            padding: EdgeInsets.all(5),
                            height: 80,
                            width: 70,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(6),
                                border: Border.all(width: 0.1)),
                            child: Image.asset(
                              "assets/icons/shop.png",
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Text(
                          "Boutique",
                          style: keywordTextStyle.copyWith(
                              fontSize: 28,
                              fontWeight: FontWeight.bold,
                              color: Color(0xffdc2623)),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            ChooseFile(
              onTap: () {},
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Only JPG, JPEG, PNG images are allowed",
              style:
                  keywordTextStyle.copyWith(fontSize: 18, color: Colors.orange),
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
                ))
          ],
        ),
      ),
    );
  }
}
