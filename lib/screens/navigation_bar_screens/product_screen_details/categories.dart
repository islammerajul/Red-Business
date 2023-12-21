import 'package:flutter/material.dart';

class Categories extends StatelessWidget {
  const Categories({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Card(
            elevation: 2,
            child: ListTile(
              leading: Image.asset(
                "assets/images/google_logo.png",
                height: 30,
                fit: BoxFit.cover,
              ),
              title: Text("Test"),
              trailing: Icon(Icons.more_vert_outlined),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
      ),
    );
  }
}
