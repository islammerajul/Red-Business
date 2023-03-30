import 'package:flutter/material.dart';
import 'package:red_business247/utils/const.dart';
import 'package:red_business247/widgets/custom_text_field.dart';

class AddProduct extends StatefulWidget {
  const AddProduct({Key? key}) : super(key: key);

  @override
  State<AddProduct> createState() => _AddProductState();
}

class _AddProductState extends State<AddProduct> {
  List<String> categories = ['Cricket', 'Footbal', 'Baseball', 'Chess'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Color(0xffdc2623),
          title: Text(
            "Add Products",
          ),
          centerTitle: true,
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(Icons.arrow_back))),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Product Information",
              style: myTextStyle.copyWith(fontWeight: FontWeight.w900),
            ),
            SizedBox(
              height: 25,
            ),
            CustomTextField(
              title: 'Product Name\*',
              hintText: 'Product Name',
              hintStyle: keywordTextStyle.copyWith(fontSize: 14),
            ),
            SizedBox(
              height: 25,
            ),
            CustomTextField(
              title: 'Product Category\*',
              hintText: 'Select a category',
              hintStyle: keywordTextStyle.copyWith(fontSize: 14),
            ),
            TextButton(
                onPressed: () {},
                child: Text(
                  "Create new category",
                  style: TextStyle(color: Color(0xffdc2623)),
                )),
            SizedBox(
              height: 25,
            ),
            Row(
              children: [
                Flexible(
                  child: CustomTextField(
                    title: 'Price\*',
                    hintText: '0',
                    hintStyle: keywordTextStyle.copyWith(fontSize: 14),
                  ),
                ),
                SizedBox(
                  width: 30,
                ),
                Flexible(
                  child: CustomTextField(
                    title: 'Discount Price\*',
                    hintText: 'Discount Price',
                    hintStyle: keywordTextStyle.copyWith(fontSize: 14),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 25,
            ),
            CustomTextField(
              title: 'Product Description\*',
              hintText: 'Product Description',
              hintStyle: keywordTextStyle.copyWith(fontSize: 14),
            ),
          ],
        ),
      ),
    );
  }
}
