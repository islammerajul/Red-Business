import 'package:flutter/material.dart';
import 'package:red_business247/models/item_model.dart';
import 'package:red_business247/screens/demo.dart';
import 'package:red_business247/utils/const.dart';

class ItemDetails extends StatefulWidget {
  ItemDetails({Key? key}) : super(key: key);

  final item_list = ItemModel.items();

  @override
  State<ItemDetails> createState() => _ItemDetailsState();
}

class _ItemDetailsState extends State<ItemDetails> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(top: 16,left: 10,right: 10),
          child: Column(
            children: [
              Expanded(
                  flex: 1,
                  child: ListView.builder(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemCount: widget.item_list.length,
                      itemBuilder: (BuildContext context, int index) {
                        var itemInfo = widget.item_list[index];
                        return InkWell(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => DemoScreen()));
                          },
                          child: Container(
                            child: Stack(
                              children: [
                                Padding(
                                  padding:
                                      const EdgeInsets.symmetric(horizontal: 10),
                                  child: Container(
                                    // width: 300,
                                    // height: 300,
                                    child: Image.asset(
                                      "${itemInfo.img}",
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                ),
                                Positioned(
                                  child: Text(
                                    "${itemInfo.title}",
                                    style: keywordTextStyle.copyWith(
                                        fontSize: 22, color: Colors.white),
                                  ),
                                  bottom: 50,
                                  left: 160,
                                  right: 20,
                                ),
                                Positioned(
                                  child: Text(
                                    "${itemInfo.price}",
                                    style: keywordTextStyle.copyWith(
                                        fontSize: 16, color: Colors.red),
                                  ),
                                  bottom: 30,
                                  left: 160,
                                  right: 20,
                                ),
                              ],
                            ),
                          ),
                        );
                      })),
              SizedBox(
                height: 20,
              ),
              Text(
                "Related Items",
                style: keywordTextStyle.copyWith(
                    fontWeight: FontWeight.bold, fontSize: 24),
              ),
              Divider(
                thickness: 3,
              ),
              SizedBox(
                height: 20,
              ),
              Expanded(
                  flex: 2,
                  child: GridView.builder(
                      shrinkWrap: true,
                      scrollDirection: Axis.vertical,
                      itemCount: widget.item_list.length,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          //mainAxisExtent: 300,
                          crossAxisSpacing: 10,
                          mainAxisSpacing: 10),
                      itemBuilder: (BuildContext context, int index) {
                        var itemInfo = widget.item_list[index];
                        return Stack(
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 10),
                              child: Container(
                                // width: 100,
                                // height: 100,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Image.asset(
                                  "${itemInfo.img}",
                                  height: 200,
                                  width: 200,
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ),
                            Positioned(
                              child: Text(
                                "${itemInfo.title}",
                                style: keywordTextStyle.copyWith(
                                    fontSize: 18, color: Colors.white),
                              ),
                              bottom: 30,
                              left: 50,
                              right: 20,
                            ),
                            Positioned(
                              child: Text(
                                "${itemInfo.price}",
                                style: keywordTextStyle.copyWith(
                                    fontSize: 14, color: Colors.red),
                              ),
                              bottom: 15,
                              left: 50,
                              right: 20,
                            ),
                          ],
                        );
                      }))
            ],
          ),
        ),
      ),
    );
  }
}

/*
GridView.builder(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: widget.item_list.length,
                    gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                        maxCrossAxisExtent: 800,
                        mainAxisExtent: 300,
                        childAspectRatio: 1 / 2,
                        crossAxisSpacing: 10,
                        mainAxisSpacing: 10),
                    itemBuilder: (BuildContext context, int index) {
                      var itemInfo = widget.item_list[index];
                      return Stack(
                        children: [
                          Container(
                            width: 300,
                            height: 300,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Image.asset(
                              "${itemInfo.img}",
                              fit: BoxFit.fill,
                            ),
                          )
                        ],
                      );
                    })
 */
