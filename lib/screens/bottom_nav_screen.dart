import 'package:flutter/material.dart';

import 'buttons.dart';
import 'drawer_demo.dart';
import 'filter_screen.dart';
import 'gridView_demo.dart';

class BottomNavScreen extends StatefulWidget {
  const BottomNavScreen({Key? key}) : super(key: key);

  @override
  _BottomNavScreenState createState() => _BottomNavScreenState();
}

class _BottomNavScreenState extends State<BottomNavScreen> {
  int bottomSelected = 0;

  List<Widget> screens = [
    ButtonsDemo(),
    DrawerDemo(),
    FilterScreen(),
    GridViewDemo(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[bottomSelected],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: bottomSelected,
        onTap: (value) {
          setState(() {
            bottomSelected = value;
          });
        },
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.grey,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: "Search"),
          BottomNavigationBarItem(
              icon: Icon(Icons.grid_view), label: "Category"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
        ],
      ),
    );
  }
}
