import 'package:flutter/material.dart';
import 'package:red_business247/screens/navigation_bar_screens/account_screen.dart';
import 'package:red_business247/screens/add_product.dart';
import 'package:red_business247/screens/navigation_bar_screens/product_screen_details/categories.dart';
import 'package:red_business247/screens/navigation_bar_screens/product_screen_details/select_product.dart';
import 'package:red_business247/screens/shop_management_screens/categories.dart';

class ProductScreen extends StatefulWidget {
  const ProductScreen({Key? key}) : super(key: key);

  @override
  State<ProductScreen> createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DefaultTabController(
        initialIndex: 1,
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Color(0xffdc2623),
            bottom: TabBar(tabs: [
              Tab(
                text: 'PRODUCTS',
              ),
              Tab(
                text: 'CATEGORIES',
              ),
              Tab(
                text: 'INVENTORY',
              )
            ]),
          ),
          body: TabBarView(
              children: [SelectProduct(), Categories(), CategoriesScreen()]),
        ),
      ),
    );
  }
}
