import 'package:flutter/material.dart';
import 'package:red_business247/screens/home_screen.dart';
import 'package:red_business247/screens/login_screen.dart';
import 'package:red_business247/screens/navigation_bar_screens/custom_bottom_nav_bar.dart';
import 'package:red_business247/screens/profile&password_screen/change_password.dart';
import 'package:red_business247/screens/signup_screen.dart';
import 'package:red_business247/screens/splash_screen.dart';

class Routes {
  Routes._();
  //static variables
  static const String splash = '/splash';
  static const String loginScreen = '/login-screen';
  static const String homeScreen = '/home-screen';
  static const String signupScreen = '/signup-screen';
  static const String customNavigationBarScreen = '/customNavigation-barScreen';
  static const String passwordChangeScreen = '/passwordChangeScreen';
  //static const String teacherLogin = '/teacher-login';



  static const String dashboard = '/dashboard';

  static const String createStudent = '/create-student';
  static const String student = '/student';
  static const String createBatch = '/create-batch';
  static const String createNotice = '/create-notice';
  static const String noticeList = '/notice-list';
  static const String profile = '/profile';


  static final routes = <String, WidgetBuilder>{
    splash: (BuildContext context) => const SplashScreen(),
    loginScreen: (BuildContext context) => LoginScreen(),
    homeScreen: (BuildContext context) => const HomeScreen(),
    signupScreen: (BuildContext context) => const SignUpScreen(),
    customNavigationBarScreen: (BuildContext context) => const CustomBottomNavBar(),
    passwordChangeScreen: (BuildContext context) => const PasswordChangeScreen(),


    // dashboard: (BuildContext context) => const TuitionFeesScreen(),
    //
    // createStudent: (BuildContext context) => const CreateStudentScreen(),

  };
}
