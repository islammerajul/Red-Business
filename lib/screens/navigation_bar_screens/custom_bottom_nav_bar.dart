import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:red_business247/screens/navigation_bar_screens/account_screen.dart';
import 'package:red_business247/screens/navigation_bar_screens/dashboard_screen.dart';
import 'package:red_business247/screens/navigation_bar_screens/order_screen.dart';
import 'package:red_business247/screens/navigation_bar_screens/product_screen.dart';
import 'package:red_business247/screens/navigation_bar_screens/shortcuts_screen.dart';

class CustomBottomNavBar extends StatefulWidget {
  const CustomBottomNavBar({Key? key}) : super(key: key);

  @override
  State<CustomBottomNavBar> createState() => _CustomBottomNavBarState();
}

class _CustomBottomNavBarState extends State<CustomBottomNavBar> {
  int _selectedIndex = 0;
  final List screens = <Widget>[
    DashboardScreen(),
    ProductScreen(),
    OrderScreen(),
    ShortcutsScreen(),
    AccountScreen()
  ];
  final List _items = <IconData>[
    Icons.home_outlined,
    Icons.shopping_bag_outlined,
    Icons.production_quantity_limits_outlined,
    Icons.bookmark,
    Icons.person,
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: screens[_selectedIndex],
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.shifting,
          iconSize: 40,
          currentIndex: _selectedIndex,
          selectedItemColor: Color(0xffdc2623),
          //selectedLabelStyle: TextStyle(color: Color(0xffdc2623)),
          onTap: (index) {
            setState(() {
              _selectedIndex = index;
            });
          },
          //backgroundColor: Color(0xffdc2623),
          items: [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home_outlined,
                color: _selectedIndex == 0 ? Color(0xffdc2623) : Colors.black87,
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.shopping_bag_outlined,
                color: _selectedIndex == 1 ? Color(0xffdc2623) : Colors.black87,
              ),
              label: 'Products',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.production_quantity_limits_outlined,
                color: _selectedIndex == 2 ? Color(0xffdc2623) : Colors.black87,
              ),
              label: 'Orders',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.bookmark,
                color: _selectedIndex == 3 ? Color(0xffdc2623) : Colors.black87,
              ),
              label: 'Shortcuts',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.person,
                color: _selectedIndex == 4 ? Color(0xffdc2623) : Colors.black87,
              ),
              label: 'Account',
            ),
          ],
        ),
      ),
    );
  }
}

/*BottomNavigationBar(
          type: BottomNavigationBarType.shifting,
          iconSize: 40,
          currentIndex: _selectedIndex,
          selectedItemColor: Color(0xffdc2623),
          //selectedLabelStyle: TextStyle(color: Color(0xffdc2623)),
          onTap: (index) {
            setState(() {
              _selectedIndex = index;
            });
          },
          //backgroundColor: Color(0xffdc2623),
          items: [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home_outlined,
                color: _selectedIndex == 0 ?Color(0xffdc2623) :,
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.shopping_bag_outlined,
                color: Colors.black54,
              ),
              label: 'Products',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.production_quantity_limits_outlined),
              label: 'Orders',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.bookmark),
              label: 'Shortcuts',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Account',
            ),
          ],
        ),
        // bottomNavigationBar: AnimatedBottomNavigationBar(
        //     icons: _items,
        //     activeIndex: _selectedIndex,
        //     onTap: (index) {
        //       setState(() {
        //         _selectedIndex = index;
        //       });
        //     }),


 */
