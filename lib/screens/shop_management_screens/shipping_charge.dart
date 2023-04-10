import 'package:flutter/material.dart';
import 'package:red_business247/widgets/slidable_categories.dart';

class ShippingCharge extends StatefulWidget {
  const ShippingCharge({Key? key}) : super(key: key);

  @override
  State<ShippingCharge> createState() => _ShippingChargeState();
}

class _ShippingChargeState extends State<ShippingCharge> {
  List<String> language = ['English', 'Bengla', 'Spanish'];
  String? select_lan = "Bengla";
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
        title: Text("Shipping Charge"),
        centerTitle: true,
        //centerTitle: true,
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Align(
              alignment: Alignment.topRight,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.45,
                  child: DropdownButtonFormField(
                      decoration: InputDecoration(
                          hintText: 'Select a language',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(6),
                          )),
                      items: language.map((item) {
                        return DropdownMenuItem(value: item, child: Text(item));
                      }).toList(),
                      onChanged: (item) {
                        setState(() {
                          select_lan = item;
                        });
                      }),
                ),
              ),
            ),
            SlidableCategoryItem(
              title: "Shenzhen Aiden TechnologyCo.Ltd",
              subtitle: "Shenzhen Aiden TechnologyCo.Ltd",
              trailing: "\$3.00",
            )
          ],
        ),
      ),
    );
  }
}
