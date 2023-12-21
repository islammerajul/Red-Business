import 'package:flutter/material.dart';
import 'package:red_business247/widgets/slidable_categories.dart';

class Subcategory extends StatefulWidget {
  const Subcategory({Key? key}) : super(key: key);

  @override
  State<Subcategory> createState() => _SubcategoryState();
}

class _SubcategoryState extends State<Subcategory> {
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
          title: Text("Subcategories"),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              SlidableCategoryItem(
                leading: CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 30,
                  child: Image.asset(
                    "assets/icons/head_phone.png",
                    width: 35,
                    fit: BoxFit.cover,
                  ),
                ),
                //img: "assets/icons/head_phone.png",
                title: "Headphone",
                subtitle: "Headphone & Speaker",
                trailing: "Available",
              ),
              SlidableCategoryItem(
                leading: CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 30,
                  child: Image.asset(
                    "assets/icons/camera.png",
                    width: 35,
                    fit: BoxFit.cover,
                  ),
                ),
                //img: "assets/icons/camera.png",
                title: "Camera & Accessories",
                subtitle: "Electronics items",
                trailing: "Available",
              ),
              SlidableCategoryItem(
                leading: CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 30,
                  child: Image.asset(
                    "assets/icons/furniture.png",
                    width: 35,
                    fit: BoxFit.cover,
                  ),
                ),
                //img: "assets/icons/furniture.png",
                title: "Furniture",
                subtitle: "Interior & Furniture",
                trailing: "Available",
              ),
              SlidableCategoryItem(
                leading: CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 30,
                  child: Image.asset(
                    "assets/icons/camera.png",
                    width: 35,
                    fit: BoxFit.cover,
                  ),
                ),
                //img: "assets/icons/fashion.png",
                title: "Fashion Accessories",
                subtitle: "Fashion & Clothing",
                trailing: "Available",
              ),
              SlidableCategoryItem(
                leading: CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 30,
                  child: Image.asset(
                    "assets/icons/smart_watch.png",
                    width: 35,
                    fit: BoxFit.cover,
                  ),
                ),
                //img: "assets/icons/smart_watch.png",
                title: "Smart Watch",
                subtitle: "Electronics items",
                trailing: "Available",
              ),
              SlidableCategoryItem(
                leading: CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 30,
                  child: Image.asset(
                    "assets/icons/womanclothes.png",
                    width: 35,
                    fit: BoxFit.cover,
                  ),
                ),
                //img: "assets/icons/women_dress.png",
                title: "Women Clothing",
                subtitle: "Fashion & Clothing",
                trailing: "Available",
              ),
              SlidableCategoryItem(
                leading: CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 30,
                  child: Image.asset(
                    "assets/icons/shirt.png",
                    width: 35,
                    fit: BoxFit.cover,
                  ),
                ),
                //img: "assets/icons/wen's_dress.jpg",
                title: "men's Clothing",
                subtitle: "Fashion & Clothing",
                trailing: "Available",
              ),
              SlidableCategoryItem(
                leading: CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 30,
                  child: Image.asset(
                    "assets/icons/baby_dress.png",
                    width: 35,
                    fit: BoxFit.cover,
                  ),
                ),
                //img: "assets/icons/baby_dress.png",
                title: "baby Clothing",
                subtitle: "Fashion & Clothing",
                trailing: "Available",
              ),
              SlidableCategoryItem(
                leading: CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 30,
                  child: Image.asset(
                    "assets/icons/smart_phone.png",
                    width: 35,
                    fit: BoxFit.cover,
                  ),
                ),
                //img: "assets/icons/smart_phone.png",
                title: "Smartphone",
                subtitle: "Electronics & gadgets",
                trailing: "Available",
              ),
              SlidableCategoryItem(
                leading: CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 30,
                  child: Image.asset(
                    "assets/icons/fashion.png",
                    width: 35,
                    fit: BoxFit.cover,
                  ),
                ),
                //img: "assets/icons/fashion.png",
                title: "Fashion & Clothing",
                subtitle: "Clothing",
                trailing: "Available",
              ),
              SlidableCategoryItem(
                leading: CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 30,
                  child: Image.asset(
                    "assets/icons/camera.png",
                    width: 35,
                    fit: BoxFit.cover,
                  ),
                ),
                //img: "assets/icons/camera.png",
                title: "Camera & Accessories",
                subtitle: "Electronics items",
                trailing: "Available",
              ),
            ],
          ),
        ));
  }
}
