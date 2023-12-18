import 'dart:async';

import 'package:flutter/material.dart';
import 'package:red_business247/utils/routes/routes.dart';
import 'package:red_business247/screens/home_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacementNamed(context, '/home-screen');
    });
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: CircularProgressIndicator(
            valueColor: AlwaysStoppedAnimation(Colors.red),
            strokeWidth: 5.0,
          ),
        ),
      ),
    );
  }
}
