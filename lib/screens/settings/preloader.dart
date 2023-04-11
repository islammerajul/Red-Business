import 'package:flutter/material.dart';
import 'package:red_business247/utils/const.dart';
import 'package:red_business247/widgets/choose_file.dart';
import 'package:red_business247/widgets/custom_button.dart';

class Preloader extends StatefulWidget {
  const Preloader({Key? key}) : super(key: key);

  @override
  State<Preloader> createState() => _PreloaderState();
}

class _PreloaderState extends State<Preloader> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: Icon(Icons.arrow_back)),
        title: Text("Update Preloader"),
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
              padding: const EdgeInsets.all(25.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Preloader \*\*",
                    style: keywordTextStyle.copyWith(fontSize: 20),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    //padding: EdgeInsets.all(5),
                    height: MediaQuery.of(context).size.height * 0.45,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(6),
                        border: Border.all(width: 1)),
                    child: Image.asset(
                      "assets/icons/shops.PNG",
                      fit: BoxFit.fill,
                      color: Colors.blue,
                      colorBlendMode: BlendMode.colorBurn,
                      filterQuality: FilterQuality.high,
                    ),
                  ),
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
    ));
  }
}
