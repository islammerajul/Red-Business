import 'package:flutter/material.dart';
import 'package:red_business247/screens/custom_bottom_nav_bar.dart';
import 'package:red_business247/screens/home_screen.dart';
import 'package:red_business247/screens/login_screen.dart';
import 'package:red_business247/screens/main_screen.dart';
import 'package:red_business247/screens/product_screen.dart';
import 'package:red_business247/screens/signup_screen.dart';
import 'package:red_business247/screens/splash_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: CustomBottomNavBar(),
    );
  }
}
