import 'package:flutter/material.dart';
import 'package:red_business247/widgets/custom_box.dart';

class ShortcutsScreen extends StatefulWidget {
  const ShortcutsScreen({Key? key}) : super(key: key);

  @override
  State<ShortcutsScreen> createState() => _ShortcutsScreenState();
}

class _ShortcutsScreenState extends State<ShortcutsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffdc2623),
        title: Text("Shortcuts"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: GridView.count(
          crossAxisCount: 2,
          crossAxisSpacing: 5,
          // direction: Axis.horizontal,
          // spacing: 5,
          children: [
            CUstomBox(
              titleorIcon: Icons.delivery_dining_outlined,
              subtitle: 'Delivery',
            ),
            CUstomBox(
              titleorIcon: Icons.payment_outlined,
              subtitle: 'Payment',
            ),
            CUstomBox(
              titleorIcon: Icons.person,
              subtitle: 'My Customers',
            ),
            CUstomBox(
              titleorIcon: Icons.picture_in_picture_sharp,
              subtitle: 'Themes',
            ),
            CUstomBox(
              titleorIcon: Icons.domain,
              subtitle: 'Custom domain',
            ),
          ],
        ),
      ),
    );
  }
}
