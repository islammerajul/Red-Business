import 'package:flutter/material.dart';
import 'package:red_business247/screens/custom_bottom_nav_bar.dart';
import 'package:red_business247/screens/home_screen.dart';
import 'package:red_business247/screens/login_screen.dart';
import 'package:red_business247/screens/main_screen.dart';
import 'package:red_business247/screens/manage_order/all_orders.dart';
import 'package:red_business247/screens/manage_order/completed_orders.dart';
import 'package:red_business247/screens/manage_order/processing_order.dart';
import 'package:red_business247/screens/manage_order/report_screen.dart';
import 'package:red_business247/screens/payment_gateways/offline_gateways.dart';
import 'package:red_business247/screens/payment_gateways/online_gateways.dart';
import 'package:red_business247/screens/payment_gateways/payment_gateways_options.dart';
import 'package:red_business247/screens/payment_gateways/plugins.dart';
import 'package:red_business247/screens/product_screen.dart';
import 'package:red_business247/screens/profile&password_screen/change_password.dart';
import 'package:red_business247/screens/profile&password_screen/edit_profile_screen.dart';
import 'package:red_business247/screens/settings/breadcrumb.dart';
import 'package:red_business247/screens/settings/color_settings.dart';
import 'package:red_business247/screens/settings/favicon.dart';
import 'package:red_business247/screens/settings/general_settings.dart';
import 'package:red_business247/screens/settings/logo.dart';
import 'package:red_business247/screens/settings/preloader.dart';
import 'package:red_business247/screens/settings/theme_screen.dart';
import 'package:red_business247/screens/shop_management_screens/add_item/add_item_screen.dart';
import 'package:red_business247/screens/shop_management_screens/add_item/choose_item_type.dart';
import 'package:red_business247/screens/shop_management_screens/categories.dart';
import 'package:red_business247/screens/shop_management_screens/category_item_edit.dart';
import 'package:red_business247/screens/shop_management_screens/coupons.dart';
import 'package:red_business247/screens/shop_management_screens/edit_shipping_charge.dart';
import 'package:red_business247/screens/shop_management_screens/items/item_screen.dart';
import 'package:red_business247/screens/shop_management_screens/settings_screen.dart';
import 'package:red_business247/screens/shop_management_screens/shipping_charge.dart';
import 'package:red_business247/screens/shop_management_screens/subcategories.dart';
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
        primaryColor: Color(0xffdc2623),
      ),
      home: CustomBottomNavBar(),
    );
  }
}
