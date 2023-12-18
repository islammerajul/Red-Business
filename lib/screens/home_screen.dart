import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:red_business247/utils/routes/routes.dart';
import 'package:red_business247/screens/login_screen.dart';
import 'package:red_business247/screens/signup_screen.dart';
import 'package:red_business247/utils/const.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int button = 0; //0 for register 1 for login
  List<String> name = [
    'Rony bhaiya',
    'Shourav vai',
    'Paul vai',
    'Tawhid vai',
    'Nahid vai'
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Column(
            children: [
              Container(
                height: 350,
                width: double.infinity,
                child: ListView.builder(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: name.length,
                    itemBuilder: (BuildContext context, int index) {
                      return CircleAvatar(
                        radius: 200,
                        child: Text("${name[index]}"),
                      );
                    }),
              ),
              SizedBox(
                height: 100,
              ),
              Text(
                "GO ONLINE IN SECONDS",
                style: myTextStyle.copyWith(fontSize: 22),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 45, vertical: 15),
                child: AutoSizeText(
                  "Build your website with no code and grow your business with RedShops full suite of business management tools",
                  textAlign: TextAlign.center,
                  style: myTextStyle.copyWith(
                      fontSize: 13,
                      fontWeight: FontWeight.normal,
                      color: Colors.black87),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 50,
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.grey[400]),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: InkWell(

                        child: Container(
                          height: 50,
                          decoration: button == 0
                              ? BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  border: Border.all(width: 0.5),
                                  color: Colors.white,
                                )
                              : null,
                          child: Center(child: Text("Register")),
                        ),
                        onTap: () {
                          setState(() {
                            print(button);
                            button = 0;
                            Navigator.pushReplacementNamed(context, Routes.signupScreen);
                          });
                          // Navigator.of(context).push(MaterialPageRoute(
                          //     builder: (context) => SignUpScreen()));
                        },
                      ),
                    ),
                    Expanded(
                      child: InkWell(
                        child: Container(
                          height: 50,
                          decoration: button == 1
                              ? BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  border: Border.all(width: 0.5),
                                  color: Colors.white,
                                )
                              : null,
                          child: Center(child: Text("Login")),
                        ),
                        onTap: () {
                          setState(() {
                            button = 1;
                            print(button);
                            Navigator.pushReplacementNamed(context, Routes.loginScreen);
                          });
                          // Navigator.of(context).push(MaterialPageRoute(
                          //     builder: (context) => LoginScreen()));
                        },
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
