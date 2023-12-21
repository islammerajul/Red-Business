import 'package:flutter/material.dart';
import 'package:red_business247/models/category_item_model.dart';
import 'package:red_business247/screens/shop_management_screens/items/item_details.dart';
import 'package:red_business247/utils/const.dart';
import 'package:red_business247/widgets/show_item.dart';

class ItemScreen extends StatefulWidget {
  ItemScreen({Key? key}) : super(key: key);

  final categoryItem_list = CategoryItemModel.categoryitem();

  @override
  State<ItemScreen> createState() => _ItemScreenState();
}

class _ItemScreenState extends State<ItemScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Items"),
        centerTitle: true,
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            Expanded(
              flex: 1,
              child: GridView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  itemCount: widget.categoryItem_list.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                  ),
                  itemBuilder: (BuildContext context, int index) {
                    var cateItemInfo = widget.categoryItem_list[index];
                    return InkWell(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => ItemDetails()));
                      },
                      child: Container(
                        //height: 170,
                        //width: 170,
                        child: Column(
                          children: [
                            Image.asset(
                              "${cateItemInfo.img}",
                              height: 110,
                              width: 110,
                              fit: BoxFit.cover,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "${cateItemInfo.title}",
                              style: hintTextStyle.copyWith(
                                fontSize: 16,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  }),
            )
            // Wrap(
            //   direction: Axis.horizontal,
            //   spacing: 20,
            //   runSpacing: 20,
            //   children: [
            //     ShowItem(
            //       onTap: () {},
            //       img: "assets/icons/head_phone.png",
            //       title: "Headphone & Speaker",
            //     ),
            //     ShowItem(
            //       onTap: () {},
            //       img: "assets/icons/furniture.png",
            //       title: "Interior & Furniture",
            //     ),
            //     ShowItem(
            //       onTap: () {},
            //       img: "assets/icons/fashion.png",
            //       title: "Fashion & Clothing",
            //     ),
            //     ShowItem(
            //       onTap: () {},
            //       img: "assets/icons/television.png",
            //       title: "Electronics & gadgets",
            //     ),
            //     ShowItem(
            //       onTap: () {},
            //       img: "assets/icons/camera.png",
            //       title: "Camera & Accessories",
            //     ),
            //     ShowItem(
            //       onTap: () {},
            //       img: "assets/icons/smartwatch.png",
            //       title: "Smart Watch",
            //     ),
            //     ShowItem(
            //       onTap: () {},
            //       img: "assets/icons/shirt.png",
            //       title: "Fashion & Clothing",
            //     ),
            //     ShowItem(
            //       onTap: () {},
            //       img: "assets/icons/smartphone.png",
            //       title: "Smart Phones",
            //     ),
            //     ShowItem(
            //       onTap: () {},
            //       img: "assets/icons/dress.png",
            //       title: "Fashion & Clothing",
            //     ),
            //     ShowItem(
            //       onTap: () {},
            //       img: "assets/icons/womanclothes.png",
            //       title: "Fashion & Clothing",
            //     ),
            //   ],
            // )
          ],
        ),
      ),
    );
  }
}
