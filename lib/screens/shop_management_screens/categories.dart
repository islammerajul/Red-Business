import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:red_business247/screens/shop_management_screens/subcategories.dart';
import 'package:red_business247/utils/const.dart';

import 'package:red_business247/widgets/edit&delete_button.dart';
import 'package:red_business247/widgets/slidable_categories.dart';

class CategoriesScreen extends StatefulWidget {
  const CategoriesScreen({Key? key}) : super(key: key);

  @override
  State<CategoriesScreen> createState() => _CategoriesScreenState();
}

class _CategoriesScreenState extends State<CategoriesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).primaryColor,
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(Icons.arrow_back)),
          title: Text("Categories"),
          centerTitle: true,
          actions: [
            IconButton(
                onPressed: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => Subcategory()));
                },
                icon: Icon(Icons.subject_outlined))
          ],
        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              SlidableCategoryItem(
                img: "assets/icons/head_phone.png",
                title: "Headphone & Speaker",
                subtitle: "Electronics items",
                trailing: "Available",
              ),
              SlidableCategoryItem(
                img: "assets/icons/camera.png",
                title: "Camera & Accessories",
                subtitle: "Electronics items",
                trailing: "Available",
              ),
              SlidableCategoryItem(
                img: "assets/icons/smart_watch.png",
                title: "Smart Watch",
                subtitle: "Electronics items",
                trailing: "Available",
              ),
              SlidableCategoryItem(
                img: "assets/icons/furniture.png",
                title: "Interior & Furniture",
                subtitle: "Furniture",
                trailing: "Available",
              ),
              SlidableCategoryItem(
                img: "assets/icons/fashion.png",
                title: "Fashion & Clothing",
                subtitle: "Clothing",
                trailing: "Available",
              ),
              SlidableCategoryItem(
                img: "assets/icons/head_phone.png",
                title: "Headphone & Speaker",
                subtitle: "Electronics items",
                trailing: "Available",
              ),
              SlidableCategoryItem(
                img: "assets/icons/camera.png",
                title: "Camera & Accessories",
                subtitle: "Electronics items",
                trailing: "Available",
              ),
              SlidableCategoryItem(
                img: "assets/icons/smart_watch.png",
                title: "Smart Watch",
                subtitle: "Electronics items",
                trailing: "Available",
              ),
              SlidableCategoryItem(
                img: "assets/icons/furniture.png",
                title: "Interior & Furniture",
                subtitle: "Furniture",
                trailing: "Available",
              ),
              SlidableCategoryItem(
                img: "assets/icons/fashion.png",
                title: "Fashion & Clothing",
                subtitle: "Clothing",
                trailing: "Available",
              ),
              SlidableCategoryItem(
                img: "assets/icons/camera.png",
                title: "Camera & Accessories",
                subtitle: "Electronics items",
                trailing: "Available",
              ),
            ],
          ),
        ));
  }
}
