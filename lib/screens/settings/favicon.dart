import 'package:flutter/material.dart';
import 'package:red_business247/utils/const.dart';
import 'package:red_business247/widgets/choose_file.dart';
import 'package:red_business247/widgets/custom_button.dart';

class Favicon extends StatefulWidget {
  const Favicon({Key? key}) : super(key: key);

  @override
  State<Favicon> createState() => _FaviconState();
}

class _FaviconState extends State<Favicon> {
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
          title: Text("Update Favicon"),
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
                      "Favicon \*\*",
                      style: keywordTextStyle.copyWith(fontSize: 20),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      padding: EdgeInsets.all(5),
                      height: MediaQuery.of(context).size.height * 0.5,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          border: Border.all(width: 1)),
                      child: Image.asset(
                        "assets/icons/shop.png",
                        fit: BoxFit.cover,
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
      ),
    );
  }
}
